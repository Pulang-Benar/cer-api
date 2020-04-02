package io.github.xaphira.feign.dto.panic;

import io.github.xaphira.feign.dto.common.BaseAuditDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class LocationDto extends BaseAuditDto {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8090724528887093110L;
	private String latitude;
	private String longitude;
	private String formattedAddress;
	private String area;

}