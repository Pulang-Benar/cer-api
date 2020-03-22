package io.github.xaphira.master.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.feign.dto.master.ParameterI18nDto;
import io.github.xaphira.feign.dto.master.ParameterRequestDto;
import io.github.xaphira.master.dao.ParameterGroupRepo;
import io.github.xaphira.master.dao.ParameterI18nRepo;
import io.github.xaphira.master.dao.ParameterRepo;
import io.github.xaphira.master.entity.ParameterEntity;
import io.github.xaphira.master.entity.ParameterGroupEntity;
import io.github.xaphira.master.entity.ParameterI18nEntity;

@Service("parameterI18nService")
public class ParameterI18nImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ParameterGroupRepo parameterGroupRepo;

	@Autowired
	private ParameterI18nRepo parameterI18nRepo;
	
	@Autowired
	private ParameterRepo parameterRepo;

	public List<ParameterI18nDto> getParameterCode(Map<String, Object> filter) throws Exception {
		List<ParameterI18nEntity> param = parameterI18nRepo.findByParameter_ParameterCode(filter.get("parameterCode").toString());
		List<ParameterI18nDto> response = new ArrayList<ParameterI18nDto>();
		param.forEach(value -> {
			ParameterI18nDto temp = new ParameterI18nDto();
			temp.setParameterCode(value.getParameter().getParameterCode());
			temp.setParameterGroupCode(value.getParameter().getParameterGroup().getParameterGroupCode());
			temp.setParameterGroupName(value.getParameter().getParameterGroup().getParameterGroupName());
			temp.setParameterValue(value.getParameterValue());
			temp.setLocale(value.getLocaleCode());
			temp.setActive(value.isActive());
			temp.setVersion(value.getVersion());
			temp.setCreatedDate(value.getCreatedDate());
			temp.setCreatedBy(value.getCreatedBy());
			temp.setModifiedDate(value.getModifiedDate());
			temp.setModifiedBy(value.getModifiedBy());
			response.add(temp);
		});
		return response;
	}
	
	@Transactional
	public void postParameterI18n(ParameterRequestDto request, String username) throws Exception {
		if (request.getParameterValues() != null && request.getParameterCode() != null && request.getParameterGroupCode() != null) {
			ParameterGroupEntity paramGroup = parameterGroupRepo.findByParameterGroupCode(request.getParameterGroupCode());
			if (paramGroup != null) {
				ParameterEntity param = parameterRepo.findByParameterCode(request.getParameterCode());
				if (param == null) {
					param = new ParameterEntity();
					param.setParameterGroup(paramGroup);
					param.setParameterCode(request.getParameterCode());
					param.setCreatedBy(username);
					param.setCreatedDate(new Date());
					Set<ParameterI18nEntity> parameterI18ns = new HashSet<ParameterI18nEntity>();
					for(String localeCode: request.getParameterValues().keySet()) {
							ParameterI18nEntity paramI18n = new ParameterI18nEntity();
							paramI18n.setLocaleCode(localeCode);
							paramI18n.setParameterValue(request.getParameterValues().get(localeCode));
							paramI18n.setParameter(param);
							paramI18n.setCreatedBy(username);
							paramI18n.setCreatedDate(new Date());
							parameterI18ns.add(paramI18n);
					}
					param.setParameterI18n(parameterI18ns);
					param = parameterRepo.saveAndFlush(param);
				} else {
					for(String localeCode: request.getParameterValues().keySet()) {
						ParameterI18nEntity paramI18n = parameterI18nRepo.findByLocaleCodeAndParameter_ParameterCode(localeCode, request.getParameterCode());
						if (param == null) {
							paramI18n = new ParameterI18nEntity();
							paramI18n.setCreatedBy(username);
							paramI18n.setCreatedDate(new Date());
						} else {
							paramI18n.setModifiedBy(username);
							paramI18n.setModifiedDate(new Date());
						}
						paramI18n.setLocaleCode(localeCode);
						paramI18n.setParameterValue(request.getParameterValues().get(localeCode));
						paramI18n.setParameter(param);
						parameterI18nRepo.saveAndFlush(paramI18n);
					}
				}
			} else {
				throw new SystemErrorException(ErrorCode.ERR_SYS0404);
			}
		} else {
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
		}
	}

}