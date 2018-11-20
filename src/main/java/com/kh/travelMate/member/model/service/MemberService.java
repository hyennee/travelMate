package com.kh.travelMate.member.model.service;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;

public interface MemberService {

	//로그인용 메소드
	Member loginCheck(Member m) throws LoginException;

	//회원가입용 메소드
	int insertMember(Member m);

	//아이디 중복체크용 메소드
	int selectDuplChkId(String email);

	//닉네임 중복체크용 메소드
	int selectDuplChkNick(String nick_name);

	//비밀번호 찾기 전 이름과 아이디로 회원정보 조회
	int selectSearchUser(Member m);

	//랜덤 비밀번호 update
	int updatePwd(Member m);

	//네이버 로그인
	Member naverlogincheck(Member m);

	//네이버 회원가입
	int insertNaverMember(Member m);

	//카카오 로그인
	Member kakaologincheck(Member m);

	//카카오 회원가입
	int insertKakaoMember(Member m);

	//임시비밀번호 가진 유저의 비밀번호 조회
	String selectModifyPwd(Member m);

	//임시비밀번호를 새비밀번호로 수정
	int updateModifyPwd(Member m);



	


}
