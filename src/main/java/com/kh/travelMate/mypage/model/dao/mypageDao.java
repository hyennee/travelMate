package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.vo.Member;

public interface mypageDao {

	List<HashMap<String, Object>> tradeInfoHistory(SqlSessionTemplate sqlSession, Member loginUser);

	List<HashMap<String, Object>> oneByOneHistory(SqlSessionTemplate sqlSession, Member loginUser);

	List<HashMap<String, Object>> cyberMoneyHistory(SqlSessionTemplate sqlSession, Member loginUser);

	int modifyInfo(SqlSessionTemplate sqlSession,Member mem);

}
