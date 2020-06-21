package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Brand;
import com.kocurek.bikerental.service.BrandService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/brand")
public class BrandController {

    private final BrandService brandService;

    public BrandController(BrandService brandService) {
        this.brandService = brandService;
    }

    @GetMapping("/all")
    public String brandList(Model model){
        List<Brand> brands = brandService.findAll();
        model.addAttribute("brands", brands);
        return "brands";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("brand", new Brand());
        return "brandForm";
    }

    @PostMapping("/add")
    public String addBrand(@ModelAttribute Brand brand){
        brandService.addBrand(brand);
        return "redirect:/brand/all";
    }
}
