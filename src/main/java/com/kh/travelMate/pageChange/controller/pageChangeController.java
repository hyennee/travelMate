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
	
	@RequestMapping("selectList.bo")
	public String faqView()
	{
		return "board/serviceCenter/faq";
	}

	@RequestMapping("mypage.me")
	public String mypageView() {
		return "mypage/mypagemain";
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
}
