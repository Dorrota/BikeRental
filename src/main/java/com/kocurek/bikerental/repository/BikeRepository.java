package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.Bike;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BikeRepository extends JpaRepository<Bike, Long> {
    List<Bike> findAllByBrandName(String name);
    List<Bike> findAllByOrderByBrandName();
}
