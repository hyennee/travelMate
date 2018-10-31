package com.kh.travelMate.admin.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.MemberManage;

@Repository
public class MemberManageDaoImpl implements MemberManageDao {
	@Inject SqlSession sqlsession;
	@Override
	public List<MemberManage> memberList() {
		return sqlsession.selectList("MemberManage.selectAllMember");
	}
}
