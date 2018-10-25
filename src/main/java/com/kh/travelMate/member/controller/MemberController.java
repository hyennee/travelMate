package com.kh.travelMate.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.service.MemberService;
import com.kh.travelMate.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MemberController {
	@Autowired
	private MemberService ms;
	
	
	@RequestMapping("goMain.me")
	public String goMain() {
		return "must/main"; //메인페이지로 포워드함
	}

	
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {
		
		try {
			Member loginUser = ms.loginCheck(m);
			
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:goMain.me";
			
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "must/errorPage";
		}
		
		
	}
	
	@RequestMapping("logout.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:goMain.me";
	}
}
