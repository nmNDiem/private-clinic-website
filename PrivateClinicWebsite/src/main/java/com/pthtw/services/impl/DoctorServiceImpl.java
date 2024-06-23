/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.services.impl;

import com.pthtw.pojo.Doctor;
import com.pthtw.repositories.DoctorRepository;
import com.pthtw.services.DoctorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Linh
 */
@Service
public class DoctorServiceImpl implements DoctorService{
    
    @Autowired
    private DoctorRepository docRepo;
    
    @Override
    public List<Doctor> getList() {
        return this.docRepo.getList();
    }

    @Override
    public void addOrUpdate(Doctor d) {
        this.docRepo.addOrUpdate(d);
    }

    @Override
    public Doctor getDoctorById(int id) {
        return this.docRepo.getDoctorById(id);
    }

    @Override
    public void deleteDoctor(int id) {
        this.docRepo.deleteDoctor(id);
    }

    @Override
    public List<Doctor> find(String kw) {
        return this.docRepo.find(kw);
    }

    @Override
    public List<Doctor> getDoctorsBySpecId(int specId) {
        return this.docRepo.getDoctorsBySpecId(specId);
    }
    
}
