package com.kh.travelMate.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	@RequestMapping("goMain.me")
	public String goMain() {
		return "must/main"; //메인페이지로 포워드함
	}

	
/*	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {
		
		try {
			Member loginUser = ms.loginCheck(m);
			
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:goMain.me";
			
		} catch (LoginException e) {
			model.addAttribute("msg", e.getMessage());
			return "must/errorPage";
		}
		
		
	}*/
	
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {
		
		try {
			Member loginUser = ms.loginCheck(m); //평문하고 비교를 해야해서 평문을 그냥 보냄
			
			//모든 작업이 성공일때
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
	
	@RequestMapping("insertMember.me")
	public String insertMember(Model model, Member m, HttpServletRequest request) {
		String encPassword = passwordEncoder.encode(m.getPassword());
		m.setPassword(encPassword);
		
		String birth1 = request.getParameter("birth1");
		String birth2 = request.getParameter("birth2");
		String birth3 = request.getParameter("birth3");
		String zero = String.valueOf(0);
		String birth22 = "";
		String birth33 = "";
		
		if(Integer.parseInt(birth2) >= 1 || Integer.parseInt(birth2) <= 9) {
			birth22 = zero + birth2;
		}
		if(Integer.parseInt(birth3) >= 1 || Integer.parseInt(birth3) <= 9) {
			birth33 = zero + birth3;
		}
		
		String birthday = (birth1 + birth22 + birth33).substring(2);
		
		System.out.println(birthday);
		
		
		m.setBirthday(birthday);
		
		String phoneNum1 = request.getParameter("phoneNum1");
		String phoneNum2 = request.getParameter("phoneNum2");
		String phoneNum3 = request.getParameter("phoneNum3");
		String phone = phoneNum1 + "-" + phoneNum2 + "-" + phoneNum3;
		m.setPhone(phone);
		
		System.out.println("m객체 : " + m);
		
		int result = ms.insertMember(m);
		
		if(result > 0) {
			return "redirect:goMain.me";
		}else {
			model.addAttribute("msg", "회원 가입 실패!");
			
			return "must/errorPage";
		}
	}
	
}
