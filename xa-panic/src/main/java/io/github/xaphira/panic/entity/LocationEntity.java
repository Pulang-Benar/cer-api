package io.github.xaphira.panic.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
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
@EqualsAndHashCode(callSuper=false, exclude={"panicDetail", "fakeDetail"})
@ToString(exclude={"panicDetail", "fakeDetail"})
@Entity
@Table(name = "panic_location", schema = SchemaDatabase.PANIC)
public class LocationEntity extends BaseAuditEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2442773369159964802L;
	
	@Id
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	@GeneratedValue(generator = "uuid")
    @Column(name = "location_uuid", nullable = false, unique=true)
	private String id;

	@Column(name = "latitude", nullable = false)
	private String latitude;
	
	@Column(name = "longitude", nullable = false)
	private String longitude;

	@Column(name = "formatted_address", nullable = true)
	private String formattedAddress;

	@Column(name = "area", nullable = true)
	private String area;
	
	@OneToOne(mappedBy = "location", targetEntity = PanicDetailEntity.class, fetch = FetchType.LAZY)
	private PanicDetailEntity panicDetail;
	
	@OneToOne(mappedBy = "location", targetEntity = FakeDetailEntity.class, fetch = FetchType.LAZY)
	private FakeDetailEntity fakeDetail;

}