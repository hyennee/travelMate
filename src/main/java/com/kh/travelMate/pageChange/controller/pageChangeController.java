package com.kh.travelMate.pageChange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//페이지 이동에 관한 모든 것은 여기서 사용
@Controller
public class pageChangeController {
	
	//여행정보게시판으로 이동
	@RequestMapping("travelInfo.me")
	public String showMemberJoinView() {
		return "others/about";
	}
	
	@RequestMapping("openConsult.bo")
	public String openConsultView() {
		return /*"others/blog";*/ "board/openconsulting";
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
	public String Money()
	{
		return "mypage/Money";
	}
	
	@RequestMapping("oneByOneQnA.me")
	public String oneByOneQnA()
	{
		return "mypage/oneByOneQnA";
	}
	
	@RequestMapping("tradeHistory.me")
	public String tradeHistory()
	{
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
