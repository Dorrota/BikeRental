package com.kocurek.bikerental.repository;

import com.kocurek.bikerental.domain.Bike;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BikeRepository extends JpaRepository<Bike, Long> {
    List<Bike> findAllByBrandName(String name);
    List<Bike> findAllByOrderByBrandName();
    @Modifying
    @Query("update Bike b set b.bikeName = ?1 where b.id = ?2")
    void setBikeNameById(String bikeName, Long id);
}
