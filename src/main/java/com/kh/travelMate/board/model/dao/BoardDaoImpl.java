package com.kh.travelMate.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao
{
	@Override
	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, Board b)
	{
		ArrayList<Board> list = sqlSession.selectOne("Board.boardList", b);
		
		return list;
	}
}