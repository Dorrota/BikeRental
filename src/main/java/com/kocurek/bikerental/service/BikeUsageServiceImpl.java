package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.BikeUsage;
import com.kocurek.bikerental.repository.BikeUsageRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BikeUsageServiceImpl implements BikeUsageService {

    private BikeUsageRepository usageRepository;

    public BikeUsageServiceImpl(BikeUsageRepository usageRepository) {
        this.usageRepository = usageRepository;
    }

    @Override
    public List<BikeUsage> findAll() {
        return null;
    }

    @Override
    public List<BikeUsage> findAllByBikeId(Long id) {
        return usageRepository.findAllByBikeId(id);
    }

    @Override
    public List<BikeUsage> findAllByUsageStatusName(String name) {
        return usageRepository.findAllByUsageStatusName(name);
    }

    @Override
    public BikeUsage addUsage(BikeUsage usage) {
        return usageRepository.save(usage);
    }

    @Override
    public List<BikeUsage> findAllByLenderId(Long id) {
        return usageRepository.findAllByLenderId(id);
    }
}