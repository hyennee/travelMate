package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.vo.Member;

public class mypageDaoImpl implements mypageDao{

	@Override
	public List<HashMap<String, Object>> myPageInfo(SqlSessionTemplate sqlSession, Member loginUser) {
		
		return sqlSession.selectList("mypage.", parameter);
	}

}
