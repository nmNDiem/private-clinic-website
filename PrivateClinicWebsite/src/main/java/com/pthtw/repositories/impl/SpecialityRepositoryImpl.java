/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pthtw.repositories.impl;

import com.pthtw.pojo.Speciality;
import com.pthtw.repositories.SpecialityRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author admin
 */
@Repository
public class SpecialityRepositoryImpl implements SpecialityRepository {
    @Autowired
    private LocalSessionFactoryBean fatory;
    
    @Override
    public List<Speciality> getSpecialities() {
        Session s = this.fatory.getObject().getCurrentSession();
        Query q = s.createNamedQuery("Speciality.findAll");
        return q.getResultList();
    }
    
}