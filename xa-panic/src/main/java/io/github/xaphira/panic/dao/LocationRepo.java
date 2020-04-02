package io.github.xaphira.panic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.panic.entity.LocationEntity;

public interface LocationRepo extends JpaRepository<LocationEntity, String>, JpaSpecificationExecutor<LocationEntity> {

}