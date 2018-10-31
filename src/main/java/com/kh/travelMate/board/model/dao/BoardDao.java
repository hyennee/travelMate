package com.kh.travelMate.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;

public interface BoardDao
{
	ArrayList<Board> selectServiceCenterList(SqlSessionTemplate sqlSession, Board b);
	
	ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, Board b, PageInfo page) throws BoardListException;

	Board selectOne(SqlSessionTemplate sqlSession, Board b);

	int getListCount(SqlSessionTemplate sqlSession, Board b) throws BoardListException;
}
