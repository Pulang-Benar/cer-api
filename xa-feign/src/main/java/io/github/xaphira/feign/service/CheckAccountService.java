package io.github.xaphira.feign.service;

import java.util.Map;

import org.springframework.security.core.Authentication;

import io.github.xaphira.common.http.ApiBaseResponse;

public interface CheckAccountService {
	
	public ApiBaseResponse doCheckPassword(Map<String, Object> dto, Authentication authentication, String p_locale) throws Exception;

}
