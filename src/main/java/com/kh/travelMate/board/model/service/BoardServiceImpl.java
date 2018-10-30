package com.kh.travelMate.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.travelMate.board.model.dao.BoardDao;
import com.kh.travelMate.board.model.vo.Board;

public class BoardServiceImpl implements BoardService
{
	@Autowired
	private BoardDao bd;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}
