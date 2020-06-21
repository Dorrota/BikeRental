package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.UsageStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsageStatusRepository extends JpaRepository<UsageStatus, Long> {
}
