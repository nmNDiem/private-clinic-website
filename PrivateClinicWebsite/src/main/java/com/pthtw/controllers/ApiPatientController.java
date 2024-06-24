/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.controllers;

import com.pthtw.pojo.Patient;
import com.pthtw.services.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author admin
 */
@RestController
@RequestMapping("/api")
public class ApiPatientController {
    @Autowired
    private PatientService patientService;
    
    @GetMapping(path = "/patients/{patientId}/", produces = {
        MediaType.APPLICATION_JSON_VALUE
    })
    @CrossOrigin
    public ResponseEntity<Patient> retrieve(@PathVariable(value = "patientId") int id) {
        return new ResponseEntity<>(this.patientService.getPatientById(id), HttpStatus.OK);
    }
}
