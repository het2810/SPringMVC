package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

@Controller
public class SessionController {
	
	@GetMapping("/signup")
	public String signup() {
		return "SignUp";
	}
	@GetMapping("/login")
	public String login() {
		return "Login";
	}
	@PostMapping("/saveuser")
	public String saveUser(UserBean userBean , Model mod) {
		System.out.println(userBean.getUserId());
		System.out.println(userBean.getFirstName());
		System.out.println(userBean.getEmail());
		System.out.println(userBean.getPassword());
		mod.addAttribute("firstName",userBean.getFirstName());
		mod.addAttribute("email",userBean.getEmail());
		mod.addAttribute("password",userBean.getPassword());
		return "Login";
	}
}
