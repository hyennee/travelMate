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

	int getnoticeListCount(SqlSessionTemplate sqlSession);

	ArrayList<BoardManage> noticeList(SqlSessionTemplate sqlSession, PageInfo page);

	void insertNotice(SqlSessionTemplate sqlSession, BoardManage noticeBoard);

	ArrayList<BoardManage> getOTOboardList(SqlSessionTemplate sqlSession);

	int getListCount(SqlSessionTemplate sqlSession, String sel, String val);

	ArrayList<BoardManage> boardList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val);

	ArrayList<BoardManage> getRecentBoardList(SqlSessionTemplate sqlSession);

	int getOpenConsultListCount(SqlSessionTemplate sqlSession);

	int getOpenConsultListCount(SqlSessionTemplate sqlSession, String sel, String val);

	ArrayList<BoardManage> openConsultList(SqlSessionTemplate sqlSession, PageInfo page);

	ArrayList<BoardManage> openConsultList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val);

	int getOneToOneListCount(SqlSessionTemplate sqlSession);

	int getOneToOneListCount(SqlSessionTemplate sqlSession, String sel, String val);

	ArrayList<BoardManage> oneToOneList(SqlSessionTemplate sqlSession, PageInfo page);

	ArrayList<BoardManage> oneToOneList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val);

}
