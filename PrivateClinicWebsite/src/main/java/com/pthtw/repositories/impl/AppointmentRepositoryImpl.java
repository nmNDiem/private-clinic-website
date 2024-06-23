/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.repositories.impl;

import com.pthtw.pojo.Appointment;
import com.pthtw.repositories.AppointmentRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author admin
 */
@Repository
public class AppointmentRepositoryImpl implements AppointmentRepository {
    @Autowired
    private LocalSessionFactoryBean factory;

    @Override
    public void addAppointment(Appointment appointment) {
        Session s = this.factory.getObject().getCurrentSession();
        s.save(appointment);
    }
    
}
