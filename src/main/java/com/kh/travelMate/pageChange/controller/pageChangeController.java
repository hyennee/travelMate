package com.kh.travelMate.pageChange.controller;

import java.io.IOException;
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
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;


//페이지 이동에 관한 모든 것은 여기서 사용
@Controller
public class pageChangeController {
	IamportClient client = new IamportClient("5297797561451640", "KRcAfNqO3pAQklrZuVACAZCG1wsNE5QpX2ZcPq1SPCJ9Xa8s6J4GIHnKeQxTVniSqi5fJ68zISIG3R89");
	@Autowired
	private mypageService ms;
	
	@RequestMapping("openPageSample.bo")
	public String sample()
	{
		return "board/openConsulting/ocDetail";
	}
	
	//여행정보게시판으로 이동
	@RequestMapping("travelInfo.me")
	public String showMemberJoinView() {
		return "others/about";
	}
	
	@RequestMapping("directConsult.me")
	public String directConsultView() {
		return "board/directCSList";
		/*return "board/insertDirectForm";*/
	}
	
	@RequestMapping("applyConsult.me")
	public String applyConsultnView() {
		return "others/applyConsult";
	}
	
	@RequestMapping("memberJoinView.me")
	public String memberJoinView() {
		return "member/memberJoin";
	}
	
	@RequestMapping("loginView.me")
	public String loginView() {
		return "member/login";
	}

	
	@RequestMapping("searchPasswordView.me")
	public String searchPasswordView(){
		return "member/searchPassword";
	}
	
	@RequestMapping("searchIdView.me")
	public String searchIdView(){
		return "member/searchId";
	}
	
	@RequestMapping("myInfo.me")
	public String myInfo()
	{
		return "mypage/myInfo";
	}
	
	@RequestMapping("modifyInfo.me")
	public String modifyInfo()
	{
		return "mypage/modifyInfo";
	}
	
	@RequestMapping("modifyPwd.me")
	public String modifyPwd()
	{
		return "mypage/modifyPwd";
	}
	
	@RequestMapping("Money.me")
	public String Money(Model model,HttpServletRequest request, HttpServletResponse response)
	{
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		List<HashMap<String,Object>> cyberMoney = ms.cyberMoneyHistory(loginUser);
		for(int i = 0 ; i < cyberMoney.size(); i++) {
			String pno = (String)cyberMoney.get(i).get("PROOF_NO");
			String temp = (String)cyberMoney.get(i).get("CHANGE_REASON");
			if(pno.contains("imp")) {
				cyberMoney.get(i).replace("CHANGE_REASON", "카드 " + temp);
			}else {
				cyberMoney.get(i).replace("CHANGE_REASON", "현금 " + temp);
			}
		}
		
		loginUser.setCybermoney(ms.cyberMoney(loginUser.getUser_no()));
		model.addAttribute("loginUser", loginUser);
		model.addAttribute("cyberMoney", cyberMoney);
		model.addAttribute("msg", request.getParameter("msg"));
		return "mypage/Money";
	}
	
	@RequestMapping("oneByOneQnA.me")
	public String oneByOneQnA(Model model,HttpServletRequest request, HttpServletResponse response)
	{
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		List<HashMap<String,Object>> oneByOne = ms.oneByOneHistory(loginUser);
		
		model.addAttribute("oneByOne", oneByOne);
		return "mypage/oneByOneQnA";
	}
	
	@RequestMapping("tradeHistory.me")
	public String tradeHistory(Model model,HttpServletRequest request, HttpServletResponse response)
	{
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		List<HashMap<String,Object>> tradeInfo = ms.tradeInfoHistory(loginUser);
		model.addAttribute("tradeInfo", tradeInfo);
		return "mypage/tradeHistory";
	}
	
	@RequestMapping("consultingCustomer.me")
	public String consultingCustomer(Model model,HttpServletRequest request)
	{
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		List<HashMap<String,Object>> consultingCustomer = ms.consultingCustomerHistory(loginUser);
		
		model.addAttribute("consultingCustomer", consultingCustomer);
		return "mypage/consultingCustomer";
	}
	
	@RequestMapping("consultingManual.me")
	public String consultingManual()
	{
		return "mypage/consultingManual";
	}
	
	//이메일 인증 
		@RequestMapping("mailAuthView.me")
		public String authMailView() {
			return "member/mailAuth";
		}
		
	@RequestMapping("insertDirectForm.me")
		public String insertDirectForm() {
		return "board/insertDirectForm";
	}
	
	@RequestMapping("charge.mp")
	public String charge() {
	return "cyberMoney/charge";
	}
	
	@RequestMapping("detailTrade.bo")
	public String detailTrade()
	{
		return "mypage/detailTrade";
	}
	
	/*@RequestMapping("naverlogin.me")
	public String goNaverLogin() {
		return "member/naverlogin";
	}*/
	
	@RequestMapping("callback.me")
	public String callback() {
		return "member/callback";
	}
	
}
