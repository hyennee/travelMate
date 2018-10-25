package com.kh.travelMate.member.model.service;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;

public interface MemberService {

	Member loginCheck(Member m) throws LoginException;

}
