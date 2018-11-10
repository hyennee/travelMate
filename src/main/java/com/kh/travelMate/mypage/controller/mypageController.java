package com.kh.travelMate.mypage.controller;



import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
}
