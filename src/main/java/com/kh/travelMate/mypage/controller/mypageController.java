package com.kh.travelMate.mypage.controller;



import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.service.mypageService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class mypageController {
	@Autowired
	private mypageService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	
	IamportClient client = new IamportClient("5297797561451640", "KRcAfNqO3pAQklrZuVACAZCG1wsNE5QpX2ZcPq1SPCJ9Xa8s6J4GIHnKeQxTVniSqi5fJ68zISIG3R89");

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
	public String modifyInfoView(Member mem,HttpServletRequest request, Model model) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));


		//		의존성 주입 안했을때 이거 씀
		//		String birthday = request.getParameter("birthday");
		//		String phone = request.getParameter("phone");
		//		String nick_name = request.getParameter("nick_name");
		//		String address = request.getParameter("address");

		ms.modifyInfo(mem);
		loginUser.setNick_name(mem.getNick_name());
		loginUser.setPhone(mem.getPhone());
		loginUser.setBirthday(mem.getBirthday());


		System.out.println(mem.toString());

		//세션만 새로  
		//모든 작업이 성공일때
		request.getSession().setAttribute("loginUser",loginUser);




		//		mem.setUser_no(loginUser.getUser_no());
		//		mem.setBirthday(birthday);
		//		mem.setPhone(phone);
		//		mem.setNick_name(nick_name);

		//		System.out.println(loginUser.getUser_no());
		//		System.out.println(mem.getBirthday());
		//		System.out.println(mem.getPhone());
		//		System.out.println(mem.getNick_name());
		/*Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));*/


		//System.out.println(ms.modifyInfo(m));


		return "mypage/modifyInfo";


	}

	@ResponseBody
	@RequestMapping("nickNameCheck.me")
	public String nickNameCheck(@RequestParam(value="nick_name")String nick_name, Member m, Model model) {

		System.out.println(nick_name);

		int result = ms.nickNameCheck(nick_name);

		return String.valueOf(result);
	}

	@ResponseBody
	@RequestMapping("insertCyberMoney.me")
	public String insertCyberMoney(@RequestParam(value="money")String money, @RequestParam(value="imp_uid")String imp_uid, HttpServletRequest request) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		System.out.println("imp_uid : " + imp_uid);

		ms.insertCyberMoney(Integer.parseInt(money), loginUser, imp_uid);

		return "redirect:Money.me";
	}

	@RequestMapping("insertCyberMoney2.me")
	public String insertCyberMoney2(@RequestParam(value="money")String money, @RequestParam(value="imp_uid")String imp_uid, HttpServletRequest request) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		System.out.println("imp_uid : " + imp_uid);
		String test_already_cancelled_imp_uid = imp_uid;
		CancelData cancel_data = new CancelData(test_already_cancelled_imp_uid, true); //imp_uid를 통한 전액취소

		try {
			IamportResponse<Payment> payment_response = client.cancelPaymentByImpUid(cancel_data);

		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ms.insertCyberMoney2(Integer.parseInt(money), loginUser, imp_uid);


		return "redirect:Money.me";
	}
	
	//비밀번호 일치하는지 확인하기
	@RequestMapping("checkPwd.me")
	public String checkPwd(Member m, Model model, HttpServletRequest request) {
			
			Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
			String pwd = request.getParameter("pwd");
			String chg_pwd1 = request.getParameter("chg_pwd1");
			System.out.println(pwd);
			System.out.println(chg_pwd1);//
			int user_no = loginUser.getUser_no();
			System.out.println(user_no);
			
			
			String encPassword = passwordEncoder.encode(pwd);
			String encChg_pwd = passwordEncoder.encode(chg_pwd1);
			
			/*m.setPassword(encPassword);*/
			m.setUser_no(loginUser.getUser_no());
			
			String selectPwd = ms.checkpwd(m);
			
			if(encPassword.equals(selectPwd)) {
				
				m.setPassword(encChg_pwd);
				
				int result = ms.updatepwd(m);
				
				
			}
			
			//패스워드 받은거 pwd에 넣기
			/*String chg_pwd1 = request.getParameter("chg_pwd1");
			System.out.println(chg_pwd1);*/
			
			
			
			try {
				
				//매번 랜덤한 솔트값을 가지고 암호화를 하기 때문에 호출시마다 다이제스트값은 바뀌게 된다.
				//스프링 시큐리티에서 match()메소드를 제공해준다.
				//평문과 암호화된 문장이 일치하는지 여부만 true, false로 제공
				
				String check = ms.checkpwd(m);
				
				System.out.println("pwd :  " + pwd + "  /  check :  " + check);
				
				if(pwd.equals(check)) {
					
					m.setPassword(encChg_pwd);
					int updatepwd = ms.updatepwd(m);
					System.out.println("updatepwd : " + updatepwd);
				}
				
				model.addAttribute("loginUser", loginUser);
				
				return "redirect:goMain.me";
				
			} catch (Exception e) {
				model.addAttribute("msg", e.getMessage());
				
				return "common/errorPage";
				
			}
			
			
			
		
			
			
			
//			Member loginUser = ms.checkPwd(); //평문하고 비교를 해야해서 평문을 그냥 보냄
			
//			model.addAttribute("loginUser", loginUser);
			 			
//			System.out.println("loginUser : " + loginUser);
	}
/*
	// 임시 비밀번호 발급하기
	@ResponseBody
	@RequestMapping("")
	public boolean sendPwdMail(HttpSession session, @RequestParam(value="email")String email, Model model, Member m) {

		System.out.println("email임 :" + email);

		//임시비밀번호 생성
		String randomPwd = "";
		for(int i = 0; i< 5; i++) {
			randomPwd = UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거
			randomPwd = randomPwd.substring(0, 10); //랜덤코드를 앞에서부터 10자리 잘라줌.

		}


		System.out.println(randomPwd);
		//비밀번호를 비크립트로 암호화함
		String encPassword = passwordEncoder.encode(randomPwd);

		//사용자가 입력한 이메일과 임시 비밀번호를 member객체에 넣기
		m.setEmail(email);
		m.setPassword(encPassword);

		int result = ms.updatePwd(m); //member객체를 전달하기! 임시비밀번호로 업데이트!
		session.setAttribute("randomPwd", randomPwd);

		if(result > 0) {



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

		model.addAttribute("randomPwd", randomPwd);
		return mailService.send(subject, sb.toString(), "ejkim1111@gmail.com", email);

	}*/
}
