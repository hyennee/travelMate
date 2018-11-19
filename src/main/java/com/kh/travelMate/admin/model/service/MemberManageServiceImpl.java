package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.MemberManageDao;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Service
public class MemberManageServiceImpl implements MemberManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberManageDao mmd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public ArrayList<MemberManage> memberList(PageInfo page) {
		ArrayList<MemberManage> memberList = mmd.memberList(sqlSession, page);
		return memberList;
	}

	@Override
	public int getListCount() {
		
		int listCount = mmd.getListCount(sqlSession);
		return listCount;
	}

	@Override
	public MemberManage selectOne(int userno) {
		MemberManage memberDetail = mmd.selectOne(sqlSession, userno);
		
		return memberDetail;
	}

	@Override
	public ArrayList<MemberManage> getNewMemberList() {
		return mmd.getNewMemberList(sqlSession);
	}




}
