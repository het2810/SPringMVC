package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class SessionController {
	
	@Autowired
	UserDao userDao;
	
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
		System.out.println(userBean.getFirstName());
		System.out.println(userBean.getEmail());
		System.out.println(userBean.getPassword());
		mod.addAttribute("firstName",userBean.getFirstName());
		mod.addAttribute("email",userBean.getEmail());
		mod.addAttribute("password",userBean.getPassword());
		userDao.insertUser(userBean);
		
		return "Login";
	}
	
	@GetMapping("/ListUsers")
	public String listUsers(Model md ) {
		List<UserBean> users = userDao.getAllUsers();
		md.addAttribute("users",users);
		return "ListUsers";
	}
	
	@PostMapping("/login")
	public String login(UserBean userBean, Model model) {
	    UserBean user = userDao.getUserByEmail(userBean.getEmail());
	    if (user != null && user.getPassword().equals(userBean.getPassword())) {
	        // User credentials are valid, so redirect to the dashboard or home page
	        return "Dashboard"; 
	    } else {
	        // User credentials are invalid, so display an error message and ask the user to try again
	        model.addAttribute("error", "Invalid email or password.");
	        return "Login";
	    }
	}
	
}
