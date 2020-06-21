package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Type;

import java.util.List;

public interface TypeService {

    Type addType(Type type);
    List<Type> findAll();
}
