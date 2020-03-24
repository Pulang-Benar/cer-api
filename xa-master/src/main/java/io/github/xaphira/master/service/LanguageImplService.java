package io.github.xaphira.master.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.LanguageDto;
import io.github.xaphira.feign.dto.select.SelectDto;
import io.github.xaphira.feign.dto.select.SelectResponseDto;
import io.github.xaphira.master.dao.LanguageRepo;
import io.github.xaphira.master.dao.specification.LanguageSpecification;
import io.github.xaphira.master.entity.LanguageEntity;

@Service("languageService")
public class LanguageImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LanguageRepo languageRepo;

	public SelectResponseDto getSelectLocale(FilterDto filter) throws Exception {
		Page<LanguageEntity> locale = languageRepo.findAll(LanguageSpecification.getSelect(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		SelectResponseDto response = new SelectResponseDto();
		response.setTotalFiltered(new Long(locale.getContent().size()));
		response.setTotalRecord(languageRepo.count(LanguageSpecification.getSelect(filter.getKeyword())));
		locale.getContent().forEach(value -> {
			response.getData().add(new SelectDto(value.getIdentifier(), value.getLanguageCode(), !value.isActive(), null));
		});
		return response;
	}

	public CommonResponseDto<LanguageDto> getDatatableLocale(FilterDto filter) throws Exception {
		Page<LanguageEntity> locale = languageRepo.findAll(LanguageSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<LanguageDto> response = new CommonResponseDto<LanguageDto>();
		response.setTotalFiltered(new Long(locale.getContent().size()));
		response.setTotalRecord(languageRepo.count(LanguageSpecification.getDatatable(filter.getKeyword())));
		locale.getContent().forEach(value -> {
			LanguageDto temp = new LanguageDto();
			temp.setLanguageCode(value.getLanguageCode());
			temp.setIdentifier(value.getIdentifier());
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
