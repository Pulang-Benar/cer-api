package io.github.xaphira.master.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
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
@EqualsAndHashCode(callSuper=false)
@ToString()
@Entity
@Table(name = "mst_parameter", schema = SchemaDatabase.MASTER)
public class ParameterEntity extends BaseAuditEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2965292952914303956L;

	@Id
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	@GeneratedValue(generator = "uuid")
	@Column(name = "parameter_uuid", nullable = false, unique = true)
	private String id;

	@Column(name = "parameter_code", unique = true)
	private String parameterCode;

	@Column(name = "parameter_value", nullable = false)
	private String parameterValue;
	
	@OneToMany(mappedBy = "parameter", targetEntity = ParameterI18nEntity.class, fetch = FetchType.LAZY)
	@Fetch(FetchMode.SELECT)
	private Set<ParameterI18nEntity> parameterI18n = new HashSet<ParameterI18nEntity>();

	@ManyToOne(targetEntity = ParameterGroupEntity.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "parameter_group_uuid", nullable = false, insertable = false, updatable = false)
	private ParameterGroupEntity parameterGroup;

}