package io.github.xaphira.master.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.LocaleDto;
import io.github.xaphira.feign.dto.select.SelectDto;
import io.github.xaphira.feign.dto.select.SelectResponseDto;
import io.github.xaphira.master.dao.LocaleRepo;
import io.github.xaphira.master.dao.specification.LocaleSpecification;
import io.github.xaphira.master.entity.LocaleEntity;

@Service("localeService")
public class LocaleImplService extends CommonService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private LocaleRepo localeRepo;

	public SelectResponseDto getSelectLocale(FilterDto filter) throws Exception {
		Page<LocaleEntity> locale = localeRepo.findAll(LocaleSpecification.getSelect(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		SelectResponseDto response = new SelectResponseDto();
		response.setTotalFiltered(new Long(locale.getContent().size()));
		response.setTotalRecord(localeRepo.count(LocaleSpecification.getSelect(filter.getKeyword())));
		locale.getContent().forEach(value -> {
			response.getData().add(new SelectDto(value.getIdentifier(), value.getLocaleCode(), !value.isActive(), value.getIcon()));
		});
		return response;
	}

	public SelectResponseDto getSelectAllLocale() throws Exception {
		List<LocaleEntity> locale = localeRepo.findAll();
		SelectResponseDto response = new SelectResponseDto();
		response.setTotalFiltered(new Long(locale.size()));
		response.setTotalRecord(new Long(locale.size()));
		locale.forEach(value -> {
			response.getData().add(new SelectDto(value.getIdentifier(), value.getLocaleCode(), !value.isActive(), value.getIcon()));
		});
		return response;
	}

	public List<LocaleDto> getAllLocale() throws Exception {
		List<LocaleEntity> locale = localeRepo.findAll();
		List<LocaleDto> response = new ArrayList<LocaleDto>();
		locale.forEach(value -> {
			LocaleDto temp = new LocaleDto();
			temp.setLocaleCode(value.getLocaleCode());
			temp.setIdentifier(value.getIdentifier());
			temp.setIcon(value.getIcon());
			temp.setLocaleDefault(value.isLocaleDefault());
			temp.setLocaleEnabled(value.isLocaleEnabled());
			temp.setActive(value.isActive());
			temp.setVersion(value.getVersion());
			temp.setCreatedBy(value.getCreatedBy());
			temp.setCreatedDate(value.getCreatedDate());
			temp.setModifiedBy(value.getModifiedBy());
			temp.setModifiedDate(value.getModifiedDate());
			response.add(temp);
		});
		return response;
	}

	public CommonResponseDto<LocaleDto> getDatatableLocale(FilterDto filter) throws Exception {
		Page<LocaleEntity> locale = localeRepo.findAll(LocaleSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<LocaleDto> response = new CommonResponseDto<LocaleDto>();
		response.setTotalFiltered(new Long(locale.getContent().size()));
		response.setTotalRecord(localeRepo.count(LocaleSpecification.getDatatable(filter.getKeyword())));
		locale.getContent().forEach(value -> {
			LocaleDto temp = new LocaleDto();
			temp.setLocaleCode(value.getLocaleCode());
			temp.setIdentifier(value.getIdentifier());
			temp.setIcon(value.getIcon());
			temp.setLocaleDefault(value.isLocaleDefault());
			temp.setLocaleEnabled(value.isLocaleEnabled());
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
