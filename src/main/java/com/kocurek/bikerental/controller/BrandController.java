package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Brand;
import com.kocurek.bikerental.exception.NotFoundException;
import com.kocurek.bikerental.service.BrandService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/brand")
@Slf4j
public class BrandController {

    private final BrandService brandService;

    public BrandController(BrandService brandService) {
        this.brandService = brandService;
    }

    @GetMapping("/all")
    public String brandList(Model model){
        List<Brand> brands = brandService.findAll();
        model.addAttribute("brands", brands);
        return "brand/brands";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("brand", new Brand());
        return "brand/brandForm";
    }

    @PostMapping("/add")
    public String addBrand(@Valid Brand brand, BindingResult result){
        if (result.hasErrors()){
            return "brand/brandForm";
        }
        brandService.addBrand(brand);
        return "redirect:/brand/all";
    }

    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(NotFoundException.class)
    public ModelAndView handleNotFound(Exception exception){

        log.error("Handling not found exception");
        log.error(exception.getMessage());

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("except/404error");
        modelAndView.addObject("exception", exception);

        return modelAndView;
    }
}
