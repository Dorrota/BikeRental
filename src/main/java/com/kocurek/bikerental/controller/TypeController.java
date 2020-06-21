package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Bike;
import com.kocurek.bikerental.domain.Type;
import com.kocurek.bikerental.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/type")
public class TypeController {

    private final TypeService typeService;

    public TypeController(TypeService typeService) {
        this.typeService = typeService;
    }

    @GetMapping("/all")
    public String typeList(Model model){
        List<Type> types = typeService.findAll();
        model.addAttribute("types", types);
        return "types";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("type", new Type());
        return "typeForm";
    }

    @PostMapping("/add")
    public String addBike(@ModelAttribute Type type){
        typeService.addType(type);
        return "redirect:/type/all";
    }
}
