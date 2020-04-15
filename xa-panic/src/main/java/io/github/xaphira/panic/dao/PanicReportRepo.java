package io.github.xaphira.panic.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import io.github.xaphira.panic.entity.PanicReportEntity;

public interface PanicReportRepo extends JpaRepository<PanicReportEntity, String>, JpaSpecificationExecutor<PanicReportEntity> {
	
	@Query("SELECT pr FROM PanicReportEntity pr JOIN FETCH pr.panicDetails pd JOIN FETCH pd.location l JOIN FETCH pd.device d WHERE pr.panicCode = :code AND LOWER(pr.username) = :username")
	PanicReportEntity loadPanicReportByCodeUsername(@Param("code") String code, @Param("username") String username);
	
	List<PanicReportEntity> findByActiveAndStatusNull(boolean active);

}