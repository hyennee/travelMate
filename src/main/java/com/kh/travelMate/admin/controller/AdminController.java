package com.kh.travelMate.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.travelMate.admin.model.service.MemberManageService;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.common.Pagination;

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
	public String memberManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		
		ArrayList<MemberManage> memberList;
		
		int listCount = mms.getListCount();
		// 테스트 코드
		System.out.println("listCount: " + listCount);
		
		PageInfo page = Pagination.getPageInfo(currentPage, listCount);
		
		memberList = mms.memberList(page);
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("page", page);

		return "admin/memberManage/memberManageMain";
		
	}
	
	
	
}
