package com.kh.travelMate.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.board.model.dao.BoardDao;
import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService
{
	@Autowired
	private BoardDao bd;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
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
		
		if(!(b.getCategory().equals("1") || b.getCategory().equals("2")))
		{
			throw new BoardListException("존재하지 않는 게시판입니다.");
		}
		
		return list;
	}

	@Override
	public Board selectOne(Board b)
	{
		Board noticeOne = bd.selectOne(sqlSession, b);
		
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
}
