package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface MemberManageService {
	
	ArrayList<MemberManage> memberList(PageInfo page);

	int getListCount();

	MemberManage selectOne(int userno);

}
