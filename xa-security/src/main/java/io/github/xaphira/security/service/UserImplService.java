package io.github.xaphira.security.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import io.github.xaphira.common.service.CommonService;
import io.github.xaphira.feign.dto.common.CommonResponseDto;
import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.security.ProfileDto;
import io.github.xaphira.security.dao.UserRepo;
import io.github.xaphira.security.dao.specification.UserSpecification;
import io.github.xaphira.security.entity.UserEntity;

@Service("userService")
public class UserImplService extends CommonService implements UserDetailsService {

	protected Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserRepo userRepo;
	
	@Override
	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
		UserEntity user = userRepo.loadByUsername(username.toLowerCase());
		if (user == null) throw new UsernameNotFoundException("User '" + username + "' not found.");
		return user;
	}

	public CommonResponseDto<ProfileDto> getDatatableUser(FilterDto filter) throws Exception {
		Page<UserEntity> user = userRepo.findAll(UserSpecification.getDatatable(filter.getKeyword()), page(filter.getOrder(), filter.getOffset(), filter.getLimit()));
		CommonResponseDto<ProfileDto> response = new CommonResponseDto<ProfileDto>();
		response.setTotalFiltered(new Long(user.getContent().size()));
		response.setTotalRecord(userRepo.count(UserSpecification.getDatatable(filter.getKeyword())));
		user.getContent().forEach(value -> {
			ProfileDto temp = new ProfileDto();
			temp.setUsername(value.getUsername());
			temp.setEmail(value.getEmail());
			temp.setActive(value.isActive());
			temp.setVersion(value.getVersion());
			temp.setCreatedDate(value.getCreatedDate());
			temp.setCreatedBy(value.getCreatedBy());
			temp.setModifiedDate(value.getModifiedDate());
			temp.setModifiedBy(value.getModifiedBy());	
			if(value.getContactUser() != null) {
				temp.setName(value.getContactUser().getName());
				temp.setPhoneNumber(value.getContactUser().getPhoneNumber());
				temp.setAddress(value.getContactUser().getAddress());
				temp.setCountry(value.getContactUser().getCountry());
				temp.setProvince(value.getContactUser().getProvince());
				temp.setCity(value.getContactUser().getCity());
				temp.setDistrict(value.getContactUser().getDistrict());
				temp.setSubDistrict(value.getContactUser().getSubDistrict());
				temp.setZipcode(value.getContactUser().getZipcode());
				temp.setImage(value.getContactUser().getImage());
				temp.setDescription(value.getContactUser().getDescription());
			}
			response.getData().add(temp);
		});
		return response;
	}

}
