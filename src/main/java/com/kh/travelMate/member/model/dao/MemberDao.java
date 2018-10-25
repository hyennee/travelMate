package com.kh.travelMate.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;


public interface MemberDao {

	Member loginCheck(SqlSessionTemplate sqlSession, Member m) throws LoginException;

}
