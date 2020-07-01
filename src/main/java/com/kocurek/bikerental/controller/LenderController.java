package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Lender;
import com.kocurek.bikerental.service.LenderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/lender")
public class LenderController {

    private final LenderService lenderService;

    public LenderController(LenderService lenderService) {
        this.lenderService = lenderService;
    }

    @GetMapping("/all")
    public String lenderList(Model model){
        List<Lender> lenders = lenderService.findAll();
        model.addAttribute("lenders", lenders);
        return "lenders";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("lender", new Lender());
        return "lenderForm";
    }

    @PostMapping("/add")
    public String addLender(@Valid Lender lender, BindingResult result){
        if (result.hasErrors()){
            return "lenderForm";
        }
        lenderService.addLender(lender);
        return "redirect:/lender/all";
    }
}
