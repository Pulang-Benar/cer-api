package io.github.xaphira.master.api;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.github.xaphira.common.aspect.ResponseSuccess;
import io.github.xaphira.common.exceptions.BaseControllerException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.utils.SuccessCode;
import io.github.xaphira.feign.dto.master.ParameterI18nDto;
import io.github.xaphira.feign.dto.master.ParameterRequestDto;
import io.github.xaphira.master.service.ParameterI18nImplService;

@RestController
@RequestMapping("/api/master")
public class ParameterI18nController extends BaseControllerException {

	@Autowired
	private ParameterI18nImplService parameterI18nService;

	@RequestMapping(value = "/vw/post/parameter-i18n/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<ParameterI18nDto>> getParameterCode(Authentication authentication,
			@RequestBody(required = true) Map<String, Object> filter) throws Exception {
		return new ResponseEntity<List<ParameterI18nDto>>(this.parameterI18nService.getParameterCode(filter), HttpStatus.OK);
	}
	
	@ResponseSuccess(SuccessCode.OK_SCR009)
	@RequestMapping(value = "/trx/post/parameter-i18n/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ApiBaseResponse> postParameterCode(Authentication authentication,
			@RequestBody(required = true) ParameterRequestDto data) throws Exception {
		String username = authentication.getName();
		this.parameterI18nService.postParameterI18n(data, username);
		return new ResponseEntity<ApiBaseResponse>(new ApiBaseResponse(), HttpStatus.OK);
	}
	
}
