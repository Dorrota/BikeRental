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

        return bikeRepository.findAllByOrderByBrandName();
    }

    @Override
    public Bike findById(Long id) {
        Bike bike = bikeRepository.findById(id).orElse(new Bike());
        return bike;
    }

    @Override
    public List<Bike> findByBrand(String name) {
        return bikeRepository.findAllByBrandName(name);
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

    @Override
    public Bike updateBike(String name, Long id){
        bikeRepository.setBikeNameById(name, id);
        return bikeRepository.getOne(id);
    }
}
