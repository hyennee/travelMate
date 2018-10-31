package com.kh.travelMate.mypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.dao.mypageDao;

@Service
public class mypageServiceImpl implements mypageService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private mypageDao md;
	
	@Override
	public List<HashMap<String, Object>> myPageInfo(Member loginUser) {
		
		
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		
		list = md.myPageInfo(sqlSession,loginUser);
		
		return list;
	}

}
