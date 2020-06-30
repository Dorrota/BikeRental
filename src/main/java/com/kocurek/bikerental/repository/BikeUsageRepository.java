package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.BikeUsage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface BikeUsageRepository extends JpaRepository<BikeUsage, Long> {

    List<BikeUsage> findAllByBikeId(Long id);
    List<BikeUsage> findAllByUsageStatusName(String name);
    List<BikeUsage> findAllByLenderId(Long id);
    //List<BikeUsage> findAllByBike_IdAndStartTimeBeforeAndEndTimeAfter(Long id, LocalDateTime currentDate, LocalDateTime currentDate2);
    List<BikeUsage> findAllByBike_IdAndStartTimeAfter(Long is, LocalDateTime date);
    @Query("select u from BikeUsage u where u.bike.id = ?1 and u.startTime < ?2 and u.endTime > ?3")
    List<BikeUsage> findIfBikeNowInUse(Long id, LocalDateTime startDate, LocalDateTime endDate);

}
