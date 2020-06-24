package com.kocurek.bikerental.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Bike {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String bikeName;
    @ManyToOne
    private Brand brand;
    @ManyToOne
    private Type type;
    private boolean isElectric;
    private String color;
    private String size;


}
