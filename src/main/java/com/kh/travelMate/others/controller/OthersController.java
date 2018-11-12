package com.kh.travelMate.others.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.travelMate.others.model.service.OthersService;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Controller
public class OthersController {
	
	@Autowired
	public OthersService os;
	
	@RequestMapping("insertConsultApply.others")
	public String insertCONSULT_APPLY(ConsultApply ca, Model model, HttpServletRequest request, @RequestParam(name="FILE", required=false) MultipartFile file)
	{	
		/*System.out.println("왜 안될까");
		System.out.println("ca : " + ca);
		System.out.println("file : " + file);*/
		
		String root = request.getSession().getServletContext().getRealPath("resources");		//경로 지정
		/*System.out.println("root : " + root);*/
		String filePath = root + "\\uploadFiles";												//파일 경로(resources/uploadfiles)
		System.out.println("path : " + filePath);
		String originFileName = file.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));					//확장자 분리
		String changeFileName = UUID.randomUUID().toString().replaceAll("-", "");				//파일명 변경
		
		try
		{
			file.transferTo(new File(filePath + "\\" + changeFileName + ext));
			ca.setFILE(changeFileName);
			
			
			os.insertCONSULT_APPLY(ca);
			
			return "others/applyConsultComplete";
		}
		catch (Exception e)
		{
			new File(filePath + "\\" + changeFileName + ext).delete();
			
			model.addAttribute("msg", "파일 업로드 실패");
			
			return "must/errorPage";
		}
	}
	
	@RequestMapping("insertConsultRequest.others")
	public String insertConsultRequest(ConsultRequest cr, Model model)
	{
		os.insertConsultRequest(cr);
		
		return "others/applyConsultComplete";
	}
}
