package com.kh.travelMate.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	
	//메인페이지로
	@RequestMapping("goMain.me")
	public String goMain() {
		return "must/main"; //메인페이지로 포워드함
	}

	
	
	//로그인
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {
		
		try {
			Member loginUser = ms.loginCheck(m); //평문하고 비교를 해야해서 평문을 그냥 보냄
			
			//모든 작업이 성공일때
			model.addAttribute("loginUser", loginUser);
			
			//관리자일 때 관리자 페이지로 리턴
			if(loginUser.getUser_type().equals("ADMIN")) {
				System.out.println("loginUser" + loginUser);
				return "admin/adminIndex";
			}
			
			System.out.println("loginUser : " + loginUser);
			
			return "redirect:goMain.me";
		} catch (LoginException e) {
			
			model.addAttribute("msg", e.getMessage());
			
			return "member/reLogin";
		}
		
	}
	
	
	//로그아웃
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

	
		for(int i = 1; i <= 9; i++) {
			if(birth2.equals(String.valueOf(i))){
			birth2 = String.format("%02d", Integer.parseInt(birth2));
			}	
			}
			
		
		for(int i = 1; i <= 9; i++) {
			if(birth3.equals(String.valueOf(i))){
				birth3 = String.format("%02d", Integer.parseInt(birth3));
			}
		}
	
		String birthday = (birth1 + birth2 + birth3).substring(2);
		
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
			System.out.println("m객체 : " + m);
			return "redirect:goMain.me";
		}else {
			model.addAttribute("msg", "회원 가입 실패!");
			
			return "must/errorPage";
		}
	}
	
	//아이디(이메일형식) 유효성 검사 후 중복체크
	@ResponseBody
	@RequestMapping("selectDuplChkId.me")
	public String selectDuplChkId(/*@ModelAttribute("m")*/@RequestParam(value="chkIdVal")String email, Member m, Model model) {
		
		System.out.println(email);
		int result = ms.selectDuplChkId(email);
		
		return String.valueOf(result);
	}
	
	//닉네임 유효성 검사 후 중복체크
	@ResponseBody
	@RequestMapping("selectDuplChkNick.me")
	public String selectDuplChkNick(@RequestParam(value="chkNickVal")String nick_name, Member m, Model model) {
		
		System.out.println(nick_name);
		
		int result = ms.selectDuplChkNick(nick_name);
		
		return String.valueOf(result);
	}
	
}
