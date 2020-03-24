package io.github.xaphira.master.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.ParameterGroupDto;
import io.github.xaphira.master.dao.ParameterGroupRepo;
import io.github.xaphira.master.dao.specification.ParameterGroupSpecification;
import io.github.xaphira.master.entity.ParameterGroupEntity;

@Service("parameterGroupService")
public class ParameterGroupImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ParameterGroupRepo parameterGroupRepo;

	public CommonResponseDto<ParameterGroupDto> getDatatableParameterGroup(FilterDto filter) throws Exception {
		Page<ParameterGroupEntity> paramGroup = parameterGroupRepo.findAll(ParameterGroupSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<ParameterGroupDto> response = new CommonResponseDto<ParameterGroupDto>();
		response.setTotalFiltered(new Long(paramGroup.getContent().size()));
		response.setTotalRecord(parameterGroupRepo.count(ParameterGroupSpecification.getDatatable(filter.getKeyword())));
		paramGroup.getContent().forEach(value -> {
			ParameterGroupDto temp = new ParameterGroupDto();
			temp.setParameterGroupCode(value.getParameterGroupCode());
			temp.setParameterGroupName(value.getParameterGroupName());
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
	
	@Transactional
	public void postParameterGroup(ParameterGroupDto request, String username) throws Exception {
		if (request.getParameterGroupName() != null && request.getParameterGroupCode() != null) {
			ParameterGroupEntity paramGroup = parameterGroupRepo.findByParameterGroupCode(request.getParameterGroupCode());
			if (paramGroup == null) {
				paramGroup = new ParameterGroupEntity();
				paramGroup.setParameterGroupCode(request.getParameterGroupCode());
				paramGroup.setCreatedBy(username);
				paramGroup.setCreatedDate(new Date());
			} else {
				paramGroup.setModifiedBy(username);
				paramGroup.setModifiedDate(new Date());				
			}
			paramGroup.setParameterGroupName(request.getParameterGroupName());
			parameterGroupRepo.saveAndFlush(paramGroup);
		} else {
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		}
	}
	
	public void deleteParameterGroup(List<String> parameterGroupCodes) throws Exception {
		List<ParameterGroupEntity> parameterGroups = parameterGroupRepo.findByParameterGroupCodeIn(parameterGroupCodes);
		try {
			parameterGroupRepo.deleteInBatch(parameterGroups);			
		} catch (DataIntegrityViolationException e) {
			throw new SystemErrorException(ErrorCode.ERR_SCR0009);
		} catch (ConstraintViolationException e) {
			throw new SystemErrorException(ErrorCode.ERR_SCR0009);
		}
	}

}
