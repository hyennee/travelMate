package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface BoardManageService {

	int getListCount();

	ArrayList<BoardManage> boardList(PageInfo page);

	int getConsultApplyListCount();

	ArrayList<ConsultManage> consultApplyList(PageInfo page);

	ConsultManage selectApplyDetail(int apply_no);

	void consultApplyAccept(ConsultManage selectApplyDetail);

	void consultApplyRefuse(ConsultManage selectApplyDetail);

	ArrayList<BoardManage> selectBoardDetail(int board_no);

	void updateBoardDetail(BoardManage modifyBoard);

	BoardManage selectBoardDetailOne(int board_no);

	void deleteBoardAll(int board_no);

	void insertBoardReply(BoardManage replyBoardInfo);

	int getNoticeListCount();

	ArrayList<BoardManage> noticeList(PageInfo page);

	void insertNotice(BoardManage noticeBoard);

	ArrayList<BoardManage> getOTOboardList();

	int getListCount(String sel, String string);

	ArrayList<BoardManage> boardList(PageInfo page, String sel, String string);

	ArrayList<BoardManage> getRecentBoardList();

	int getOpenConsultListCount();

	int getOpenConsultListCount(String sel, String val);

	ArrayList<BoardManage> openConsultList(PageInfo page);

	ArrayList<BoardManage> openConsultList(PageInfo page, String sel, String string);

	int getOneToOneListCount();

	ArrayList<BoardManage> oneToOneList(PageInfo page);

	int getOneToOneListCount(String sel, String string);

	ArrayList<BoardManage> oneToOneList(PageInfo page, String sel, String string);

}
