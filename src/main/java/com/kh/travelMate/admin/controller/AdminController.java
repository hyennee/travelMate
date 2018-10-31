package com.kh.travelMate.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.travelMate.admin.model.service.MemberManageService;
import com.kh.travelMate.admin.model.vo.MemberManage;

@Controller
public class AdminController {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private MemberManageService mms;
	
	@RequestMapping("admin/admin.main")
	public String goAdminMain() {
		
		return "admin/adminIndex"; // Admin Main view forward
	}
	
	@RequestMapping("admin/memberManage.admin")
	public String memberManageAdmin(Model model) {
		
		List<MemberManage> memberList = mms.memberList();
		
		model.addAttribute("memberList", memberList);
		
		// 테스트코드
		System.out.println("memberList는?: " + memberList);
		
		return "admin/memberManage/memberManageMain";
		
	}
	
	
	
}
