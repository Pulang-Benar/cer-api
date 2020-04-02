package io.github.xaphira.feign.service;

import org.springframework.security.core.Authentication;

import io.github.xaphira.feign.dto.security.PersonalDto;

public interface ProfilePersonalService {
	
	public PersonalDto getProfilePersonal(Authentication authentication, String p_locale) throws Exception;

}
