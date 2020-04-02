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
public class BasePanicReportDto extends BaseAuditDto {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1580501181371364781L;
	private String latestLatitude;
	private String latestLongitude;
	private String latestFormattedAddress;
	private String latestArea;
	private String latestFileChecksum;
	private String latestDeviceID;
	private String latestDeviceName;

}