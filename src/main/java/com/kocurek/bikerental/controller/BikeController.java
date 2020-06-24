package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Bike;
import com.kocurek.bikerental.domain.Brand;
import com.kocurek.bikerental.domain.Type;
import com.kocurek.bikerental.repository.BrandRepository;
import com.kocurek.bikerental.repository.TypeRepository;
import com.kocurek.bikerental.service.BikeService;
import com.kocurek.bikerental.service.BrandService;
import com.kocurek.bikerental.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/bike")
public class BikeController {

    private final BikeService bikeService;
    private final TypeService typeService;
    private final BrandService brandService;

    public BikeController(BikeService bikeService, TypeService typeService, BrandService brandService) {
        this.bikeService = bikeService;
        this.typeService = typeService;
        this.brandService = brandService;
    }

    @GetMapping("/all")
    public String bikeList(Model model){
        List<Bike> bikes = bikeService.findAll();
        model.addAttribute("bikes", bikes);
        return "bikes";
    }

//    @GetMapping("/brand")
//    public String brandList(Model model){
//        List<Bike> bikeList = bikeService.findByBrand()
//        return null;
//    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("bike", new Bike());
        return "bikeForm";
    }

    @PostMapping("/add")
    public String addBike(@ModelAttribute Bike bike){
        bikeService.addBike(bike);
        return "redirect:/bike/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteBike(@PathVariable Long id, Model model){
        Optional<Bike> opBike = bikeService.findById(id);
        Bike bike = opBike.orElse(new Bike());
        model.addAttribute("bike", bike);
        return "bikeDelete";
    }
    @GetMapping("/delete/yes/{id}")
    public String deleteBike(@PathVariable Long id){
        bikeService.deleteById(id);
        return "redirect:/bike/all";
    }

    @ModelAttribute("types")
    List<Type> typeList(){
        return typeService.findAll();
    }
    @ModelAttribute("brands")
    List<Brand> brandList(){
        return brandService.findAll();
    }
}
