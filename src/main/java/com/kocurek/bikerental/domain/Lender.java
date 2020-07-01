package com.kocurek.bikerental.domain;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.pl.PESEL;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Getter
@Setter
public class Lender {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String firstName;
    @NotNull(message = "Nazwisko jest wymagane.")
    @NotBlank(message = "Nazwisko jest wymagane.")
    private String lastName;
    @PESEL(message = "Pesel nieprawidłowy.")
    private String pesel;
    @Email(message = "Adres email nieprawidłaowy.")
    private String email;
}
