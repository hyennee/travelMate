package com.kh.travelMate.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;

public interface BoardService
{
	ArrayList<Board> selectServiceCenterList(Board b);

	ArrayList<Board> selectBoardList(Board b, PageInfo page) throws BoardListException;

	Board selectOne(Board b);

	int getListCount(Board b) throws BoardListException;

	int insertBoard(Board b);

	int updateBoard(Board b);

	int deleteBoard(Board b);

	int insertAnswerBoard(Board b);

	ArrayList<Board> selectAnswerBoard(Board b);

	int updateContent(Board b);

	ArrayList<Board> selectSearch(Board b, PageInfo page) throws BoardListException;

	int getListCountSearch(Board b);

	Board selectOneAnswer(Board b);

	Board selectOneAnswerAdmin(Board b);

	ArrayList<HashMap<String, Object>> selectCSlist();
}