package io.github.xaphira.panic.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.utils.DateUtil;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.feign.dto.file.FileMetadataDto;
import io.github.xaphira.feign.dto.notification.PushNotificationDto;
import io.github.xaphira.feign.dto.panic.BasePanicReportDto;
import io.github.xaphira.feign.dto.panic.DeviceDto;
import io.github.xaphira.feign.dto.panic.LocationDto;
import io.github.xaphira.feign.dto.panic.PanicDetailDto;
import io.github.xaphira.feign.dto.panic.PanicReportDto;
import io.github.xaphira.feign.dto.security.PersonalDto;
import io.github.xaphira.feign.service.FileGenericService;
import io.github.xaphira.feign.service.ParameterI18nService;
import io.github.xaphira.feign.service.ProfilePersonalService;
import io.github.xaphira.feign.service.WebPushNotificationService;
import io.github.xaphira.panic.dao.DeviceRepo;
import io.github.xaphira.panic.dao.LocationRepo;
import io.github.xaphira.panic.dao.PanicReportRepo;
import io.github.xaphira.panic.entity.DeviceEntity;
import io.github.xaphira.panic.entity.LocationEntity;
import io.github.xaphira.panic.entity.PanicDetailEntity;
import io.github.xaphira.panic.entity.PanicReportEntity;
import io.github.xaphira.panic.entity.Point;

@Service("panicReportService")
public class PanicReportImplService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PanicReportRepo panicReportRepo;

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
			System.err.println(p_locale);
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
				location.setArea(dto.getLatestArea());
				location = locationRepo.saveAndFlush(location);
			}
			DeviceEntity device = new DeviceEntity();
			device.setDeviceID(dto.getLatestDeviceID());
			device.setDeviceName(dto.getLatestDeviceName());
			device = deviceRepo.saveAndFlush(device);
			PersonalDto personal = profilePersonalService.getProfilePersonal(authentication, p_locale);
			PanicReportEntity panic = new PanicReportEntity();
			panic.setPanicCode(personal.getUsername() + DateUtil.DATE.format(new Date()));
			panic.setUsername(personal.getUsername());
			panic.setName(personal.getName());
			panic.setGender(personal.getGenderCode());
			panic.setAge(personal.getAge());
			panic.setPhoneNumber(personal.getPhoneNumber());
			panic.setIdNumber(personal.getIdNumber());
			panic.setLatestCoordinate(coordinate);
			panic.setLatestFormattedAddress(dto.getLatestFormattedAddress());
			panic.setLatestArea(dto.getLatestArea());		
			panic.setLatestFileChecksum(fileEvidence.getChecksum());
			panic.setLatestDeviceID(dto.getLatestDeviceID());
			panic.setLatestDeviceName(dto.getLatestDeviceName());
			Set<PanicDetailEntity> panicDetails = new HashSet<PanicDetailEntity>();
			PanicDetailEntity panicDetail = new PanicDetailEntity();
			panicDetail.setFileChecksum(fileEvidence.getChecksum());
			panicDetail.setLocation(location);
			panicDetail.setDevice(device);
			panicDetails.add(panicDetail);
			panic.setPanicDetails(panicDetails);
			panic = panicReportRepo.saveAndFlush(panic);
			PushNotificationDto message = new PushNotificationDto();
			message.setTitle(personal.getName());
			message.setBody(panic.getLatestFormattedAddress());
			message.setData(toObject(panic, p_locale));
			message.setTag(tagNotify);
			message.setIcon(iconNotify);
			message.setFrom(personal.getUsername());
			message.setTo(userNotify);
			webPushNotificationService.notify(message, personal.getUsername());
			return null;
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}
	
	public PanicReportDto getPanicReport(String code, Authentication authentication, String p_locale) throws Exception {
		if(code != null) {
			PanicReportEntity panic = panicReportRepo.loadPersonalDataByUsername(code, authentication.getName());
			return toObject(panic, p_locale);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}
	
	public List<PanicReportDto> getAllPanicReport(Authentication authentication, String p_locale) throws Exception {
		List<PanicReportEntity> panics = panicReportRepo.findAll();
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
	
	private PanicReportDto toObject(PanicReportEntity panic, String p_locale) throws Exception {
		PanicReportDto response = new PanicReportDto();
		response.setPanicCode(panic.getPanicCode());
		response.setUsername(panic.getUsername());
		response.setName(panic.getName());
		Map<String, Object> temp = new HashMap<String, Object>();
		temp.put("parameterCode", panic.getGender());
		response.setGender(parameterI18nService.getParameter(temp, p_locale).getParameterValue());
		response.setGender(panic.getGender());
		response.setAge(panic.getAge());
		response.setPhoneNumber(panic.getPhoneNumber());
		response.setIdNumber(panic.getIdNumber());
		response.setLatestLatitude(panic.getLatestCoordinate().getX());
		response.setLatestLongitude(panic.getLatestCoordinate().getY());
		response.setLatestFormattedAddress(panic.getLatestFormattedAddress());
		response.setLatestArea(panic.getLatestArea());
		response.setLatestFileChecksum(panic.getLatestFileChecksum());
		response.setLatestDeviceID(panic.getLatestDeviceID());
		response.setLatestDeviceName(panic.getLatestDeviceName());
		response.setUrgencyCategory(panic.getUrgencyCategory());
		response.setStatus(panic.getStatus());
		if(panic.getPanicDetails() != null) {
			List<PanicDetailDto> panicDetails = new ArrayList<PanicDetailDto>();
			panic.getPanicDetails().forEach(panicDetail -> {
				PanicDetailDto responsePanicDetail = new PanicDetailDto();
				responsePanicDetail.setFileChecksum(panicDetail.getFileChecksum());
				if(panicDetail.getLocation() != null) {
					LocationDto responseLocation = new LocationDto();
					responseLocation.setLatitude(panicDetail.getLocation().getCoordinate().getX());
					responseLocation.setLongitude(panicDetail.getLocation().getCoordinate().getY());
					responseLocation.setFormattedAddress(panicDetail.getLocation().getFormattedAddress());
					responseLocation.setArea(panicDetail.getLocation().getArea());
					responsePanicDetail.setLocation(responseLocation);
					DeviceDto responseDevice = new DeviceDto();
					responseDevice.setDeviceID(panicDetail.getDevice().getDeviceID());
					responseDevice.setDeviceName(panicDetail.getDevice().getDeviceName());
					responsePanicDetail.setDevice(responseDevice);
				}
				panicDetails.add(responsePanicDetail);
			});
			response.setPanicDetails(panicDetails);
		}
		return response;
	}

}
