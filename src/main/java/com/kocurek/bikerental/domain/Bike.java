package com.kocurek.bikerental.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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
    @OneToMany(mappedBy = "bike")
    private List<BikeUsage> bikeUsage = new ArrayList<>();
    private boolean isElectric;
    private String color;
    private String size;


}
