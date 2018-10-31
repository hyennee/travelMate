package com.kh.travelMate.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.service.mypageService;

@SessionAttributes("loginUser")
@Controller
public class mypageController {
	
	@Autowired
	mypageService ms;
	
	//여기서부터 마이페이지메인
	@RequestMapping("selectMyInfoMain1.mp")
	public List<HashMap<String,Object>> selectMyInfoMain(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		
		Member loginUser = (Member) session.getAttribute("loginUser");

		
		List<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		
		list = ms.myPageInfo(loginUser);
	
		
		System.out.println("loginUser : " + loginUser);
		
		
		return list;
	}
	
	@RequestMapping("selectMyInfoMain2.mp")
	public List<HashMap<String,Object>> selectMyInfoMain(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		
		Member loginUser = (Member) session.getAttribute("loginUser");

		
		List<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		
		list = ms.myPageInfo(loginUser);
	
		
		System.out.println("loginUser : " + loginUser);
		
		
		return list;
	}
	
	@RequestMapping("selectMyInfoMain3.mp")
	public List<HashMap<String,Object>> selectMyInfoMain(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		
		Member loginUser = (Member) session.getAttribute("loginUser");

		
		List<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		
		list = ms.myPageInfo(loginUser);
	
		
		System.out.println("loginUser : " + loginUser);
		
		
		return list;
	}
	
}
