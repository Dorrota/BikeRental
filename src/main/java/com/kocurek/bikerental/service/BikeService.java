package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Bike;

import java.util.List;
import java.util.Optional;

public interface BikeService {

    List<Bike> findAll();
    Optional<Bike> findById(Long id);
    List<Bike> findByBrand(String name);
    List<Bike> findByTypeId(Long id);
    Bike addBike(Bike bike);
    void deleteById(Long id);
}
