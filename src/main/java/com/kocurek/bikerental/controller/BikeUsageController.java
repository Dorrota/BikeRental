package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.Bike;
import com.kocurek.bikerental.domain.BikeUsage;
import com.kocurek.bikerental.domain.Lender;
import com.kocurek.bikerental.domain.UsageStatus;
import com.kocurek.bikerental.service.BikeService;
import com.kocurek.bikerental.service.BikeUsageService;
import com.kocurek.bikerental.service.LenderService;
import com.kocurek.bikerental.service.UsageStatusService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/usage")
@Slf4j
public class BikeUsageController {

    private final BikeUsageService bikeUsageService;
    private final LenderService lenderService;
    private final UsageStatusService statusService;
    private final BikeService bikeService;

    public BikeUsageController(BikeUsageService bikeUsageService, LenderService lenderService, UsageStatusService statusService, BikeService bikeService) {
        this.bikeUsageService = bikeUsageService;
        this.lenderService = lenderService;
        this.statusService = statusService;
        this.bikeService = bikeService;
    }

    @GetMapping("/all")
    public String usageList(Model model){
        List<BikeUsage> usages = bikeUsageService.findAll();
        model.addAttribute("usages", usages);
        return "bikeUsages";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("usage", new BikeUsage());
        return "bikeUsageForm";
    }

    @PostMapping("/add")
    public String addBikeUsage(@Valid BikeUsage usage, BindingResult result){
        if (result.hasErrors()){
            return "bikeUsageForm";
        }
        bikeUsageService.addUsage(usage);
        return "redirect:/usage/all";
    }

    @GetMapping("/bike/{id}")
    public String isBikeInUse(@PathVariable Long id, Model model){
        LocalDateTime now = LocalDateTime.now();
        List<BikeUsage> list=bikeUsageService.findAllByBikeAndTime(id, now, now);
        model.addAttribute("usages", list);
        return "usages";
    }
    @GetMapping("/bikes")
    public String allBikesInUse(Model model){
        List<BikeUsage> list = bikeUsageService.findAllCurrentUsages();
        //log.info();
        model.addAttribute("usages", list);
        return "bikesUsages";
    }

    @ModelAttribute("lenders")
    public List<Lender> lenderList(){
        return lenderService.findAll();
    }
    @ModelAttribute("statuses")
    public List<UsageStatus> statusList(){
        return statusService.findAll();
    }
    @ModelAttribute("bikes")
    public List<Bike> bikeList(){
        return bikeService.findAll();
    }

}
