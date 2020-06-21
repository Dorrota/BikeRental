package com.kocurek.bikerental.service;

import com.kocurek.bikerental.domain.Type;
import com.kocurek.bikerental.repository.TypeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService{

    private TypeRepository typeRepository;

    public TypeServiceImpl(TypeRepository typeRepository) {
        this.typeRepository = typeRepository;
    }

    @Override
    public Type addType(Type type) {
        return typeRepository.save(type);
    }

    @Override
    public List<Type> findAll() {
        return typeRepository.findAll();
    }
}
