package io.github.xaphira.master.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.master.entity.LanguageEntity;

public interface LanguageRepo extends JpaRepository<LanguageEntity, String>, JpaSpecificationExecutor<LanguageEntity> {
	
}