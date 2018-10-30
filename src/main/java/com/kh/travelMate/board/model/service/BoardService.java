package com.kh.travelMate.board.model.service;

import java.util.ArrayList;

import com.kh.travelMate.board.model.vo.Board;

public interface BoardService
{

	ArrayList<Board> selectBoardList(Board b);
}