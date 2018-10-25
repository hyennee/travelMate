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
		return "others/blog";
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
		/*return "others/serviceCenter";*/
		/*return "board/serviceCenter/noticeDetail";*/
		/*return "board/serviceCenter/questionList";*/
		return "board/serviceCenter/questionDetail";
	}
	
}
