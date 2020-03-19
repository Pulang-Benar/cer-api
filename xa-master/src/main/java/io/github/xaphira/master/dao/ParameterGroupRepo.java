package io.github.xaphira.master.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.master.entity.ParameterGroupEntity;

public interface ParameterGroupRepo extends JpaRepository<ParameterGroupEntity, String>, JpaSpecificationExecutor<ParameterGroupEntity> {
	
}