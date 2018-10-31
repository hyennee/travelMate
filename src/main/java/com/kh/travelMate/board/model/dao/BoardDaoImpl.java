package com.kh.travelMate.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;

@Repository
public class BoardDaoImpl implements BoardDao
{
	@Override
	public ArrayList<Board> selectServiceCenterList(SqlSessionTemplate sqlSession, Board b)
	{
		List<Board> list = sqlSession.selectList("Board.serviceCenterList", b);
		
		return (ArrayList<Board>) list;
	}
	
	@Override
	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, Board b, PageInfo page) throws BoardListException
	{
		List<Board> list = null;
		
		int offset = (page.getCurrentPage() - 1) * page.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		list = sqlSession.selectList("Board.boardList", b, rowBounds);
		
		if(list == null)
		{
			throw new BoardListException("게시글 조회 실패");
		}
		
		return (ArrayList<Board>) list;
	}

	@Override
	public Board selectOne(SqlSessionTemplate sqlSession, Board b)
	{
		Board noticeOne = sqlSession.selectOne("Board.selectOne", b);
		
		return noticeOne;
	}

	@Override
	public int getListCount(SqlSessionTemplate sqlSession, Board b) throws BoardListException
	{
		int result = sqlSession.selectOne("Board.selectListCount", b);
		
		if(result <= 0)
		{
			throw new BoardListException("게시글 수 조회 실패");
		}
		
		return result;
	}
}