package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.BikeUsage;

import java.util.List;

public interface BikeUsageService {

    List<BikeUsage> findAll();
    List<BikeUsage> findAllByBikeId(Long id);
    List<BikeUsage> findAllByUsageStatusName(String name);
    BikeUsage addUsage(BikeUsage usage);
    List<BikeUsage> findAllByLenderId(Long id);
}
