package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.Lender;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LenderRepository extends JpaRepository<Lender, Long> {
}
