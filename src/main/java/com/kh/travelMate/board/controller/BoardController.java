package com.kh.travelMate.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.service.BoardService;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;
import com.kh.travelMate.common.Pagination;

@Controller
public class BoardController
{
	@Autowired
	public BoardService bs;
	
	@RequestMapping("selectServiceCenter.bo")
	public String selectServiceCenter(Board b, Model model)
	{	
		//System.out.println("진입");
		String notice = "1";		//공지사항 카테고리 번호
		String question = "2";		//문의 카테고리 번호
		
		b.setCategory(notice);
		ArrayList<Board> noticeList = bs.selectServiceCenterList(b);
		System.out.println("noticeList : " + noticeList);
		b.setCategory(question);
		ArrayList<Board> questionList = bs.selectServiceCenterList(b);
		System.out.println("questionList : " + questionList);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("questionList", questionList);
		
		return "board/serviceCenter/serviceCenter";
	}
	
	@RequestMapping("selectOne.bo")
	public String selectOneNotice(Board b, Model model)
	{
		Board selectOne = bs.selectOne(b);
		
		model.addAttribute("selectOne", selectOne);
		
		return "board/serviceCenter/noticeDetail";
	}
	
	@RequestMapping("selectFAQ.bo")
	public String selectFAQ()
	{
		return "board/serviceCenter/faq";
	}
	
	@RequestMapping("selectList.bo")
	public String selectBoardList(Board b, Model model, @RequestParam(defaultValue="1") int currentPage)
	{
		ArrayList<Board> selectList;
		
		try
		{
			int listCount = bs.getListCount(b);
			System.out.println("listCount : " + listCount);
			
			PageInfo page = Pagination.getPageInfo(currentPage, listCount);
			
			/*------------------*/
			
			selectList = bs.selectBoardList(b, page);
			
			model.addAttribute("selectList", selectList);
			model.addAttribute("page", page);
			
			if(b.getCategory().equals("1"))
			{
				return "board/serviceCenter/noticeList";
			}
			else if(b.getCategory().equals("2"))
			{
				return "board/serviceCenter/questionList";
			}
		}
		catch (BoardListException e)
		{
			model.addAttribute("msg", e.getMessage());
			
			return "must/errorPage";
		}
		
		return null;
	}
}