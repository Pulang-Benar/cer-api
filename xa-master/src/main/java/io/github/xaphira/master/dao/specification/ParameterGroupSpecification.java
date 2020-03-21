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

import io.github.xaphira.master.entity.ParameterGroupEntity;

public class ParameterGroupSpecification {

	public static Specification<ParameterGroupEntity> getDatatable(Map<String, Object> keyword) {
		return new Specification<ParameterGroupEntity>() {

			/**
			 * 
			 */
			private static final long serialVersionUID = -637621292944403277L;

			@Override
			public Predicate toPredicate(Root<ParameterGroupEntity> root, CriteriaQuery<?> criteria, CriteriaBuilder builder) {
				Predicate predicate = builder.conjunction();
				if (!keyword.isEmpty()) {
					for(Map.Entry<String, Object> filter : keyword.entrySet()) {
						String key = filter.getKey();
						Object value = filter.getValue();
						if (value != null) {
							switch (key) {
								case "parameterGroupCode" :
								case "parameterGroupName" :
									// builder.upper for PostgreSQL
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get(key)), String.format("%%%s%%", value.toString().toUpperCase())));
									break;
								case "i18n" :
									predicate.getExpressions().add(builder.equal(root.get(key), value));
									break;
								case "_all" :
									predicate = builder.disjunction();
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get("parameterGroupCode")), String.format("%%%s%%", value.toString().toUpperCase())));
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get("parameterGroupName")), String.format("%%%s%%", value.toString().toUpperCase())));
									predicate.getExpressions().add(builder.equal(root.get("i18n"), value));
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
