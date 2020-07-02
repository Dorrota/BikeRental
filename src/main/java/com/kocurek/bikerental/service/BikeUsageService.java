package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.BikeUsage;

import java.time.LocalDateTime;
import java.util.List;

public interface BikeUsageService {

    List<BikeUsage> findAll();
    List<BikeUsage> findAllByBikeId(Long id);
    List<BikeUsage> findAllByUsageStatusName(String name);
    BikeUsage addUsage(BikeUsage usage);
    List<BikeUsage> findAllByLenderId(Long id);
    List<BikeUsage> findAllByBikeAndTime(Long id, LocalDateTime currentDate1, LocalDateTime currentDate2);
    List<BikeUsage> findFutureUsages(Long id);
    List<BikeUsage> findAllCurrentUsages();
}
