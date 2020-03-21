package io.github.xaphira.master.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.ParameterDatatableResponseDto;
import io.github.xaphira.feign.dto.master.ParameterDto;
import io.github.xaphira.master.dao.ParameterRepo;
import io.github.xaphira.master.dao.specification.ParameterSpecification;
import io.github.xaphira.master.entity.ParameterEntity;

@Service("parameterService")
public class ParameterImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ParameterRepo parameterRepo;

	public ParameterDatatableResponseDto getDatatableParameter(FilterDto filter) throws Exception {
		Page<ParameterEntity> param = parameterRepo.findAll(ParameterSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		ParameterDatatableResponseDto response = new ParameterDatatableResponseDto();
		response.setTotalFiltered(new Long(param.getContent().size()));
		response.setTotalRecord(parameterRepo.count(ParameterSpecification.getDatatable(filter.getKeyword())));
		param.getContent().forEach(value -> {
			ParameterDto temp = new ParameterDto();
			temp.setParameterCode(value.getParameterCode());
			temp.setParameterValue(value.getParameterValue());
			temp.setParameterGroupCode(value.getParameterGroup().getParameterGroupCode());
			temp.setParameterGroupName(value.getParameterGroup().getParameterGroupName());
			temp.setI18n(value.getParameterGroup().isI18n());
			temp.setActive(value.isActive());
			temp.setVersion(value.getVersion());
			temp.setCreatedDate(value.getCreatedDate());
			temp.setCreatedBy(value.getCreatedBy());
			temp.setModifiedDate(value.getModifiedDate());
			temp.setModifiedBy(value.getModifiedBy());
			response.getData().add(temp);
		});
		return response;
	}

}
