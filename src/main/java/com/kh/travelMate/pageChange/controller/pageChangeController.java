package com.kh.travelMate.pageChange.controller;

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


//페이지 이동에 관한 모든 것은 여기서 사용
@Controller
public class pageChangeController {
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
		return "board/insertDirectForm";
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
	
	@RequestMapping("goMapView.map")
	public String goMapView()
	{
		return "others/mapExample";
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
		model.addAttribute("cyberMoney", cyberMoney);
		
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
	public String consultingCustomer()
	{
		return "mypage/consultingCustomer";
	}
	
	@RequestMapping("consultingManual.me")
	public String consultingManual()
	{
		return "mypage/consultingManual";
	}
}
