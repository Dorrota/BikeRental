package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Bike;
import com.kocurek.bikerental.repository.BikeRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BikeServiceImpl implements BikeService {

    private BikeRepository bikeRepository;

    public BikeServiceImpl(BikeRepository bikeRepository) {
        this.bikeRepository = bikeRepository;
    }

    @Override
    public List<Bike> findAll() {
        return bikeRepository.findAll();
    }

    @Override
    public Optional<Bike> findById(Long id) {
        return bikeRepository.findById(id);
    }

    @Override
    public List<Bike> findByBrandId(Long id) {
        return null;
    }

    @Override
    public List<Bike> findByTypeId(Long id) {
        return null;
    }

    @Override
    public Bike addBike(Bike bike) {
        return bikeRepository.save(bike);
    }

    @Override
    public void deleteById(Long id) {
        bikeRepository.deleteById(id);
    }
}
