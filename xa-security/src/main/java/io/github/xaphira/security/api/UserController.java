package io.github.xaphira.security.api;

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
import io.github.xaphira.feign.dto.security.ProfileDto;
import io.github.xaphira.security.service.UserImplService;

@RestController
@RequestMapping("/api/security")
public class UserController extends BaseControllerException {

	@Autowired
	private UserImplService userService;

	@RequestMapping(value = "/vw/post/datatable/user/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<CommonResponseDto<ProfileDto>> getDatatableUser(Authentication authentication,
			@RequestBody(required = true) FilterDto filter) throws Exception {
		return new ResponseEntity<CommonResponseDto<ProfileDto>>(this.userService.getDatatableUser(filter), HttpStatus.OK);
	}
	
}
