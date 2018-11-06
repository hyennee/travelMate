package com.kh.travelMate.others.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.travelMate.others.model.service.OthersService;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Controller
public class OthersController {
	
	@Autowired
	public OthersService os;
	
	@RequestMapping("insertConsultApply.others")
	public String insertCONSULT_APPLY(ConsultApply ca, Model model)
	{
		
		os.insertCONSULT_APPLY(ca);
		
		return "others/applyConsultComplete";
	}
	
	@RequestMapping("insertConsultRequest.others")
	public String insertConsultRequest(ConsultRequest cr, Model model)
	{
		os.insertConsultRequest(cr);
		
		return "others/applyConsultComplete";
	}
}
