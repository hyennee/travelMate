package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface MemberManageService {
	
	ArrayList<MemberManage> memberList(PageInfo page);

	int getListCount();

	MemberManage selectOne(int userno);

	ArrayList<MemberManage> getNewMemberList();

	int getListCount(String sel, String val);

	ArrayList<MemberManage> memberList(PageInfo page, String sel, String val);

}
