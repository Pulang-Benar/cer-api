package io.github.xaphira.panic.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

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
@Table(name = "panic_device", schema = SchemaDatabase.PANIC)
public class DeviceEntity extends BaseAuditEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2442773369159964802L;
	
	@Id
    @Column(name = "device_id", nullable = false, unique=true)
	private String deviceID;
	
	@Column(name = "device_name", nullable = false)
	private String deviceName;
	
	@OneToOne(mappedBy = "device", targetEntity = PanicDetailEntity.class, fetch = FetchType.LAZY)
	private PanicDetailEntity panicDetail;
	
	@OneToOne(mappedBy = "device", targetEntity = FakeDetailEntity.class, fetch = FetchType.LAZY)
	private FakeDetailEntity fakeDetail;

}