package com.kocurek.bikerental.domain;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
public class BikeUsage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    @FutureOrPresent(message = "Podaj datę przyszłą.")
    private LocalDateTime startTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    @FutureOrPresent(message = "Podaj datę z przyszłości.")
    private LocalDateTime endTime;

    @ManyToOne
    @NotNull(message = "Wybierz rower")
    private Bike bike;
    @ManyToOne
    private Lender lender;
    @ManyToOne
    private UsageStatus usageStatus;
}
