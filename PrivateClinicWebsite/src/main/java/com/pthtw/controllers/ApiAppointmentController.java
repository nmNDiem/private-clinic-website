/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.controllers;

import com.pthtw.pojo.Appointment;
import com.pthtw.pojo.Doctor;
import com.pthtw.pojo.Patient;
import com.pthtw.services.AppointmentService;
import com.pthtw.services.DoctorService;
import com.pthtw.services.PatientService;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author admin
 */
@RestController
@RequestMapping("/api")
public class ApiAppointmentController {
    @Autowired
    private AppointmentService appointmentService;
    @Autowired
    private DoctorService docService;
    @Autowired
    private PatientService patientService;
    
    @PostMapping(path = "/appointments/", consumes = {MediaType.APPLICATION_JSON_VALUE})
    @ResponseStatus(HttpStatus.CREATED)
    public void create(
            @RequestParam Map<String, String> params,
            @DateTimeFormat(pattern = "dd/MM/yyyy") Date appointmentDate,
            @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss") Date confirmTime) {
        
        int doctorId = Integer.parseInt(params.get("doctorId"));
        Doctor doctor = docService.getDoctorById(doctorId);
        
        int patientId = Integer.parseInt(params.get("patientId"));
        Patient patient = patientService.getPatientById(patientId);
                
        Appointment a = new Appointment();
        a.setPatientId(patient);
        a.setDoctorId(doctor);
        a.setReason(params.get("reason"));
        a.setAppointmentDate(appointmentDate);
        a.setStatus("Chờ xác nhận");
        a.setConfirmTime(confirmTime);
        a.setEmailSent((short)0);
        
        this.appointmentService.addAppointment(a);
    }
    
    @GetMapping("/appointments/")
    @CrossOrigin
    public ResponseEntity<List<Appointment>> list() {
        return new ResponseEntity<>(this.appointmentService.getList(), HttpStatus.OK);
    }
    
    @GetMapping("/appointments/{appointmentId}/")
    @CrossOrigin
    public ResponseEntity<Appointment> retrieve(@PathVariable(value = "appointmentId") int id) {
        return new ResponseEntity<>(this.appointmentService.getAppointmentById(id), HttpStatus.OK);
    }
}
