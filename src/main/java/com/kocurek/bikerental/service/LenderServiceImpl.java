package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Lender;
import com.kocurek.bikerental.repository.LenderRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LenderServiceImpl implements LenderService{

    private LenderRepository lenderRepository;

    public LenderServiceImpl(LenderRepository lenderRepository) {
        this.lenderRepository = lenderRepository;
    }

    @Override
    public List<Lender> findAll() {
        return lenderRepository.findAll();
    }

    @Override
    public Lender addLender(Lender lender) {
        return lenderRepository.save(lender);
    }
}
