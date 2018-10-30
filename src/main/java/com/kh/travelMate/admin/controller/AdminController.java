package com.kh.travelMate.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("admin/admin.main")
	public String goAdminMain() {
		
		return "admin/adminIndex"; // Admin Main view forward
	}
	
	
	
}
