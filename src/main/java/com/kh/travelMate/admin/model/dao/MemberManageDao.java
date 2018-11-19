package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

public interface MemberManageDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<MemberManage> memberList(SqlSessionTemplate sqlSession, PageInfo page);

	MemberManage selectOne(SqlSessionTemplate sqlSession, int userno);

	ArrayList<MemberManage> getNewMemberList(SqlSessionTemplate sqlSession);

}
