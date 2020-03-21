/**
 * 
 */
package io.github.xaphira.master.dao.specification;

import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import io.github.xaphira.master.entity.ParameterEntity;

public class ParameterSpecification {

	public static Specification<ParameterEntity> getDatatable(Map<String, Object> keyword) {
		return new Specification<ParameterEntity>() {

			/**
			 * 
			 */
			private static final long serialVersionUID = -637621292944403277L;

			@Override
			public Predicate toPredicate(Root<ParameterEntity> root, CriteriaQuery<?> criteria, CriteriaBuilder builder) {
				Predicate predicate = builder.conjunction();
				if (!keyword.isEmpty()) {
					for(Map.Entry<String, Object> filter : keyword.entrySet()) {
						String key = filter.getKey();
						Object value = filter.getValue();
						if (value != null) {
							switch (key) {
								case "parameterCode" :
								case "parameterValue" :
									// builder.upper for PostgreSQL
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get(key)), String.format("%%%s%%", value.toString().toUpperCase())));
									break;
								case "parameterGroupName" :
									// builder.upper for PostgreSQL
									predicate.getExpressions().add(builder.like(builder.upper(root.join("parameterGroup").<String>get("parameterGroupName")), String.format("%%%s%%", value.toString().toUpperCase())));
									break;
								case "_all" :
									predicate = builder.disjunction();
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get("parameterCode")), String.format("%%%s%%", value.toString().toUpperCase())));
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get("parameterValue")), String.format("%%%s%%", value.toString().toUpperCase())));
									predicate.getExpressions().add(builder.like(builder.upper(root.join("parameterGroup").<String>get("parameterGroupName")), String.format("%%%s%%", value.toString().toUpperCase())));
									break;
								default :
									break;
							}	
						}
					}
				}
				return predicate;
			}
		};
	}

}
