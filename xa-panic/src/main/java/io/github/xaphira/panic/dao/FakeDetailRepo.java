package io.github.xaphira.panic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.panic.entity.FakeDetailEntity;

public interface FakeDetailRepo extends JpaRepository<FakeDetailEntity, String>, JpaSpecificationExecutor<FakeDetailEntity> {

}