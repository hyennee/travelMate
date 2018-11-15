package com.kh.travelMate.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;


	//회원가입용 메소드
	@Override
	public int insertMember(Member m) {
		
		return md.insertMember(sqlSession, m);
	}

	//암호화 후 로그인 용 메소드
	@Override
	public Member loginCheck(Member m) throws LoginException {
		Member loginUser = null;
		
		//1. 암호화 된 비밀번호를 조회해오기
		String encPassword = md.selectEncPassword(sqlSession, m);
		
		//2. 조회해온 암호화 된 비밀번호와 평문 비밀번호를 비교해본다.
		if(!passwordEncoder.matches(m.getPassword(), encPassword)){
			//두개의 비밀번호가 같지 않으면 exception발생시킴
			throw new LoginException("죄송합니다. 로그인에 실패했습니다.\r\n 아이디(ID)와 비밀번호를 확인하고 다시 로그인해주세요.");
		}else {
			//두개가 일치하는지 비교 일치하면 회원 정보를 조회해온다
			loginUser = md.selectMember(sqlSession, m);
		}
		
		return loginUser;
	}

	/*@Override
	public int selectDuplChkId(Member m) {
		
		return md.selectDuplChkId(sqlSession, m);
	}*/

	
	//아이디 중복체크용 메소드
	@Override
	public int selectDuplChkId(String email) {
		
		return md.selectDuplChkId(sqlSession, email);
	}

	//닉네임 중복체크용 메소드
	@Override
	public int selectDuplChkNick(String nick_name) {
		
		
		return md.selectDuplChkNick(sqlSession, nick_name);
	}

	
	//비밀번호 찾기 회원 조회용 메소드!
	@Override
	public int selectSearchUser(Member m) {
		// TODO Auto-generated method stub
		return md.selectSearchUser(sqlSession, m);
	}

	@Override
	public int updatePwd(Member m) {
		
		return md.updatePwd(sqlSession, m);
	}

	@Override
	public Member naverlogincheck(Member m) {
		Member loginUser = null;
		
		loginUser = md.selectNaverMember(sqlSession, m);

		
		return loginUser;
	}

	//네이버 회원가입
	@Override
	public int insertNaverMember(Member m) {
		
		return md.insertNaverMember(sqlSession, m);
	}


	




	
	

	

}
