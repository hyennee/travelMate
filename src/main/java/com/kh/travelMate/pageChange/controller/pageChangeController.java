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
	
	@RequestMapping("openConsult.me")
	public String openConsultView() {
		return /*"others/blog";*/ "others/openconsulting";
	}
	
	@RequestMapping("directConsult.me")
	public String directConsultView() {
		return "others/contact";
	}
	
	@RequestMapping("applyConsult.me")
	public String applyConsultnView() {
		return "others/contact";
	}
	
	@RequestMapping("serviceCenter.me")
	public String serviceCenterView() {
		return "board/serviceCenter/serviceCenter";
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
}
