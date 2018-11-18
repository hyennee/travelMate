package com.kh.travelMate.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.board.model.dao.BoardDao;
import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;
import com.kh.travelMate.member.model.dao.MemberDao;
import com.kh.travelMate.member.model.vo.Member;

@Service
public class BoardServiceImpl implements BoardService
{
	@Autowired
	private BoardDao bd;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	
	@Override
	public ArrayList<Board> selectServiceCenterList(Board b)
	{
		ArrayList<Board> list = bd.selectServiceCenterList(sqlSession, b);
		
		return list;
	}
	
	@Override
	public ArrayList<Board> selectBoardList(Board b, PageInfo page) throws BoardListException
	{
		ArrayList<Board> list = bd.selectBoardList(sqlSession, b, page);
		
		if(!(b.getCategory().equals("1") || b.getCategory().equals("2") || b.getCategory().equals("3")))
		{
			throw new BoardListException("존재하지 않는 게시판입니다.");
		}
		
		return list;
	}

	@Override
	public Board selectOne(Board b)
	{
		Board noticeOne = bd.selectOne(sqlSession, b);
		
		/*System.out.println("selectone : " + noticeOne);*/
		
		return noticeOne;
	}

	@Override
	public int getListCount(Board b) throws BoardListException
	{
		int listCount = bd.getListCount(sqlSession, b);
		
		return listCount;
	}

	@Override
	public int insertBoard(Board b)
	{
		int result = bd.insertBoard(sqlSession, b);
		
		return result;
	}

	@Override
	public int updateBoard(Board b)
	{
		int result = bd.updateBoard(sqlSession, b);
		
		return result;
	}

	@Override
	public int deleteBoard(Board b)
	{
		int result = bd.deleteBoard(sqlSession, b);
		
		return result;
	}

	@Override
	public int insertAnswerBoard(Board b)
	{
		int result = bd.insertAnswerBoard(sqlSession, b);
		
		return result;
	}

	@Override
	public ArrayList<Board> selectAnswerBoard(Board b)
	{
		ArrayList<Board> answerList = bd.selectAnswerBoard(sqlSession, b);
		
		return answerList;
	}

	@Override
	public int updateContent(Board b)
	{
		Board board = bd.selectOne(sqlSession, b);
		
		Member m = md.selectOneMember(sqlSession, board.getWriter());
		/*System.out.println("Member m : " + m);*/
		md.updateCyberMoney(sqlSession, m);
		md.selectOneMember(sqlSession, board.getWriter());
		/*System.out.println("Update Member m : " + m);*/
		
		Board answerBoard = bd.selectOneRef(sqlSession, b);
		
		Member answerMember = md.selectOneMember(sqlSession, answerBoard.getWriter());
		/*System.out.println("answerMember : " + answerMember);*/
		md.useCyberMoney(sqlSession, answerMember);
		answerMember = md.selectOneMember(sqlSession, answerBoard.getWriter());
		/*System.out.println("Update answerMember : " + answerMember);*/
		
		int result = bd.updateContent(sqlSession, b);
		
		return result;
	}

	@Override
	public ArrayList<Board> selectSearch(Board b, PageInfo page) throws BoardListException
	{
		ArrayList<Board> list = bd.selectSearch(sqlSession, b, page);
		
		return list;
	}

	@Override
	public int getListCountSearch(Board b)
	{
		int listCount = bd.getListCountSearch(sqlSession, b);
		
		return listCount;
	}

	@Override
	public Board selectOneAnswer(Board b)
	{
		Board noticeOne = bd.selectOneAnswer(sqlSession, b);
		
		return noticeOne;
	}

	@Override
	public Board selectOneAnswerAdmin(Board b)
	{
		Board answer = bd.selectOneAnswerAdmin(sqlSession, b);
		
		return answer;
	}
}