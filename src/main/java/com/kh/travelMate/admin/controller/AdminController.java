package com.kh.travelMate.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.travelMate.admin.common.Pagination;
import com.kh.travelMate.admin.model.service.BoardManageService;
import com.kh.travelMate.admin.model.service.MemberManageService;
import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Controller
public class AdminController {
	@Autowired
	private BoardManageService bms;
	@Autowired
	private MemberManageService mms;
	
	@RequestMapping("admin/admin.main")
	public String goAdminMain() {
		
		return "admin/adminIndex"; // Admin Main view forward
	}
	
	@RequestMapping("admin/memberManage.admin")
	public String memberManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		
		ArrayList<MemberManage> memberList;
		
		int listCount = mms.getListCount();
		// 테스트 코드
		System.out.println("listCount: " + listCount);
		
		PageInfo page = Pagination.getPageInfo(currentPage, listCount);
		
		memberList = mms.memberList(page);
		
		model.addAttribute("memberList", memberList);
		model.addAttribute("page", page);

		return "admin/memberManage/memberManageMain";
		
	}
	
	@RequestMapping("admin/memberManageDetail.admin")
	public String memberManageDetailAdmin(@RequestParam(defaultValue="0") int userno, Model model) {
		if(userno == 0) {
			// userno가 없을 경우
			return "admin/memberManage.admin";
		}else {
			// userno가 있을 경우
			MemberManage memberDetail = mms.selectOne(userno);
			System.out.println("조회한 memberDetail은: " + memberDetail);
			model.addAttribute("memberDetail", memberDetail);
			return "admin/memberManage/memberManageDetail";
		}
	}
	
	@RequestMapping("admin/consultManage.admin")
	public String consultManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		ArrayList<ConsultManage> consultApplyList = null;
		
		int listCount = bms.getConsultApplyListCount();

		PageInfo page = Pagination.getPageInfo(currentPage, listCount);
		
		consultApplyList = bms.consultApplyList(page);
		
		// 테스트코드
		System.out.println("consultApplyList: " + consultApplyList);
		
		model.addAttribute("consultApplyList", consultApplyList);
		model.addAttribute("page", page);
		
		return "admin/memberManage/consultManageList";
	}
	
	@RequestMapping("admin/consultManageDetail.admin")
	public String consultManageDetailAdmin(@RequestParam(defaultValue="0") int apply_no, Model model) {
		if(apply_no == 0) {
			// apply_no가 없을 경우
			return "admin/memberManage/consultManageList";
		}else {
			// apply_no가 있을 경우
			ConsultManage selectApplyDetail = bms.selectApplyDetail(apply_no);
			model.addAttribute("selectApplyDetail", selectApplyDetail);

			return "admin/memberManage/consultManageDetail";
		}
	}
	
	@RequestMapping("admin/consultApplyAccept.admin")
	public String consultManageAccpetAdmin(@RequestParam(defaultValue="0") int apply_no, @RequestParam(defaultValue="0") String reason, Model model) {
		if(apply_no == 0 || reason.equals("0")) {
			// apply_no이나 reason이 없을 경우
			// System.out.println("여기로 들어오면 안됨");
			return "admin/memberManage/consultManageList";
		}else{
			// apply_no가 있을 경우
			// System.out.println("들어옴");
			ConsultManage selectApplyDetail = bms.selectApplyDetail(apply_no);
			selectApplyDetail.setConsult_Apply_No(apply_no);
			selectApplyDetail.setReason(reason);
			bms.consultApplyAccept(selectApplyDetail);
			selectApplyDetail = bms.selectApplyDetail(apply_no);
			model.addAttribute("selectApplyDetail", selectApplyDetail);

			return "admin/memberManage/consultManageDetail";
		}				

	}
	
	@RequestMapping("admin/consultApplyRefuse.admin")
	public String consultManageRefuseAdmin(@RequestParam(defaultValue="0") int apply_no, @RequestParam(defaultValue="0") String reason, @RequestParam(defaultValue="0") int user_No, Model model) {
		
		if(apply_no == 0 || reason.equals("0") || user_No == 0) {
			// apply_no이나 reason이 없을 경우
			// System.out.println("여기로 들어오면 안됨");
			return "admin/memberManage/consultManageList";
		}else{
			// System.out.println("들어옴");
			ConsultManage selectApplyDetail = bms.selectApplyDetail(apply_no);
			selectApplyDetail.setConsult_Apply_No(apply_no);
			selectApplyDetail.setReason(reason);
			selectApplyDetail.setUser_No(user_No);
			System.out.println("setted selectApplyDetail: " + selectApplyDetail);
			
			bms.consultApplyRefuse(selectApplyDetail);
			selectApplyDetail = bms.selectApplyDetail(apply_no);
			model.addAttribute("selectApplyDetail", selectApplyDetail);

			return "admin/memberManage/consultManageDetail";
		}			

	}
	
	@RequestMapping("admin/boardManage.admin")
	public String boardManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		
		ArrayList<BoardManage> boardList;
		
		int listCount = 0;
		
		listCount = bms.getListCount();
		
		// 테스트 코드
		System.out.println("listCount: " + listCount);
		
		PageInfo page = Pagination.getPageInfo(currentPage, listCount);
		
		boardList = bms.boardList(page);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("page", page);

		return "admin/boardManage/boardManageMain";
		
	}
	
	@RequestMapping("admin/boardManageDetail.admin")
	public String boardManageDetail(@RequestParam(defaultValue="0") int board_no, Model model) {
		
		if(board_no == 0) {
			
			return "admin/boardManage/boardManageMain";
		}else {
			ArrayList<BoardManage> boardDetail;
			boardDetail = bms.selectBoardDetail(board_no);
			
			System.out.println(boardDetail);
			
			model.addAttribute("boardDetail", boardDetail);
			
			return "admin/boardManage/boardManageDetailPage";
		}
		
	}
	
	@RequestMapping("admin/boardManageModify.admin")
	public String boardManageModify(@RequestParam(defaultValue="0") int board_no, Model model) {
		if(board_no == 0) {
			return "admin/boardManage/boardManageMain";
		}else {
			ArrayList<BoardManage> boardDetail;
			boardDetail = bms.selectBoardDetail(board_no);
			model.addAttribute("boardDetail", boardDetail);
			
			return "admin/boardManage/boardManageModifyPage";
		}
		
	}
	
	@RequestMapping("admin/boardManageConfirm.admin")
	public String boardManageModifyConfirm(@RequestParam(defaultValue="0") int board_no, @RequestParam(defaultValue="0x0") String content, Model model) {
		System.out.println("board_no와 content 들어왔니? " + board_no + ", " + content);
		if(board_no == 0 || content.equals("0x0")) {
			return "admin/boardManage/boardManageMain";
		}else {
			BoardManage modifyBoard = new BoardManage();
			ArrayList<BoardManage> boardDetail;
			modifyBoard.setBoard_no(board_no);
			modifyBoard.setContent(content);
			bms.updateBoardDetail(modifyBoard);
			boardDetail = bms.selectBoardDetail(board_no);
			model.addAttribute("boardDetail", boardDetail);
			
			return "admin/boardManage/boardManageDetailPage";
		}
		
	}
	
	@RequestMapping("admin/boardManageDelete.admin")
	public String boardManageDelete(@RequestParam(defaultValue="0") int board_no, Model model) {
		
		return "admin/boardManage/boardManageDetailPage";
	}
	
	@RequestMapping("admin/boardManageReply.admin")
	public String boardManageReply(@RequestParam(defaultValue="0") int board_no, Model model) {
		
		return "admin/boardManage/boardManageDetailPage";
	}
	
	@RequestMapping("admin/paymentManage.admin")
	public String paymentManageAdmin(@RequestParam(defaultValue="1") int currentPage, Model model) {
		
		return "admin/paymentManage/paymentManageMain";
	}
	
	
}
