package io.github.xaphira.panic.service;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.feign.service.CheckAccountService;
import io.github.xaphira.panic.dao.FakeDetailRepo;
import io.github.xaphira.panic.dao.FakeReportRepo;
import io.github.xaphira.panic.dao.PanicReportRepo;
import io.github.xaphira.panic.entity.FakeDetailEntity;
import io.github.xaphira.panic.entity.FakeReportEntity;
import io.github.xaphira.panic.entity.PanicReportEntity;

@Service("fakeReportService")
public class FakeReportImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PanicReportRepo panicReportRepo;

	@Autowired
	private FakeReportRepo fakeReportRepo;

	@Autowired
	private FakeDetailRepo fakeDetailRepo;
	
	@Autowired
	private CheckAccountService checkAccountService;

	@Transactional(isolation = Isolation.READ_UNCOMMITTED, rollbackFor = SystemErrorException.class)
	public ApiBaseResponse doFakeReport(Map<String, Object> dto, Authentication authentication, String p_locale) throws Exception {
		this.checkAccountService.doCheckPassword(dto, authentication, p_locale);
		if (dto != null) {
			PanicReportEntity panic = panicReportRepo.findById(dto.get("panicCode").toString()).orElse(null);
			if(panic != null) {
				panic.setActive(false);
				panic = panicReportRepo.saveAndFlush(panic);
				final FakeReportEntity fake = new FakeReportEntity();
				fake.setFakeCode(panic.getPanicCode());
				fake.setUsername(panic.getUsername());
				fake.setName(panic.getName());
				fake.setGender(panic.getGender());
				fake.setAge(panic.getAge());
				fake.setPhoneNumber(panic.getPhoneNumber());
				fake.setIdNumber(panic.getIdNumber());
				fake.setMonth(panic.getMonth());
				fake.setYear(panic.getYear());
				fake.setLatestCoordinate(panic.getLatestCoordinate());
				fake.setLatestFormattedAddress(panic.getLatestFormattedAddress());
				fake.setLatestProvince(panic.getLatestProvince());
				fake.setLatestCity(panic.getLatestCity());
				fake.setLatestDistrict(panic.getLatestDistrict());		
				fake.setLatestFileChecksum(panic.getLatestFileChecksum());
				fake.setLatestDeviceID(panic.getLatestDeviceID());
				fake.setLatestDeviceName(panic.getLatestDeviceName());
				fakeReportRepo.saveAndFlush(fake);
				Set<FakeDetailEntity> fakeDetails = new HashSet<FakeDetailEntity>();
				panic.getPanicDetails().forEach(panicDetail -> {
					FakeDetailEntity fakeDetail = new FakeDetailEntity();
					fakeDetail.setFileChecksum(panicDetail.getFileChecksum());
					fakeDetail.setLocation(panicDetail.getLocation());
					fakeDetail.setDevice(panicDetail.getDevice());
					fakeDetail.setFakeReport(fake);
					fakeDetails.add(fakeDetail);
				});
				fakeDetailRepo.saveAll(fakeDetails);
				return null;
			} else
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

}
