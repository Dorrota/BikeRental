package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.UsageStatus;
import com.kocurek.bikerental.repository.UsageStatusRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsageStatusServiceImpl implements UsageStatusService {

    private UsageStatusRepository statusRepository;

    public UsageStatusServiceImpl(UsageStatusRepository statusRepository) {
        this.statusRepository = statusRepository;
    }

    @Override
    public List<UsageStatus> findAll() {
        return statusRepository.findAll();
    }

    @Override
    public UsageStatus addStatus(UsageStatus status) {
        return statusRepository.save(status);
    }
}
