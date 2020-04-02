package io.github.xaphira.panic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.panic.entity.DeviceEntity;

public interface DeviceRepo extends JpaRepository<DeviceEntity, String>, JpaSpecificationExecutor<DeviceEntity> {

}