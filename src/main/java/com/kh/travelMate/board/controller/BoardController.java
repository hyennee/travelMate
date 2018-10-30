package com.kh.travelMate.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.travelMate.board.model.service.BoardService;
import com.kh.travelMate.board.model.vo.Board;

@Controller
public class BoardController
{
	@Autowired
	public BoardService bs;
	
	@RequestMapping("selectServiceCenter.bo")
	public String selectServiceCenter(Board b, Model model)
	{	
		String notice = "1";		//공지사항 카테고리 번호
		String question = "2";		//문의 카테고리 번호
		
		b.setCategory(notice);
		ArrayList<Board> noticeList = bs.selectBoardList(b);
		b.setCategory(question);
		ArrayList<Board> questionList = bs.selectBoardList(b);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("questionList", questionList);
		
		return "board/serviceCenter/serviceCenter";
	}
}