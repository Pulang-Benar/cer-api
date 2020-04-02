package io.github.xaphira.panic.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import io.github.xaphira.common.entity.BaseAuditEntity;
import io.github.xaphira.common.utils.SchemaDatabase;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper=false, exclude={"user"})
@ToString(exclude={"user"})
@Entity
@Table(name = "panic_report", schema = SchemaDatabase.SECURITY)
public class PanicReportEntity extends BaseAuditEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2442773369159964802L;
	
	@Id
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	@GeneratedValue(generator = "uuid")
    @Column(name = "panic_uuid", nullable = false, unique=true)
	private String id;

	@Column(name = "username", nullable = false)
	private String username;

	@Column(name = "fullname", nullable = false, length = 75)
	private String name;
	
	@Column(name = "gender", nullable = false)
	private String gender;

	@Column(name = "phone_number", nullable = false)
	private String phoneNumber;

	@Column(name = "id_number", nullable = false)
	private String idNumber;

	@Column(name = "latest_latitude", nullable = true)
	private String latestLatitude;

	@Column(name = "latest_longitude", nullable = true)
	private String latestLongitude;

	@Column(name = "latest_formatted_address", nullable = true)
	private String latestFormattedAddress;

	@Column(name = "latest_area", nullable = true)
	private String latestArea;

	@Column(name = "latest_file_checksum", nullable = true)
	private String latestFileChecksum;

	@Column(name = "urgency_category", nullable = true)
	private String urgencyCategory;

	@Column(name = "status", nullable = true)
	private String status;

}