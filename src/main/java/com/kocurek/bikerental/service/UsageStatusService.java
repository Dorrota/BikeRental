package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.UsageStatus;

import java.util.List;

public interface UsageStatusService {

    List<UsageStatus> findAll();
    UsageStatus addStatus(UsageStatus status);
}
