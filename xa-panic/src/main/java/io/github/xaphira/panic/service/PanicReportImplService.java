package io.github.xaphira.panic.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.common.utils.DateUtil;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.common.utils.ParameterStatic;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.file.FileMetadataDto;
import io.github.xaphira.feign.dto.notification.FCMNotificationDto;
import io.github.xaphira.feign.dto.notification.PushNotificationDto;
import io.github.xaphira.feign.dto.panic.BasePanicReportDto;
import io.github.xaphira.feign.dto.panic.PanicReportDto;
import io.github.xaphira.feign.dto.security.PersonalDto;
import io.github.xaphira.feign.service.FileGenericService;
import io.github.xaphira.feign.service.ParameterI18nService;
import io.github.xaphira.feign.service.ProfilePersonalService;
import io.github.xaphira.feign.service.WebPushNotificationService;
import io.github.xaphira.panic.dao.DeviceRepo;
import io.github.xaphira.panic.dao.LocationRepo;
import io.github.xaphira.panic.dao.PanicDetailRepo;
import io.github.xaphira.panic.dao.PanicReportRepo;
import io.github.xaphira.panic.dao.specification.PanicReportSpecification;
import io.github.xaphira.panic.entity.DeviceEntity;
import io.github.xaphira.panic.entity.LocationEntity;
import io.github.xaphira.panic.entity.PanicDetailEntity;
import io.github.xaphira.panic.entity.PanicReportEntity;
import io.github.xaphira.panic.entity.Point;

@Service("panicReportService")
public class PanicReportImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PanicReportRepo panicReportRepo;

	@Autowired
	private PanicDetailRepo panicDetailRepo;

	@Autowired
	private LocationRepo locationRepo;

	@Autowired
	private DeviceRepo deviceRepo;

	@Autowired
	private ProfilePersonalService profilePersonalService;

	@Autowired
	@Qualifier("fileEvidenceService")
	private FileGenericService fileEvidenceService;
	
    @Autowired
    private WebPushNotificationService webPushNotificationService;
	
	@Autowired
	private ParameterI18nService parameterI18nService;
	
    @Value("${xa.notif.user}")
    protected String userNotify;
	
    @Value("${xa.notif.icon}")
    protected String iconNotify;
	
    @Value("${xa.notif.tag}")
    protected String tagNotify;

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public ApiBaseResponse doPostPanicReport(BasePanicReportDto dto, MultipartFile evidence, Authentication authentication, String p_locale) throws Exception {
		if (evidence != null && dto != null) {
			FileMetadataDto fileEvidence = new FileMetadataDto(); 
			try {
				fileEvidence = fileEvidenceService.putFile(authentication.getName(), evidence.getOriginalFilename(), evidence.getBytes());
			} catch (Exception e) {
				throw new SystemErrorException(ErrorCode.ERR_SCR0010);				
			}
			Point coordinate = new Point(dto.getLatestLatitude(), dto.getLatestLongitude());
			LocationEntity location = locationRepo.findByCoordinate(coordinate);
			if(location == null) {
				location = new LocationEntity();
				location.setCoordinate(coordinate);
				location.setFormattedAddress(dto.getLatestFormattedAddress());
				location.setProvince(dto.getLatestProvince());
				location.setCity(dto.getLatestCity());
				location.setDistrict(dto.getLatestDistrict());
				location = locationRepo.saveAndFlush(location);
			}
			DeviceEntity device = new DeviceEntity();
			device.setDeviceID(dto.getLatestDeviceID());
			device.setDeviceName(dto.getLatestDeviceName());
			device = deviceRepo.saveAndFlush(device);
			PanicReportEntity panic = panicReportRepo.findById(authentication.getName() + DateUtil.DATE.format(new Date())).orElse(null);
			if(panic == null) {
				PersonalDto personal = profilePersonalService.getProfilePersonal(authentication, p_locale);
				panic =  new PanicReportEntity();
				panic.setPanicCode(personal.getUsername() + DateUtil.DATE.format(new Date()));
				panic.setUsername(personal.getUsername());
				panic.setName(personal.getName());
				panic.setGender(personal.getGenderCode());
				panic.setAge(personal.getAge());
				panic.setPhoneNumber(personal.getPhoneNumber());
				panic.setIdNumber(personal.getIdNumber());
				panic.setMonth(ParameterStatic.MONTH_PARAMETER + DateUtil.getMonthNumber(p_locale, new Date()));
				panic.setYear(DateUtil.getYear(p_locale, new Date()));
			}
			panic.setLatestCoordinate(coordinate);
			panic.setLatestFormattedAddress(dto.getLatestFormattedAddress());
			panic.setLatestProvince(dto.getLatestProvince());
			panic.setLatestCity(dto.getLatestCity());
			panic.setLatestDistrict(dto.getLatestDistrict());
			panic.setLatestFileChecksum(fileEvidence.getChecksum());
			panic.setLatestDeviceID(dto.getLatestDeviceID());
			panic.setLatestDeviceName(dto.getLatestDeviceName());
			panic = panicReportRepo.saveAndFlush(panic);
			PanicDetailEntity panicDetail = new PanicDetailEntity();
			panicDetail.setFileChecksum(fileEvidence.getChecksum());
			panicDetail.setPanicReport(panic);
			panicDetail.setLocation(location);
			panicDetail.setDevice(device);
			panicDetailRepo.saveAndFlush(panicDetail);
			PushNotificationDto message = new PushNotificationDto();
			message.setTitle(authentication.getName());
			message.setBody(panic.getLatestFormattedAddress());
			message.setData(toObject(panic, p_locale));
			message.setTag(tagNotify);
			message.setIcon(iconNotify);
			message.setFrom(authentication.getName());
			message.setTo(userNotify);
			webPushNotificationService.notify(message, authentication.getName());
			return null;
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}
	
	public PanicReportDto getPanicReport(String code, Authentication authentication, String p_locale) throws Exception {
		if(code != null) {
			PanicReportEntity panic = panicReportRepo.loadPanicReportByCodeUsername(code, authentication.getName());
			return toObject(panic, p_locale);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}
	
	public List<PanicReportDto> getAllPanicReport(Authentication authentication, String p_locale) throws Exception {
		List<PanicReportEntity> panics = panicReportRepo.findByActiveAndStatusNull(true);
		if(panics == null)
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		List<PanicReportDto> response = new ArrayList<PanicReportDto>();
		panics.forEach(panic -> {
			try {
				response.add(toObject(panic, p_locale));
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
		return response;
	}

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public ApiBaseResponse doProcessPanicReport(Map<String, Object> dto, Authentication authentication, String p_locale) throws Exception {
		if (dto != null) {
			PanicReportEntity panic = panicReportRepo.findById(dto.get("panicCode").toString()).orElse(null);
			if(panic != null) {
				panic.setEmergencyCategory(dto.get("emergencyCategory").toString());
				panic.setStatus(dto.get("status").toString());
				panic = panicReportRepo.saveAndFlush(panic);
				Map<String, Object> temp = new HashMap<String, Object>();
				temp.put("parameterCode", dto.get("emergencyCategory").toString());
				RestTemplate rest = new RestTemplate();
				FCMNotificationDto fcmData = new FCMNotificationDto();
				fcmData.setTo("/topics/allTopics");
				fcmData.setContentAvailable("true");
				fcmData.getNotification().put("title", "Civillians Emergency Report");
				fcmData.getNotification().put("body", parameterI18nService.getParameter(temp, "id-ID").getParameterValue());
				fcmData.getData().put("latitude", "-6.359607");
				fcmData.getData().put("longitude", "106.705098");
				HttpHeaders headers = new HttpHeaders();
				headers.setContentType(MediaType.APPLICATION_JSON);
				headers.set("Authorization", "key=AAAAk4TEFVM:APA91bErfrTcoSiKt-oc7rS8dCqoN4Kl953dG7TTUJ3IEgJvcLdM1YMjB1n22cRg5XusbvbXTCVgvAxntljZbRhyugs8TkkO4Qcz6QgON_3TS6lJD32DYHaK8P_kL0iFWHvgerXWPmKf");
				HttpEntity<FCMNotificationDto> requestEntity= new HttpEntity<>(fcmData, headers);
				rest.exchange("https://fcm.googleapis.com/fcm/send", HttpMethod.POST, requestEntity, Object.class);
				return null;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

	public CommonResponseDto<PanicReportDto> getDatatablePanicReport(FilterDto filter, String locale) throws Exception {
		Page<PanicReportEntity> param = panicReportRepo.findAll(PanicReportSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<PanicReportDto> response = new CommonResponseDto<PanicReportDto>();
		response.setTotalFiltered(new Long(param.getContent().size()));
		response.setTotalRecord(panicReportRepo.count(PanicReportSpecification.getDatatable(filter.getKeyword())));
		param.getContent().forEach(value -> {
			try {
				response.getData().add(toObject(value, locale));
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
		return response;
	}
	
	private PanicReportDto toObject(PanicReportEntity panic, String p_locale) throws Exception {
		PanicReportDto response = new PanicReportDto();
		response.setPanicCode(panic.getPanicCode());
		response.setUsername(panic.getUsername());
		response.setName(panic.getName());
		Map<String, Object> temp = new HashMap<String, Object>();
		temp.put("parameterCode", panic.getGender());
		response.setGender(parameterI18nService.getParameter(temp, p_locale).getParameterValue());
		response.setAge(panic.getAge());
		response.setPhoneNumber(panic.getPhoneNumber());
		response.setIdNumber(panic.getIdNumber());
		response.setMonth(DateUtil.getMonthName(p_locale, panic.getMonth()));
		response.setYear(panic.getYear());
		response.setLatestLatitude(panic.getLatestCoordinate().getX());
		response.setLatestLongitude(panic.getLatestCoordinate().getY());
		response.setLatestFormattedAddress(panic.getLatestFormattedAddress());
		response.setLatestProvince(panic.getLatestProvince());
		response.setLatestCity(panic.getLatestCity());
		response.setLatestDistrict(panic.getLatestDistrict());
		response.setLatestFileChecksum(panic.getLatestFileChecksum());
		response.setLatestDeviceID(panic.getLatestDeviceID());
		response.setLatestDeviceName(panic.getLatestDeviceName());
		if(panic.getEmergencyCategory() != null) {
			temp.put("parameterCode", panic.getEmergencyCategory());
			try {
				response.setEmergencyCategory(parameterI18nService.getParameter(temp, p_locale).getParameterValue());	
			} catch (Exception e) {}
		}
		if(panic.getStatus() != null) {
			temp.put("parameterCode", panic.getStatus());
			response.setStatus(parameterI18nService.getParameter(temp, p_locale).getParameterValue());
		}
		response.setActive(panic.isActive());
		response.setVersion(panic.getVersion());
		response.setCreatedDate(panic.getCreatedDate());
		response.setCreatedBy(panic.getCreatedBy());
		response.setModifiedDate(panic.getModifiedDate());
		response.setModifiedBy(panic.getModifiedBy());
		response.setFileMetadata(fileEvidenceService.getFileInfo(panic.getLatestFileChecksum()));
		return response;
	}

}
