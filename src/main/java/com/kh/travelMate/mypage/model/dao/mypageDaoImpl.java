package com.kh.travelMate.mypage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.member.model.vo.Member;

@Repository
public class mypageDaoImpl implements mypageDao{

	@Override
	public List<HashMap<String, Object>> tradeInfoHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		
		//return sqlSession.selectList(Mypage);
		return null;
	}

	@Override
	public List<HashMap<String, Object>> oneByOneHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		
		//return sqlSession.selectList(Mypage);
		return null;
	}

	@Override
	public List<HashMap<String, Object>> cyberMoneyHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		System.out.println();
		return sqlSession.selectList("Mypage.cyberMoneyHistory",loginUser.getUser_no());
	}

}
