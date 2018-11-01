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

	//회원가입 메소드
	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		//Member라는 namespace를 가진 매퍼 xml파일에 가서 insert처리 후 돌려받은 int형을 바로 리턴해줌
		return sqlSession.insert("Member.insertMember", m);
	}

	//암호화된 비밀번호를 조회해오는 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		
		
		return sqlSession.selectOne("Member.selectPwd", m.getEmail()); //이메일아이디를 통해 db에서 비밀번호 조회해오기
	}

	//비밀번호 일치시 회원 정보 조회용 메소드
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectLoginUser", m); //m을 리턴
	}

	//아이디 중복체크 조회용 메소드
	@Override
	public int selectDuplChkId(SqlSessionTemplate sqlSession, String email) {
		
	 return sqlSession.selectOne("Member.selectDuplChkId", email);
	}

	//닉네임 중복체크 조회용 메소드
	@Override
	public int selectDuplChkNick(SqlSessionTemplate sqlSession, String nick_name) {
		
	return sqlSession.selectOne("Member.selectDuplChkNick", nick_name);
	}





}
