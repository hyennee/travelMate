package com.kh.travelMate.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;


@Repository
public class MemberDaoImpl implements MemberDao{

	//로그인 메소드
	@Override
	public Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException {
		Member loginUser = sqlSession.selectOne("Member.loginCheck", m);
		
		if(loginUser == null) {
			throw new LoginException("로그인 정보가 존재하지 않습니다!");
			
		}
		
		return loginUser;
	}

}
