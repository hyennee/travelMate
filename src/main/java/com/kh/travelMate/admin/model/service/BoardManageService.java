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

}
