package io.github.xaphira.panic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.panic.entity.PanicDetailEntity;

public interface PanicDetailRepo extends JpaRepository<PanicDetailEntity, String>, JpaSpecificationExecutor<PanicDetailEntity> {

}