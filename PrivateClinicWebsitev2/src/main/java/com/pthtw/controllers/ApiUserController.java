///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.pthtw.controllers;
//
//import com.pthtw.pojo.User;
//import com.pthtw.services.UserService;
//import java.util.Date;
//import java.util.Map;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.format.annotation.DateTimeFormat;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.MediaType;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestPart;
//import org.springframework.web.bind.annotation.ResponseStatus;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.multipart.MultipartFile;
//
///**
// *
// * @author admin
// */
//@RestController
//@RequestMapping("/api")
//public class ApiUserController {
//    @Autowired
//    private UserService userService;
//    @Autowired
//    private BCryptPasswordEncoder passwordEncoder;
//    
//    @PostMapping(path = "/users/", consumes = {
//        MediaType.APPLICATION_JSON_VALUE,
//        MediaType.MULTIPART_FORM_DATA_VALUE
//    })
//    @ResponseStatus(HttpStatus.CREATED)
//    public void create(
//            @RequestParam Map<String, String> params, 
//            @RequestPart MultipartFile[] file,
//            @DateTimeFormat(pattern = "dd/MM/yyyy") Date date) {
//        User u = new User();
//        u.setUsername(params.get("username"));
//        
//        String password = params.get("password");
//        u.setPassword(this.passwordEncoder.encode(password));
//        
//        u.setUserRole("ROLE_PATIENT");
//        
//        if (file.length > 0) {
//            u.setFile(file[0]);
//        }
//        u.setName(params.get("name"));
//        u.setGender(params.get("gender"));
//        u.setBirthday(date);
//        u.setPhoneNumber(params.get("phoneNumber"));
//        u.setEmail(params.get("email"));
//        
//        this.userService.addUser(u);
//    }
//}
