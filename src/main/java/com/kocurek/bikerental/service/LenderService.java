package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Lender;

import java.util.List;

public interface LenderService {

    List<Lender> findAll();
    Lender addLender(Lender lender);
    Lender findLenderById(Long id);
}
