package com.kh.travelMate.mypage.controller;

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
		model.addAttribute("tradeInfo", tradeInfo);
		
		return "mypage/mypagemain";
	}
	
	@RequestMapping("modifyMyInfo.me")
	public String modifyInfoView(Model model, HttpServletRequest request) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String nick_name = request.getParameter("nick_name");
		String address = request.getParameter("address");
		
		Member m = new Member();
		m.setUser_no(loginUser.getUser_no());
		m.setBirthday(birthday);
		m.setPhone(phone);
		m.setNick_name(nick_name);
		
		System.out.println(m.getUser_no());
		System.out.println(m.getBirthday());
		System.out.println(m.getPhone());
		System.out.println(m.getNick_name());
		/*Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));*/
		
		
		
		ms.modifyInfo(m);
		
		System.out.println(ms.modifyInfo(m));
		
		
		return "mypage/modifyInfo";
		
		
	}
}
