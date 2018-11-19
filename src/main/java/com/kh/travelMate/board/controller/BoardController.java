package com.kh.travelMate.board.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

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
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.service.mypageService;

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
		/*System.out.println("noticeList : " + noticeList);*/
		b.setCategory(question);
		ArrayList<Board> questionList = bs.selectServiceCenterList(b);
		/*System.out.println("questionList : " + questionList);*/
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("questionList", questionList);
		
		return "board/serviceCenter/serviceCenter";
	}
	
	@RequestMapping("selectOne.bo")
	public String selectOneNotice(Board b, Model model)
	{
		Board selectOne = bs.selectOne(b);
		model.addAttribute("selectOne", selectOne);
		
		System.out.println("selectOne : " + b);
		
		if(b.getCategory().equals("1"))
		{
			return "board/serviceCenter/noticeDetail";
		}
		else if(b.getCategory().equals("2"))
		{
			Board answerBoard = bs.selectOneAnswerAdmin(b);
			
			model.addAttribute("answerBoard", answerBoard);
			
			return "board/serviceCenter/questionDetail";
		}
		else if(b.getCategory().equals("3"))
		{
			ArrayList<Board> answerList = bs.selectAnswerBoard(b);
			
			model.addAttribute("answerList", answerList);
			
			return "board/openConsulting/ocDetail";
		}
		return null;
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
			else if(b.getCategory().equals("3"))
			{
				return "board/openConsulting/ocList";
			}
		}
		catch (BoardListException e)
		{
			model.addAttribute("msg", e.getMessage());
			
			return "must/errorPage";
		}
		
		return null;
	}
	
	@RequestMapping("goInsertForm.bo")
	public String showInsertForm()
	{	
		return "board/serviceCenter/questionInsertForm";
	}
	
	@RequestMapping("goAnswerInsertForm.bo")
	public String showAnswerInsertForm(Board b, Model model)
	{
		/*System.out.println("answer : " + b);*/
		
		Board selectOne = bs.selectOne(b);
		model.addAttribute("selectOne", selectOne);
		
		return "board/openConsulting/ocAnswerInsertForm";
	}
	
	@RequestMapping("insert.bo")
	public String insertBoard(Board b, Model model)
	{
		bs.insertBoard(b);
		
		return "redirect:selectList.bo?category=" + b.getCategory();
	}
	@RequestMapping("insertAnswer.bo")
	public String insertAnswerBoard(Board b, Model model)
	{
		bs.insertAnswerBoard(b);
		
		return "redirect:selectOne.bo?boardNo=" + b.getRefNo() + "&category=" + b.getCategory();
	}
	
	@RequestMapping("goUpdateForm.bo")
	public String showUpdateForm(Board b, Model model)
	{	
		Board selectOne = bs.selectOne(b);
			
		model.addAttribute("selectOne", selectOne);
			
		return "board/serviceCenter/questionUpdateForm";
	}
	
	@RequestMapping("goAnswerUpdateForm.bo")
	public String showAnswerUpdateForm(Board b, Model model)
	{	
		Board selectOne = bs.selectOneAnswer(b);
		
		System.out.println("보드 : " + b);
		System.out.println("셀원 : " + selectOne);
			
		model.addAttribute("selectOneAnswer", selectOne);
			
		return "board/openConsulting/ocAnswerUpdateForm";
	}
	
	@RequestMapping("update.bo")
	public String updateBoard(Board b, Model model)
	{
		bs.updateBoard(b);
		
		return "redirect:selectOne.bo?boardNo=" + b.getBoardNo() + "&category=" + b.getCategory();
	}
	
	@RequestMapping("updateAnswer.bo")
	public String updateAnswerBoard(Board b, Model model)
	{
		System.out.println("보드앤서 : " + b);
		bs.updateBoard(b);
		
		return "redirect:selectOne.bo?boardNo=" + b.getRefNo() + "&category=" + b.getCategory();
	}
	
	@RequestMapping("delete.bo")
	public String deleteBoard(Board b, Model model)
	{
		bs.deleteBoard(b);
		
		return "redirect:selectList.bo?category=" + b.getCategory();
	}
	
	@RequestMapping("goOCInsertForm.bo")
	public String showOCInsertForm()
	{	
		return "board/openConsulting/ocInsertForm";
	}
	
	@RequestMapping("updateContent.bo")
	public String updateContent(Board b, Model model)
	{
		bs.updateContent(b);
		
		return "redirect:selectOne.bo?boardNo=" + b.getBoardNo() + "&category=" + b.getCategory();
	}
	
	@RequestMapping("selectSearch.bo")
	public String selectSearch(HttpServletRequest request, Board b, Model model, @RequestParam(defaultValue="1")int currentPage)
	{
		try
		{	
			int listCount = bs.getListCountSearch(b);
			System.out.println("listCount : " + listCount);
			
			PageInfo page = Pagination.getPageInfo(currentPage, listCount);
			
			/*------------------*/
			
			ArrayList<Board> list = null;
			b.setSearchCategory(request.getParameter("searchCategory"));
			
			if(b.getSearchCategory().equals("title"))
			{
				b.setSearchValue(request.getParameter("searchValue"));
				
				list = bs.selectSearch(b, page);
			}
			else if(b.getSearchCategory().equals("nick_name"))
			{
				b.setSearchValue(request.getParameter("searchValue"));

				list = bs.selectSearch(b, page);
			}
			else if(b.getSearchCategory().equals("content"))
			{
				b.setSearchValue(request.getParameter("searchValue"));
				
				list = bs.selectSearch(b, page);
			}
			
			model.addAttribute("selectList", list);
			model.addAttribute("page", page);
			
			if(b.getCategory().equals("1"))
			{
				return "board/serviceCenter/noticeList";
			}
			else if(b.getCategory().equals("2"))
			{
				return "board/serviceCenter/questionList";
			}
			else if(b.getCategory().equals("3"))
			{
				return "board/openConsulting/ocList";
			}
			return null;
		}
		catch (BoardListException e)
		{
			model.addAttribute("msg", e.getMessage());
			
			return "must/errorPage";
		}
	}
	
	
	@RequestMapping("selectCSlist.bo")
	public String selectCSlist(Model model,HttpServletRequest request)
	{	
		
		ArrayList<HashMap<String, Object>> noticeList = bs.selectCSlist();
		System.out.println(noticeList);
		model.addAttribute("board", noticeList);
		return "board/directCSList";
	}
	
	
	
	
	
	
}