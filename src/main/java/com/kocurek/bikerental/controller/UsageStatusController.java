package com.kocurek.bikerental.controller;

import com.kocurek.bikerental.domain.UsageStatus;
import com.kocurek.bikerental.service.UsageStatusService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/status")
public class UsageStatusController {

    private final UsageStatusService statusService;

    public UsageStatusController(UsageStatusService statusService) {
        this.statusService = statusService;
    }

    @GetMapping("/all")
    public String statusList(Model model){
        List<UsageStatus> statuses = statusService.findAll();
        model.addAttribute("statuses", statuses);
        return "usageStatuses";
    }

    @GetMapping("/add")
    public String getForm(Model model){
        model.addAttribute("status", new UsageStatus());
        return "usageStatusForm";
    }

    @PostMapping("/add")
    public String addStatus(@ModelAttribute UsageStatus status){
        statusService.addStatus(status);
        return "redirect:/status/all";
    }
}
