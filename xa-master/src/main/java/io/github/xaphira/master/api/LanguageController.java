package io.github.xaphira.master.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.github.xaphira.common.exceptions.BaseControllerException;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.LanguageDto;
import io.github.xaphira.feign.dto.select.SelectResponseDto;
import io.github.xaphira.master.service.LanguageImplService;

@RestController
@RequestMapping("/api/master")
public class LanguageController extends BaseControllerException {

	@Autowired
	private LanguageImplService languageService;

	@RequestMapping(value = "/vw/post/select/language/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<SelectResponseDto> getSelectLocale(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<SelectResponseDto>(languageService.getSelectLocale(filter), HttpStatus.OK);
	}

	@RequestMapping(value = "/vw/post/datatable/language/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<CommonResponseDto<LanguageDto>> getDatatableLocale(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<CommonResponseDto<LanguageDto>>(this.languageService.getDatatableLocale(filter), HttpStatus.OK);
	}
	
}
