package com.kh.travelMate.travelDetail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//여행정보 상세보기
@Controller
public class detailChangeController {
	
	//이동
	@RequestMapping("taipei.bo")
	public String showTaipeiView() {
		return "detail/taipei";
	}
	
	@RequestMapping("hanoi.bo")
	public String showHanoiView() {
		return "detail/hanoi";
	}
	
	@RequestMapping("hongkong.bo")
	public String showHongkongView() {
		return "detail/hongkong";
	}
	
	@RequestMapping("detailTaipei1.bo")
	public String showTaipeiDetail1View() {
		return "detail/taipei/detail1";
	}
	
	@RequestMapping("detailTaipei2.bo")
	public String showTaipeiDetail2View() {
		return "detail/taipei/detail2";
	}
	
	@RequestMapping("detailTaipei3.bo")
	public String showTaipeiDetail3View() {
		return "detail/taipei/detail3";
	}
	
	@RequestMapping("detailTaipei4.bo")
	public String showTaipeiDetail4View() {
		return "detail/taipei/detail4";
	}
	
	@RequestMapping("detailHanoi1.bo")
	public String showHanoiDetail1View() {
		return "detail/hanoi/detail1";
	}
	
	@RequestMapping("detailHanoi2.bo")
	public String showHanoiDetail2View() {
		return "detail/hanoi/detail2";
	}
	
	@RequestMapping("detailHanoi3.bo")
	public String showHanoiDetail3View() {
		return "detail/hanoi/detail3";
	}
	
	@RequestMapping("detailHanoi4.bo")
	public String showHanoiDetail4View() {
		return "detail/hanoi/detail4";
	}
	
	@RequestMapping("detailHongkong1.bo")
	public String showHongkongDetail1View() {
		return "detail/hongkong/detail1";
	}
	
	@RequestMapping("detailHongkong2.bo")
	public String showHongkongDetail2View() {
		return "detail/hongkong/detail2";
	}
	
	@RequestMapping("detailHongkong3.bo")
	public String showHongkongDetail3View() {
		return "detail/hongkong/detail3";
	}
	
	@RequestMapping("detailHongkong4.bo")
	public String showHongkongDetail4View() {
		return "detail/hongkong/detail4";
	}
}
