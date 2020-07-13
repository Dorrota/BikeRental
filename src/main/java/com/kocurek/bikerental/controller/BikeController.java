package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Bike;
import com.kocurek.bikerental.domain.Brand;
import com.kocurek.bikerental.domain.Type;
import com.kocurek.bikerental.service.BikeService;
import com.kocurek.bikerental.service.BrandService;
import com.kocurek.bikerental.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

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
    public String bikeList(Model model) {
        List<Bike> bikes = bikeService.findAll();
        model.addAttribute("bikes", bikes);
        //throw new Exception("ncwjkwq");
        return "bike/bikes";
    }

//    @GetMapping("/brand")
//    public String brandList(Model model){
//        List<Bike> bikeList = bikeService.findByBrand()
//        return null;
//    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("bike", new Bike());
        return "bike/bikeForm";
    }

    @PostMapping("/add")
    public String addBike(@Valid Bike bike, BindingResult result){
        if (result.hasErrors()){
            return "bike/bikeForm";
        }
        bikeService.addBike(bike);
        return "redirect:/bike/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteBike(@PathVariable Long id){
        bikeService.deleteById(id);
        return "redirect:/bike/all";
    }

    @GetMapping("/edit/{id}")
    public String updateBikeWithName(@PathVariable Long id, Model model){
        Bike bike = bikeService.findById(id);
        model.addAttribute("bike", bike);
        return "bike/bikeUpdate";
    }

    @PostMapping("/edit/{id}")
    public String updateBike(@ModelAttribute Bike bike){
        String name = bike.getBikeName();
        Long id = bike.getId();
        bikeService.updateBike(name, id);
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
