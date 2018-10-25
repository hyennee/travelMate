package com.kh.travelMate.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.member.model.dao.MemberDao;
import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	
	//로그인 메소드
	@Override
	public Member loginCheck(Member m) throws LoginException {
		
		Member loginUser = md.loginCheck(sqlSession, m);
		
		return loginUser;
	}

}
