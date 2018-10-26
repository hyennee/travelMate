package com.kh.travelMate.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;


public interface MemberDao {

	//로그인 메소드
	Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

	//회원가입 메소드
	int insertMember(SqlSessionTemplate sqlSession, Member m);

	//암호화된 비밀번호를 조회해오는 메소드
	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

}
