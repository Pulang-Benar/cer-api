package io.github.xaphira.feign.dto.master;

import io.github.xaphira.feign.dto.common.CommonResponseDto;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(callSuper=false)
@ToString
public class ParameterGroupDatatableResponseDto extends CommonResponseDto<ParameterGroupDto> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8158078360152299884L;

}
