package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Brand;

import java.util.List;

public interface BrandService {
    List<Brand> findAll();
    Brand addBrand(Brand brand);
}
