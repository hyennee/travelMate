package com.kh.travelMate.member.controller;

import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.travelMate.mail.model.service.MailService;
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
	@Autowired
	private MailService mailService;

	// 메인페이지로
	@RequestMapping("goMain.me")
	public String goMain() {
		return "must/main"; // 메인페이지로 포워드함
	}

	// 로그인
	@RequestMapping("login.me")
	public String loginCheck(Member m, Model model) {

		try {
			Member loginUser = ms.loginCheck(m); // 평문하고 비교를 해야해서 평문을 그냥 보냄

			// 모든 작업이 성공일때
			model.addAttribute("loginUser", loginUser);

			// 관리자일 때 관리자 페이지로 리턴
			if (loginUser.getUser_type().equals("ADMIN")) {
				System.out.println("loginUser" + loginUser);
				return "redirect:admin/admin.main";
			}

			// 탈퇴회원 처리
			if (loginUser.getUser_type_level().equals("탈퇴회원")) {

				return "member/reLogin";
			}

			// 임시비밀번호 발급받은 아이디 로그인 처리
			if (loginUser.getJoin_status().equals("U")) {
				return "member/searchModifyPwd";
			}

			System.out.println("loginUser : " + loginUser);

			return "redirect:goMain.me";
		} catch (LoginException e) {

			model.addAttribute("msg", e.getMessage());

			return "member/login";
		}

	}

	// 로그아웃
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

		for (int i = 1; i <= 9; i++) {
			if (birth2.equals(String.valueOf(i))) {
				birth2 = String.format("%02d", Integer.parseInt(birth2));
			}
		}

		for (int i = 1; i <= 9; i++) {
			if (birth3.equals(String.valueOf(i))) {
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

		if (result > 0) {
			System.out.println("m객체 : " + m);
			return "redirect:goMain.me";
		} else {
			model.addAttribute("msg", "회원 가입 실패!");

			return "must/errorPage";
		}
	}

	// 아이디(이메일형식) 유효성 검사 후 중복체크
	@ResponseBody
	@RequestMapping("selectDuplChkId.me")
	public String selectDuplChkId(/* @ModelAttribute("m") */@RequestParam(value = "chkIdVal") String email, Member m,
			Model model) {

		System.out.println(email);
		int result = ms.selectDuplChkId(email);

		return String.valueOf(result);
	}

	// 닉네임 유효성 검사 후 중복체크
	@ResponseBody
	@RequestMapping("selectDuplChkNick.me")
	public String selectDuplChkNick(@RequestParam(value = "chkNickVal") String nick_name, Member m, Model model) {

		System.out.println(nick_name);

		int result = ms.selectDuplChkNick(nick_name);

		return String.valueOf(result);
	}

	// 이메일 인증
	@ResponseBody
	@RequestMapping("authMail.me")
	public boolean authMail(HttpSession session, @RequestParam(value = "email") String email, Model model) {

		System.out.println("email임 :" + email);
		int randomCode = new Random().nextInt(1000000); // 인증번호 7자리 1~1000000까지 랜덤으로 승인코드 발생시킴
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);

		String subject = "안녕하세요! TravelMate 회원가입 승인 코드입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("\n");
		sb.append("\n");
		sb.append("TravleMate 회원가입 승인 코드입니다.");
		sb.append("\n");
		sb.append("\n");
		sb.append("회원가입 승인코드는 ").append(joinCode).append(" 입니다.");
		sb.append("\n");
		sb.append("\n");
		sb.append("인증을 진행해주세요.");
		sb.append("\n");
		sb.append("\n");

		model.addAttribute("joinCode", joinCode);
		return mailService.send(subject, sb.toString(), "ejkim1111@gmail.com", email);
	}

	@ResponseBody
	@RequestMapping("selectSearchPwd.me")
	public String selectSearchPwd(@RequestParam(value = "user_name") String user_name,
			@RequestParam(value = "email") String email, Member m, Model model) {
		System.out.println(user_name);
		System.out.println(email);

		m.setUser_name(user_name);
		m.setEmail(email);

		int result = ms.selectSearchUser(m);

		return String.valueOf(result);

	}

	// 임시 비밀번호 발급하기
	@ResponseBody
	@RequestMapping("sendPwdMail.me")
	public boolean sendPwdMail(HttpSession session, @RequestParam(value = "email") String email, Model model,
			Member m) {

		System.out.println("email임 :" + email);

		// 임시비밀번호 생성
		String randomPwd = "";
		for (int i = 0; i < 5; i++) {
			randomPwd = UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거
			randomPwd = randomPwd.substring(0, 10); // 랜덤코드를 앞에서부터 10자리 잘라줌.

		}

		System.out.println(randomPwd);
		// 비밀번호를 비크립트로 암호화함
		String encPassword = passwordEncoder.encode(randomPwd);

		// 사용자가 입력한 이메일과 임시 비밀번호를 member객체에 넣기
		m.setEmail(email);
		m.setPassword(encPassword);

		int result = ms.updatePwd(m); // member객체를 전달하기! 임시비밀번호로 업데이트!
		/* session.setAttribute("randomPwd", randomPwd); */

		if (result > 0) {

		}

		String subject = "안녕하세요! TravelMate 임시 비밀번호입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("\n");
		sb.append("\n");
		sb.append("TravleMate 임시 비밀번호입니다.");
		sb.append("\n");
		sb.append("\n");
		sb.append("임시 비밀번호는 ").append(randomPwd).append(" 입니다.");
		sb.append("\n");
		sb.append("\n");
		sb.append("확인 후 로그인을 진행해주세요.");
		sb.append("\n");
		sb.append("\n");

		/* model.addAttribute("randomPwd", randomPwd); */
		return mailService.send(subject, sb.toString(), "ejkim1111@gmail.com", email);

	}

	@ResponseBody
	@RequestMapping("naverlogin.me")
	public String naverlogin(Model model, Member m, @RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "user_name", required = false) String user_name,
			@RequestParam(value = "nickname", required = false) String nick_name,
			@RequestParam(value = "gender", required = false) String gender,
			@RequestParam(value = "birthday", required = false) String birthday) {

		if (birthday == null || birthday.length() == 0) {
			birthday = "";
		}
		System.out.println(email);
		System.out.println(user_name);
		System.out.println(nick_name);
		System.out.println(gender);
		System.out.println(birthday);

		String birthday2 = birthday.replaceAll("-", "");

		System.out.println(birthday2);

		if (user_name == null || user_name.length() == 0) {
			user_name = "";
		}
		if (nick_name == null || nick_name.length() == 0) {
			nick_name = "";
		}

		if (gender == null || gender.length() == 0) {
			gender = "";
		}
		m.setUser_name(user_name);
		m.setEmail(email);
		m.setNick_name(nick_name);
		m.setGender(gender);
		m.setBirthday(birthday2);

		Member loginUser = ms.naverlogincheck(m);

		if (loginUser == null) { // 네이버로 가입한 유저의 정보가 없을 시
			int result = ms.insertNaverMember(m); // 회원가입 진행

			if (result > 0) {// 인서트한 결과가 있을 시 다시 로그인!
				Member loginUser2 = ms.naverlogincheck(m);
				System.out.println(loginUser2);
				model.addAttribute("loginUser", loginUser2);
				return "redirect:goMain.me";
			}

		}

		// 네이버로 가입한 유저의 정보가 있을 시 로그인 진행!
		System.out.println(loginUser);
		model.addAttribute("loginUser", loginUser);
		return "redirect:goMain.me";

	}

	@ResponseBody
	@RequestMapping("kakaologin.me")
	public String kakaologin(@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "nick_name", required = false) String nick_name,
			@RequestParam(value = "gender", required = false) String gender,
			@RequestParam(value = "birthday", required = false) String birthday, Model model, Member m) {

		System.out.println(email);
		System.out.println(nick_name);
		System.out.println(gender);
		System.out.println(birthday);

		if (nick_name == null || nick_name.length() == 0) {
			nick_name = "";
		}

		if (gender == null || gender.length() == 0) {
			gender = "";

		}

		if (gender.equals("female")) {
			gender = "F";
		}
		if (gender.equals("male")) {
			gender = "M";
		}

		if (birthday == null || birthday.length() == 0) {
			birthday = "";
		}

		String email2 = email.replace("\"", "");
		String nick_name2 = nick_name.replace("\"", "");
		String gender2 = gender.replace("\"", "");
		String birthday2 = birthday.replace("\"", "");

		m.setEmail(email2);
		m.setNick_name(nick_name2);
		m.setGender(gender2);
		m.setBirthday(birthday2);

		Member loginUser = ms.kakaologincheck(m);

		if (loginUser == null) { // 카카오로 가입한 유저의 정보가 없을 시
			int result = ms.insertKakaoMember(m); // 회원가입 진행

			if (result > 0) { // 인서트한 결과가 있을 경우 다시 로그인
				Member loginUser2 = ms.kakaologincheck(m);
				System.out.println(loginUser2);
				model.addAttribute("loginUser", loginUser2);
				return "redirect:goMain.me";
			}

		}

		// 카카오로 가입한 유저의 정보가 있을 시 로그인 진행!
		System.out.println(loginUser);
		model.addAttribute("loginUser", loginUser);
		return "redirect:goMain.me";

	}

	@ResponseBody
	@RequestMapping("selectModifyPwd.me")
	public String selectModifyPwd(@RequestParam(value="curr_pwd") String curr_pwd, Model model, Member m,
			HttpServletRequest request) {

		Member loginUser = (Member) (request.getSession().getAttribute("loginUser"));
		System.out.println("현재비밀번호 : " + curr_pwd);
		System.out.println("user_no : " + loginUser.getUser_no());
		
		m.setUser_no(loginUser.getUser_no());

		//1. 암호화 된 비밀번호를 조회해오기
		String selectPwd = ms.selectModifyPwd(m);
			
		System.out.println(selectPwd);
		/*String curEncPwd = passwordEncoder.encode(curr_pwd);*/

		//2. 조회해온 암호화 된 비밀번호와 평문 비밀번호를 비교해본다.
		if (!passwordEncoder.matches(curr_pwd, selectPwd)) { //인코딩 할 필요없이 matches 메소드에서 알아서 솔팅된 것을 해석해주어 비교가 가능하다. 위치 중요
			System.out.println("실패");
			return String.valueOf("0"); // 0 실패

		} else {
			return String.valueOf("1"); // 1 성공

		}

	}

	@ResponseBody
		@RequestMapping("changeModifyPwd.me")
		public String changeModifyPwd(@RequestParam(value="change_pwd") String change_pwd, Member m, Model model, HttpServletRequest request) {
		
		Member loginUser = (Member) (request.getSession().getAttribute("loginUser"));
	
		m.setUser_no(loginUser.getUser_no());
		String encPassword = passwordEncoder.encode(change_pwd);
		m.setPassword(encPassword);
		
		int result = ms.updateModifyPwd(m);
		
		if(result > 0) {
			return String.valueOf("1"); //업데이트 성공
		}else {
			return String.valueOf("0"); //업데이트 실패
		}
		
	}
	
	// 임시비밀번호 수정 후 로그아웃
	@RequestMapping("logout2.me")
	public String logout2(SessionStatus status) {
		status.setComplete();

		return "redirect:loginView.me";
	}

	
}
