package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.BoardManageDao;
import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Service
public class BoardManageServiceImpl implements BoardManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BoardManageDao bmd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public int getListCount() {
		int listCount = bmd.getListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<BoardManage> boardList(PageInfo page) {
		ArrayList<BoardManage> boardList = bmd.boardList(sqlSession, page);
		return boardList;
	}

	@Override
	public int getConsultApplyListCount() {
		int listCount = bmd.getConsultApplyListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<ConsultManage> consultApplyList(PageInfo page) {
		ArrayList<ConsultManage> consultApplyList = bmd.consultApplyList(sqlSession, page);
		return consultApplyList;
	}

	@Override
	public ConsultManage selectApplyDetail(int apply_no) {
		ConsultManage selectApplyDetail = bmd.selectApplyDetail(sqlSession, apply_no);
		return selectApplyDetail;
	}

	@Override
	public void consultApplyAccept(ConsultManage selectApplyDetail) {
		bmd.consultApplyAccept(sqlSession, selectApplyDetail);
		
	}

	@Override
	public void consultApplyRefuse(ConsultManage selectApplyDetail) {
		bmd.consultApplyRefuse(sqlSession, selectApplyDetail);
	}

	@Override
	public ArrayList<BoardManage> selectBoardDetail(int board_no) {
		ArrayList<BoardManage> boardDetail;
		boardDetail = bmd.selectBoardDetail(sqlSession, board_no);
		return boardDetail;
	}

	@Override
	public void updateBoardDetail(BoardManage modifyBoard) {
		bmd.updateBoardDetail(sqlSession, modifyBoard);
	}

	@Override
	public BoardManage selectBoardDetailOne(int board_no) {
		BoardManage selectBoardDetailOne = 
		bmd.selectBoardDetailOne(sqlSession, board_no);
		return selectBoardDetailOne;
	}

	@Override
	public void deleteBoardAll(int board_no) {
		bmd.deleteBoardAll(sqlSession, board_no);
	}

	@Override
	public void insertBoardReply(BoardManage replyBoardInfo) {
		bmd.insertBoardReply(sqlSession, replyBoardInfo);
		
	}

}
