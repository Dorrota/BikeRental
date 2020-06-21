package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.BikeUsage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface BikeUsageRepository extends JpaRepository<BikeUsage, Long> {

    List<BikeUsage> findAllByBikeId(Long id);
    List<BikeUsage> findAllByUsageStatusName(String name);
    List<BikeUsage> findAllByLenderId(Long id);
    //List<BikeUsage> findByStartTimeBeforeAndEndTimeAfter(LocalDateTime localDateTime);

}