package io.github.xaphira.feign.dto.panic;

import io.github.xaphira.feign.dto.common.BaseAuditDto;
import io.github.xaphira.feign.dto.file.FileMetadataDto;
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
public class PanicDetailDto extends BaseAuditDto {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6414375187443950132L;
	private String fileChecksum;
	private FileMetadataDto fileMetadata;
	private LocationDto location;
	private DeviceDto device;

}