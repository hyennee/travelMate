package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface BoardManageDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<BoardManage> boardList(SqlSessionTemplate sqlSession, PageInfo page);

	int getConsultApplyListCount(SqlSessionTemplate sqlSession);

	ArrayList<ConsultManage> consultApplyList(SqlSessionTemplate sqlSession, PageInfo page);

	ConsultManage selectApplyDetail(SqlSessionTemplate sqlSession, int apply_no);

	void consultApplyAccept(SqlSessionTemplate sqlSession, ConsultManage selectApplyDetail);

	void consultApplyRefuse(SqlSessionTemplate sqlSession, ConsultManage selectApplyDetail);

	ArrayList<BoardManage> selectBoardDetail(SqlSessionTemplate sqlSession, int board_no);

	void updateBoardDetail(SqlSessionTemplate sqlSession, BoardManage modifyBoard);

	BoardManage selectBoardDetailOne(SqlSessionTemplate sqlSession, int board_no);

	void deleteBoardAll(SqlSessionTemplate sqlSession, int board_no);

	void insertBoardReply(SqlSessionTemplate sqlSession, BoardManage replyBoardInfo);

}
