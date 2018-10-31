package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.vo.Member;

public interface mypageDao {

	List<HashMap<String, Object>> myPageInfo(SqlSessionTemplate sqlSession, Member loginUser);

}
