package com.kh.travelMate.others.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.others.model.service.OthersService;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Controller
public class OthersController {
	
	@Autowired
	public OthersService os;
	
	@RequestMapping("insertConsultApply.others")
	public String insertCONSULT_APPLY(ConsultApply ca, Model model, HttpServletRequest request, @RequestParam(name="FILE_PATH", required=false) MultipartFile file)
	{	
		String root = request.getSession().getServletContext().getRealPath("resources");		//경로 지정
		String filePath = root + "\\uploadFiles";												//파일 경로(resources/uploadfiles)
		System.out.println("path : " + filePath);
		String originFileName = file.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));					//확장자 분리
		String changeFileName = UUID.randomUUID().toString().replaceAll("-", "");				//파일명 변경
		
		try
		{
			file.transferTo(new File(filePath + "\\" + changeFileName + ext));
			
			Attachment attachment = new Attachment();
			
			attachment.setFileRoot(filePath);
			attachment.setOriginName(originFileName);
			attachment.setModifyName(changeFileName);
			
			os.insertCONSULT_APPLY(ca, attachment);
			
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
	public String insertConsultRequest(ConsultRequest cr, Model model, HttpServletRequest request)
	{
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		
		loginUser.setCybermoney(loginUser.getCybermoney()-2000);
		request.getSession().setAttribute("loginUser", loginUser);
		os.insertConsultRequest(cr);
		
		return "others/applyConsultComplete";
	}
}