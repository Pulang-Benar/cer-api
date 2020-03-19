package io.github.xaphira.master.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.github.xaphira.common.exceptions.BaseControllerException;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.ParameterDatatableResponseDto;
import io.github.xaphira.feign.dto.select.SelectResponseDto;

@RestController
@RequestMapping("/api/master")
public class ParameterController extends BaseControllerException {

	@RequestMapping(value = "/vw/post/select/parameter/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<SelectResponseDto> getSelectCity(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<SelectResponseDto>(new SelectResponseDto(), HttpStatus.OK);
	}

	@RequestMapping(value = "/vw/post/datatable/parameter/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ParameterDatatableResponseDto> getDatatableParameter(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<ParameterDatatableResponseDto>(new ParameterDatatableResponseDto(), HttpStatus.OK);
	}
	
}