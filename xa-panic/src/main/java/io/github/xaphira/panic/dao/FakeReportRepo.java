package io.github.xaphira.panic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import io.github.xaphira.panic.entity.FakeReportEntity;

public interface FakeReportRepo extends JpaRepository<FakeReportEntity, String>, JpaSpecificationExecutor<FakeReportEntity> {

}