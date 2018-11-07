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

	//이메일 중복체크 메소드
	int selectDuplChkId(SqlSessionTemplate sqlSession, String email);

	//닉네임 중복체크 메소드
	int selectDuplChkNick(SqlSessionTemplate sqlSession, String nick_name);

	//이메일, 이름 일치하는 회원조회용 메소드
	Member selectSearchUser(SqlSessionTemplate sqlSession, Member m);

	Member selectOneMember(SqlSessionTemplate sqlSession, int writer);

	int updateCyberMoney(SqlSessionTemplate sqlSession, Member m);

	int useCyberMoney(SqlSessionTemplate sqlSession, Member answerMember);



	
	

}
