package io.github.xaphira.feign.dto.security.social;

import java.util.Map;

public class GithubOAuth2UserInfoDto extends OAuth2UserInfoDto {
	
	public GithubOAuth2UserInfoDto(Map<String, Object> attributes) {
		super(attributes);
	}

	@Override
	public String getId() {
		return ((Integer) attributes.get("id")).toString();
	}

	@Override
	public String getName() {
		return (String) attributes.get("name");
	}

	@Override
	public String getEmail() {
		return (String) attributes.get("email");
	}

	@Override
	public String getImageUrl() {
		return (String) attributes.get("avatar_url");
	}

}
