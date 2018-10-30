package com.kh.travelMate.member.model.service;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;

public interface MemberService {

	//로그인용 메소드
	Member loginCheck(Member m) throws LoginException;

	//회원가입용 메소드
	int insertMember(Member m);

	//아이디 중복체크용 메소드
	int selectDuplChkId(String string);

}
