package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Repository
public class MemberManageDaoImpl implements MemberManageDao {
	@Inject SqlSession sqlsession;
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlsession.selectOne("MemberManage.memberListCount");
	}
	@Override
	public ArrayList<MemberManage> memberList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<MemberManage> memberList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		System.out.println("offset: " + offset);
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		System.out.println("rowBounds: " + rowBounds);
		
		// generic을 제외하고 down-casting
		memberList = (ArrayList)sqlSession.selectList("MemberManage.memberList", null, rowBounds);
		
		return memberList;
	}
	@Override
	public MemberManage selectOne(SqlSessionTemplate sqlSession, int userno) {
		int user_no = userno;
		MemberManage memberDetail = (MemberManage)sqlSession.selectOne("MemberManage.memberDetail", user_no);
		return memberDetail;
	}


}
