package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface BoardManageService {

	int getListCount();

	ArrayList<BoardManage> boardList(PageInfo page);

}
