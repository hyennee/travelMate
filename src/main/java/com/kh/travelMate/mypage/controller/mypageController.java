package com.kh.travelMate.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.service.mypageService;

@Controller
public class mypageController {
	@Autowired
	private mypageService ms;
	
	@RequestMapping("mypage.me")
	public String mypageView(Model model,HttpServletRequest request, HttpServletResponse response) {
		
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		
		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());
		
		List<HashMap<String,Object>> tradeInfo = ms.tradeInfoHistory(loginUser);
		List<HashMap<String,Object>> oneByOne = ms.oneByOneHistory(loginUser);
		List<HashMap<String,Object>> cyberMoney = ms.cyberMoneyHistory(loginUser);
		
		//request.setAttribute("cyberMoney", cyberMoney);
		model.addAttribute("cyberMoney", cyberMoney);
		model.addAttribute("oneByOne", oneByOne);
		
		return "mypage/mypagemain";
	}
}
