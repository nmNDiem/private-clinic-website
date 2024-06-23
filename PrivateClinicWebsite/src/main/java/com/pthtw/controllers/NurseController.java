/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.controllers;

import com.pthtw.pojo.Nurse;
import com.pthtw.services.NurseService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Linh
 */
@Controller
public class NurseController {
    @Autowired
    private NurseService nurseService;
    
    @GetMapping(value = "/nurse")
    public String list(Model model) { 
        model.addAttribute("nurses", new Nurse());
        model.addAttribute("nurses", this.nurseService.getList());
        return "nurse";
    }
    
    @GetMapping(value = "/addNurse")
    public String createAddView(Model model) {
        model.addAttribute("nurse", new Nurse());
        return "addNurse";
    }
    
    @PostMapping(value = "/addNurse")
    public String add(@ModelAttribute(value = "nurse") @Valid Nurse n, BindingResult rs, Model model) {
        if (!rs.hasErrors()) {
            try {   
                this.nurseService.addOrUpdate(n);
                return "redirect:/nurse";
            } catch(Exception ex) {
                System.err.println(ex.getMessage());
            }
        }
        return "addNurse";
    }
}
