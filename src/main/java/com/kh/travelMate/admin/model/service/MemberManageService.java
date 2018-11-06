package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface MemberManageService {
	
	public ArrayList<MemberManage> memberList(PageInfo page);

	public int getListCount();

}
