package io.github.xaphira.feign.service;

import java.util.List;
import java.util.Map;

import io.github.xaphira.feign.dto.master.ParameterI18nDto;
import io.github.xaphira.feign.dto.master.ParameterRequestDto;

public interface ParameterI18nService {
	
	public List<ParameterI18nDto> getParameterCode(Map<String, Object> filter) throws Exception;
	
	public void postParameterI18n(ParameterRequestDto request, String username) throws Exception;
	
	public ParameterI18nDto getParameter(Map<String, Object> param, String locale) throws Exception;

}
