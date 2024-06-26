package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.model.po.Students;
import com.example.demo.model.po.Teachers;
import com.example.demo.service.AuthService;
import com.example.demo.service.ChooseRecordsService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private AuthService authService;
    
    @Autowired
    private ChooseRecordsService chooseRecordsService;

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new Students()); 
        return "login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("user") Students student, HttpServletRequest request, Model model) {
    	 
    	HttpSession session = request.getSession();
    	
    	Students foundStudent = authService.findStudentByEmail(student.getEmail());
        if (foundStudent != null && foundStudent.getPassword().equals(student.getPassword())) {
        	session.setAttribute("userType", "student");
            session.setAttribute("user", foundStudent);
            return "redirect:/index"; 
        }

        Teachers foundTeacher = authService.findTeacherByEmail(student.getEmail());
        if (foundTeacher != null && foundTeacher.getPassword().equals(student.getPassword())) {
        	session.setAttribute("userType", "teacher"); 
            session.setAttribute("user", foundTeacher);
            return "redirect:/index"; 
        }
        
        model.addAttribute("error", "Invalid email or password");
        return "login";
    }
    
    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate(); 
        return "redirect:/auth/login"; 
    }
    

}