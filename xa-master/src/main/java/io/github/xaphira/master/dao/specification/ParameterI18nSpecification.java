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

import io.github.xaphira.master.entity.ParameterI18nEntity;

public class ParameterI18nSpecification {
	
	private static final String IS_ACTIVE = "active";

	public static Specification<ParameterI18nEntity> getSelect(Map<String, Object> keyword) {
		return new Specification<ParameterI18nEntity>() {

			/**
			 * 
			 */
			private static final long serialVersionUID = -637621292944403277L;

			@Override
			public Predicate toPredicate(Root<ParameterI18nEntity> root, CriteriaQuery<?> criteria, CriteriaBuilder builder) {
				Predicate predicate = builder.conjunction();
				if (!keyword.isEmpty()) {
					for(Map.Entry<String, Object> filter : keyword.entrySet()) {
						String key = filter.getKey();
						Object value = filter.getValue();
						if (value != null) {
							switch (key) {
								case "_label" :
								case "parameterValue" :
									// builder.upper for PostgreSQL
									predicate.getExpressions().add(builder.like(builder.upper(root.<String>get("parameterValue")), String.format("%%%s%%", value.toString().toUpperCase())));
									break;
								case "localeCode" :
									predicate = builder.and(predicate, builder.equal(root.<String>get(key), value.toString()));
									break;
								case "parameterGroupCode" :
									predicate = builder.and(predicate, builder.equal(root.join("parameter").join("parameterGroup").<String>get(key), value.toString()));
									break;
							}	
						}
					}
				}
				predicate = builder.and(predicate, builder.equal(root.get(IS_ACTIVE), true));
				return predicate;
			}
		};
	}

}
