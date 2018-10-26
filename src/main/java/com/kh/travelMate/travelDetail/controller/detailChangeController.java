package com.kh.travelMate.travelDetail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//여행정보 상세보기
@Controller
public class detailChangeController {
	
	//이동
	@RequestMapping("taipei.me")
	public String showTaipeiView() {
		return "detail/taipei";
	}
	
	@RequestMapping("hanoi.me")
	public String showHanoiView() {
		return "detail/hanoi";
	}
	
	@RequestMapping("hongkong.me")
	public String showHongkongView() {
		return "detail/hongkong";
	}
	
	@RequestMapping("detailHongkong1.me")
	public String showHongkongDetail1View() {
		return "detail/hongkong/detail1";
	}
	
	@RequestMapping("detailHongkong2.me")
	public String showHongkongDetail2View() {
		return "detail/hongkong/detail2";
	}
	
	@RequestMapping("detailHongkong3.me")
	public String showHongkongDetail3View() {
		return "detail/hongkong/detail3";
	}
	
	@RequestMapping("detailHongkong4.me")
	public String showHongkongDetail4View() {
		return "detail/hongkong/detail4";
	}
}
