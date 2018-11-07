package com.kh.travelMate.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.travelMate.admin.model.service.BoardManageService;
import com.kh.travelMate.admin.model.service.MemberManageService;
import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.common.Pagination;

@Controller
public class AdminController {
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private BoardManageService bms;
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
	
	@RequestMapping("admin/memberManageDetail.admin")
	public String memberManageDetailAdmin(@RequestParam(defaultValue="0") int userno, Model model) {
		if(userno == 0) {
			// userno가 없을 경우
			return "admin/memberManage.admin";
		}else {
			// userno가 있을 경우
			MemberManage memberDetail = mms.selectOne(userno);
			System.out.println("조회한 memberDetail은: " + memberDetail);
			model.addAttribute("memberDetail", memberDetail);
			return "admin/memberManage/memberManageDetail";
		}
	}
	
	
	@RequestMapping("admin/boardManage.admin")
	public String boardManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		
		ArrayList<BoardManage> boardList;
		
		int listCount = 0;
		
		listCount = bms.getListCount();
		
		// 테스트 코드
		System.out.println("listCount: " + listCount);
		
		PageInfo page = Pagination.getPageInfo(currentPage, listCount);
		
		boardList = bms.boardList(page);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("page", page);

		return "admin/boardManage/boardManageMain";
		
	}	
	
	
}
