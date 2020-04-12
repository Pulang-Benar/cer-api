package io.github.xaphira.panic.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.panic.DeviceDto;
import io.github.xaphira.feign.dto.panic.LocationDto;
import io.github.xaphira.feign.dto.panic.PanicDetailDto;
import io.github.xaphira.panic.dao.PanicDetailRepo;
import io.github.xaphira.panic.dao.specification.PanicDetailSpecification;
import io.github.xaphira.panic.entity.PanicDetailEntity;

@Service("panicDetailService")
public class PanicDetailImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private PanicDetailRepo panicDetailRepo;

	public CommonResponseDto<PanicDetailDto> getDatatablePanicDetail(FilterDto filter) throws Exception {
		Page<PanicDetailEntity> param = panicDetailRepo.findAll(PanicDetailSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<PanicDetailDto> response = new CommonResponseDto<PanicDetailDto>();
		response.setTotalFiltered(new Long(param.getContent().size()));
		response.setTotalRecord(panicDetailRepo.count(PanicDetailSpecification.getDatatable(filter.getKeyword())));
		param.getContent().forEach(value -> {
			response.getData().add(toObjectDetail(value));
		});
		return response;
	}
	
	private PanicDetailDto toObjectDetail(PanicDetailEntity panicDetail) {
		PanicDetailDto objPanicDetail = new PanicDetailDto();
		objPanicDetail.setFileChecksum(panicDetail.getFileChecksum());
		if(panicDetail.getLocation() != null) {
			LocationDto responseLocation = new LocationDto();
			responseLocation.setLatitude(panicDetail.getLocation().getCoordinate().getX());
			responseLocation.setLongitude(panicDetail.getLocation().getCoordinate().getY());
			responseLocation.setFormattedAddress(panicDetail.getLocation().getFormattedAddress());
			responseLocation.setArea(panicDetail.getLocation().getArea());
			objPanicDetail.setLocation(responseLocation);
		}
		if(panicDetail.getDevice() != null) {
			DeviceDto responseDevice = new DeviceDto();
			responseDevice.setDeviceID(panicDetail.getDevice().getDeviceID());
			responseDevice.setDeviceName(panicDetail.getDevice().getDeviceName());
			objPanicDetail.setDevice(responseDevice);
		}
		objPanicDetail.setActive(panicDetail.isActive());
		objPanicDetail.setVersion(panicDetail.getVersion());
		objPanicDetail.setCreatedDate(panicDetail.getCreatedDate());
		objPanicDetail.setCreatedBy(panicDetail.getCreatedBy());
		objPanicDetail.setModifiedDate(panicDetail.getModifiedDate());
		objPanicDetail.setModifiedBy(panicDetail.getModifiedBy());
		return objPanicDetail;
	}

}
