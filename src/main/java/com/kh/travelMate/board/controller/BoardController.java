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
}
