package com.kh.travelMate.mypage.controller;



import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.service.mypageService;
import com.kh.travelMate.mypage.model.vo.Withdraw;
import com.kh.travelMate.others.model.vo.ConsultRequest2;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class mypageController {
	@Autowired
	private mypageService ms;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;


	IamportClient client = new IamportClient("5297797561451640", "KRcAfNqO3pAQklrZuVACAZCG1wsNE5QpX2ZcPq1SPCJ9Xa8s6J4GIHnKeQxTVniSqi5fJ68zISIG3R89");

	@RequestMapping("mypage.me")
	public String mypageView(Model model,HttpServletRequest request, HttpServletResponse response) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		List<HashMap<String,Object>> tradeInfo = ms.tradeInfoHistory(loginUser);
		List<HashMap<String,Object>> oneByOne = ms.oneByOneHistory(loginUser);
		List<HashMap<String,Object>> cyberMoney = ms.cyberMoneyHistory(loginUser);
		List<HashMap<String,Object>> openConsulting = ms.openConsulting(loginUser);

		//request.setAttribute("cyberMoney", cyberMoney);
		model.addAttribute("cyberMoney", cyberMoney);
		model.addAttribute("oneByOne", oneByOne);
		model.addAttribute("tradeInfo", tradeInfo);
		model.addAttribute("openConsulting", openConsulting);
		
		return "mypage/mypagemain";
	}

	@RequestMapping("modifyMyInfo.me")
	public String modifyInfoView(Member mem,HttpServletRequest request, Model model) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));


		//		의존성 주입 안했을때 이거 씀
		//		String birthday = request.getParameter("birthday");
		//		String phone = request.getParameter("phone");
		//		String nick_name = request.getParameter("nick_name");
		//		String address = request.getParameter("address");

		ms.modifyInfo(mem);
		loginUser.setNick_name(mem.getNick_name());
		loginUser.setPhone(mem.getPhone());
		loginUser.setBirthday(mem.getBirthday());


		System.out.println(mem.toString());

		//세션만 새로  
		//모든 작업이 성공일때
		request.getSession().setAttribute("loginUser",loginUser);




		//		mem.setUser_no(loginUser.getUser_no());
		//		mem.setBirthday(birthday);
		//		mem.setPhone(phone);
		//		mem.setNick_name(nick_name);

		//		System.out.println(loginUser.getUser_no());
		//		System.out.println(mem.getBirthday());
		//		System.out.println(mem.getPhone());
		//		System.out.println(mem.getNick_name());
		/*Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));*/


		//System.out.println(ms.modifyInfo(m));


		return "mypage/modifyInfo";


	}

	@ResponseBody
	@RequestMapping("nickNameCheck.me")
	public String nickNameCheck(@RequestParam(value="nick_name")String nick_name, Member m, Model model) {

		System.out.println(nick_name);

		int result = ms.nickNameCheck(nick_name);

		return String.valueOf(result);
	}

	@ResponseBody
	@RequestMapping("insertCyberMoney.me")
	public String insertCyberMoney(@RequestParam(value="money")String money, @RequestParam(value="imp_uid")String imp_uid, HttpServletRequest request) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		System.out.println("imp_uid : " + imp_uid);
		ms.insertCyberMoney(Integer.parseInt(money), loginUser, imp_uid);
		return "redirect:Money.me";
	}

	@ResponseBody
	@RequestMapping("insertCyberMoney3.me")
	public String insertCyberMoney3(@RequestParam(value="money")String money, @RequestParam(value="account_name")String account_name,@RequestParam(value="account_no")String account_no, HttpServletRequest request) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		System.out.println("account_name : " + account_name);
		System.out.println("account_no : " + account_no);
		ms.insertCyberMoney3(Integer.parseInt(money), loginUser, account_name, account_no);
		return "redirect:Money.me";
	}

	@RequestMapping("insertCyberMoney2.me")
	public String insertCyberMoney2(@RequestParam(value="money")String money, @RequestParam(value="imp_uid")String imp_uid, Model model,  HttpServletRequest request) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));

		System.out.println(loginUser);
		System.out.println("번호 : " + loginUser.getUser_no());

		System.out.println("imp_uid : " + imp_uid);
		String test_already_cancelled_imp_uid = imp_uid;
		CancelData cancel_data = new CancelData(test_already_cancelled_imp_uid, true); //imp_uid를 통한 전액취소

		if(imp_uid.contains("imp")) {
			try {
				IamportResponse<Payment> payment_response = client.cancelPaymentByImpUid(cancel_data);
				if(payment_response.getResponse() != null) {
					ms.insertCyberMoney2(Integer.parseInt(money), loginUser, imp_uid);
					return "redirect:Money.me";
				}
			} catch (IamportResponseException e) {
				System.out.println(e.getMessage());

				switch(e.getHttpStatusCode()) {
				case 401 :
					//TODO
					break;
				case 500 :
					//TODO
					break;
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			ms.insertCyberMoney4(Integer.parseInt(money), loginUser, imp_uid);
			return "redirect:Money.me";
		}

		model.addAttribute("msg", "이미 환불 완료된 거래입니다.");
		return "redirect:Money.me";
	}

	//비밀번호 일치하는지 확인하기
	@RequestMapping("checkPwd.me")
	public String checkPwd(Member m, Model model, HttpServletRequest request) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		String pwd = request.getParameter("pwd");
		String chg_pwd1 = request.getParameter("chg_pwd1");
		System.out.println(pwd);
		System.out.println(chg_pwd1);//
		int user_no = loginUser.getUser_no();
		System.out.println(user_no);


		String encPassword = passwordEncoder.encode(pwd);
		String encChg_pwd = passwordEncoder.encode(chg_pwd1);

		/*m.setPassword(encPassword);*/
		m.setUser_no(loginUser.getUser_no());

		try {
			String check = ms.checkpwd(m);

			System.out.println("encPassword :  " + encPassword + "  /  check :  " + check);


			if(!passwordEncoder.matches(encPassword, check)) {
				m.setPassword(encChg_pwd);

				int updatepwd = ms.updatepwd(m);

				System.out.println("updatepwd : " + updatepwd);


				return "redirect:logout.me";
			}else {
				return "redirect:modifyPwd";
			}

		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());

			return "common/errorPage";

		}


	}




	//비밀번호 일치하는지 확인하고 status 탈퇴회원으로 변경
	@RequestMapping("checkPwd_cancel.me")
	public String checkPwd_cancel(Member m, Model model, HttpServletRequest request) {

		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		String pwd = request.getParameter("pwd");
		System.out.println(pwd);
		int user_no = loginUser.getUser_no();
		System.out.println(user_no);


		String encPassword = passwordEncoder.encode(pwd);
		m.setUser_no(loginUser.getUser_no());

		try {
			String check = ms.checkpwd(m);

			System.out.println("encPassword :  " + encPassword + "  /  check :  " + check);


			if(!passwordEncoder.matches(encPassword, check)) {

				int updateCancel = ms.updateCancel(m);

				System.out.println("updateCancel : " + updateCancel);


				return "redirect:logout.me";
			}else {
				return "redirect:modifyPwd";
			}

		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());

			return "common/errorPage";
		}
		}
	

		
		//컨설턴트 프로필 검색
		@RequestMapping("selectProfile.me")
		public String selectProfile(Model model, HttpServletRequest request) {
			Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
			int user_no = loginUser.getUser_no();
			HashMap<String, Object> result = ms.selectProfile(user_no);
			System.out.println(result);
			if(result != null) {
				System.out.println(user_no);
				result.put("fileName", ms.selectProfileAttachment(user_no));	
				System.out.println(result.get("fileName"));
				
			}else {
				result = new HashMap<String, Object>();
				result.put("content", "");
				result.put("title", "");
			}
			model.addAttribute("result", result);
			return "mypage/consultingManual";
			
			
		}
		
		
		//컨설턴트 프로필 등록
		@RequestMapping("insertProfile.me")
		public String insertProfile(Model model, HttpServletRequest request, @RequestParam(name="FILE_PATH", required=false) MultipartFile file,@RequestParam(value="content")String content,@RequestParam(value="title")String title) {
			Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
			String root = request.getSession().getServletContext().getRealPath("resources");		//경로 지정
			String filePath = root + "\\images\\profile";												//파일 경로(resources/uploadfiles)
			System.out.println("path : " + filePath);
			String originFileName = file.getOriginalFilename();
			System.out.println("originFileName : " + originFileName);
			String ext = originFileName.substring(originFileName.lastIndexOf("."));					//확장자 분리
			String changeFileName = loginUser.getNick_name();				//파일명 변경
			System.out.println("changeFileName : " + changeFileName);
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("user_no", loginUser.getUser_no());
			data.put("title", title);
			data.put("content", content);
			try
			{
				new File(filePath + "\\" + changeFileName + ext).delete();
				file.transferTo(new File(filePath + "\\" + changeFileName + ext));
				
				Attachment attachment = new Attachment();
				
				attachment.setFileRoot(filePath);
				attachment.setOriginName(originFileName);
				attachment.setModifyName(changeFileName);
				attachment.setRefNo(loginUser.getUser_no());
				ms.insertProfile(data, attachment);
				
				return "redirect:mypage.me";
			}
			catch (Exception e)
			{
				System.out.println(e);
				
				new File(filePath + "\\" + changeFileName + ext).delete();
				
				model.addAttribute("msg", "파일 업로드 실패");
				
				return "must/errorPage";
			}
		}

	

	//1:1문의게시판 상세보기
	@RequestMapping("selectOneByOneBoard.bo")
	public String selectOneByOneBoard(@RequestParam(value="boardNo")int boardNo, Model model, HttpServletRequest request) {

		//ModelAndView / String 로 포워딩 한다
		System.out.println("boardNo" + boardNo);
		//			String boardNo=request.getParameter("boardNo");
		Board result = ms.selectOneByOneBoard(boardNo);
		if(result != null) {

			model.addAttribute("board", result);

			System.out.println("b : " + result);
			return "mypage/detailOneByOneQnA";
		}else {
			System.out.println("에러");
			return "common/errorPage";

		}


	}

	//다이렉트컨설팅한 거래내역 상세보기
	@RequestMapping("selectOneTrade.mp")
	public String selectOneTrade(Model model, HttpServletRequest request, @RequestParam(value="CONSULT_REQUEST_NO")int CONSULT_REQUEST_NO) {

		System.out.println("CONSULT_REQUEST_NO : " +CONSULT_REQUEST_NO);

		ConsultRequest2 result = ms.selectOneTrade(CONSULT_REQUEST_NO);

		System.out.println("거래내역상세보기 : " + result);
		if( result != null ) {


			model.addAttribute("trade", result);
			
			System.out.println("trade_result : " + result);




			return "mypage/detailTrade";
		}
		else {

			System.out.println("에러");
			return "common/errorPage";
		}
	}
	
	
	//오픈컨설팅한 거래내역 상세보기
	@RequestMapping("selectOneOpenTrade.mp")
	public String selectOneOpenTrade(@RequestParam(value="BOARD_NO")int BOARD_NO, Model model, HttpServletRequest request) {

		//ModelAndView / String 로 포워딩 한다
		System.out.println("boardNo : " + BOARD_NO);
		//			String boardNo=request.getParameter("boardNo");
		HashMap<String, Object> result = ms.selectOneOpenTrade(BOARD_NO);
		if(result != null) {

			model.addAttribute("openConsulting", result);
      
    	System.out.println("openConsultingOne : " + result);
			return "mypage/detailOpenConsulting";
		}else {
			System.out.println("에러");
			return "common/errorPage";

		}


	}

	@RequestMapping("insertResponse.mp")
	public String insertResponse(Model model, HttpServletRequest request, @RequestParam(value="no")int CONSULT_REQUEST_NO, @RequestParam(value="content")String content) {
		Member loginUser = (Member)(request.getSession().getAttribute("loginUser"));
		System.out.println("CONSULT_REQUEST_NO : " +CONSULT_REQUEST_NO);
		System.out.println("content : " + content);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("no", CONSULT_REQUEST_NO);
		map.put("content", content);
		map.put("user_no", loginUser.getUser_no());
		int result = ms.insertResponse(map);

		System.out.println("거래내역상세보기 : " + result);
		if( result > 0 ) {
			return "redirect:consultingCustomer.me";
		}
		else {

			System.out.println("에러");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("insertWithdraw.me")
	public String insertWithdraw(Withdraw w) {
		System.out.println("insertWithdraw : " + w);
		
		int result = ms.insertWithdraw(w);
		
		return "redirect:Money.me";
	}
		
}
