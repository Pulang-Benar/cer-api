package io.github.xaphira.master.api;

import java.util.List;

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
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.ParameterGroupDto;
import io.github.xaphira.master.service.ParameterGroupImplService;

@RestController
@RequestMapping("/api/master")
public class ParameterGroupController extends BaseControllerException {

	@Autowired
	private ParameterGroupImplService parameterGroupService;

	@RequestMapping(value = "/vw/post/datatable/parameter-group/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<CommonResponseDto<ParameterGroupDto>> getDatatableParameter(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<CommonResponseDto<ParameterGroupDto>>(this.parameterGroupService.getDatatableParameterGroup(filter), HttpStatus.OK);
	}
	
	@ResponseSuccess(SuccessCode.OK_SCR009)
	@RequestMapping(value = "/trx/post/parameter-group/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ApiBaseResponse> postParameterGroup(Authentication authentication,
			@RequestBody(required = true) ParameterGroupDto data) throws Exception {
		String username = authentication.getName();
		this.parameterGroupService.postParameterGroup(data, username);
		return new ResponseEntity<ApiBaseResponse>(new ApiBaseResponse(), HttpStatus.OK);
	}
	
	@ResponseSuccess(SuccessCode.OK_SCR009)
	@RequestMapping(value = "/trx/delete/parameter-group/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ApiBaseResponse> deleteParameterGroup(Authentication authentication,
			@RequestBody(required = true) List<String> datas) throws Exception {
		this.parameterGroupService.deleteParameterGroup(datas);
		return new ResponseEntity<ApiBaseResponse>(new ApiBaseResponse(), HttpStatus.OK);
	}
	
}
