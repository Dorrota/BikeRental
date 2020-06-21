package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.BikeUsage;
import com.kocurek.bikerental.domain.Lender;
import com.kocurek.bikerental.domain.UsageStatus;
import com.kocurek.bikerental.service.BikeService;
import com.kocurek.bikerental.service.BikeUsageService;
import com.kocurek.bikerental.service.LenderService;
import com.kocurek.bikerental.service.UsageStatusService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/usage")
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


    @ModelAttribute("lenders")
    public List<Lender> lenderList(){
        return lenderService.findAll();
    }
    @ModelAttribute("statuses")
    public List<UsageStatus> statusList(){
        return statusService.findAll();
    }
    //@ModelAttribute("bikes")

}
