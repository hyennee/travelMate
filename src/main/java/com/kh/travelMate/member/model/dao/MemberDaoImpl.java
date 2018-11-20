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

	//이메일, 이름으로 회원 조회하기!
	@Override
	public int selectSearchUser(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectSearchUser", m);
	}

	@Override

	public Member selectOneMember(SqlSessionTemplate sqlSession, int writer)
	{
		return sqlSession.selectOne("Member.selectOneUser", writer);
	}

	@Override
	public int updateCyberMoney(SqlSessionTemplate sqlSession, Member m)
	{
		return sqlSession.update("Member.updateCyberMoney", m);
	}

	@Override
	public int useCyberMoney(SqlSessionTemplate sqlSession, Member answerMember)
	{
		return sqlSession.update("Member.useCyberMoney", answerMember);
	}

  
	//임시비밀번호로 비밀번호 업데이트!
  	@Override
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("Member.updatePwd", m);
	}

  	
  	//네이버 로그인 유저 조회
	@Override
	public Member selectNaverMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectNaverMember", m);
	}

	//네이버 로그인 유저 조회 후 없을 시 회원가입 
	@Override
	public int insertNaverMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.insertNaverMember", m);
	}

	//카카오 로그인 유저 조회
	@Override
	public Member selectKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectKakaoMember", m);
	}

	//카카오 로그인 유저 조회 후 없을 시 회원가입
	@Override
	public int insertKakaoMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.insertKakaoMember", m);
	}

	//DB에 저장되어있는 임시비밀번호 소유 회원의 비밀번호 조회
	@Override
	public String selectModifyPwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectModifyPwd", m);
	}

	//임시비밀번호를 새비밀번호로 수정
	@Override
	public int updateModifyPwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("Member.updateModifyPwd", m);
	}



	

	







}
