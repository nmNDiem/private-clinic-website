/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.controllers;

import com.pthtw.pojo.Schedule;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Linh
 */
@Controller
public class ScheduleController {
    @GetMapping(value = "/schedule")
    public void list() {
        
    }
    @GetMapping(value = "/arrangeSchedule")
    public void createAddView(Model model) {
        model.addAttribute("schedule", new Schedule());
    }
    
    @PostMapping(value = "/arrangeSchedule")
    public void add() {
        
    }
    
    @GetMapping(value = "/updateSchedule/{scheduleId}")
    public void update() {
        
    }
    
    @DeleteMapping(value = "/deleteSchedule/{scheduleId}")
    public void delete() {
        
    }
    
    @GetMapping(value = "/findSchedule")
    public void find() {
        
    }
}
