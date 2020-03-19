package io.github.xaphira.master.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.master.entity.ParameterI18nEntity;

public interface ParameterI18nRepo extends JpaRepository<ParameterI18nEntity, String>, JpaSpecificationExecutor<ParameterI18nEntity> {
	
}