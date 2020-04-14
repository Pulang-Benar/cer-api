package io.github.xaphira.security.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.exceptions.SystemErrorException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.security.AESEncrypt;
import io.github.xaphira.common.utils.ErrorCode;
import io.github.xaphira.feign.service.CheckAccountService;
import io.github.xaphira.security.dao.UserRepo;
import io.github.xaphira.security.entity.UserEntity;

@Service("checkAccountService")
public class CheckAccountImplService implements CheckAccountService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());
	
	@Value("${xa.signature.aes.secret-key}")
	private String secretKey;

	@Autowired
	private UserRepo userRepo;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public ApiBaseResponse doCheckPassword(Map<String, Object> dto, Authentication authentication, String p_locale) throws Exception {
		if (dto != null) {
			UserEntity p_user = this.userRepo.findByUsername(authentication.getName());
			String password = AESEncrypt.decrypt(this.secretKey, dto.get("password").toString());
			if (this.passwordEncoder.matches(password, p_user.getPassword())) {
				return new ApiBaseResponse();
			} else {
				throw new SystemErrorException(ErrorCode.ERR_SCR0002);
			}			
		} else
			throw new SystemErrorException(ErrorCode.ERR_SYS0404);
	}

}
