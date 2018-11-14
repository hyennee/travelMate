package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.member.model.vo.Member;

public interface mypageDao {

	List<HashMap<String, Object>> tradeInfoHistory(SqlSessionTemplate sqlSession, Member loginUser);

	List<HashMap<String, Object>> oneByOneHistory(SqlSessionTemplate sqlSession, Member loginUser);

	List<HashMap<String, Object>> cyberMoneyHistory(SqlSessionTemplate sqlSession, Member loginUser);

	int modifyInfo(SqlSessionTemplate sqlSession,Member mem);

	int nickNameCheck(SqlSessionTemplate sqlSession, String nick_name);

	void insertCyberMoney(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession);

	void insertCyberMoney2(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession);

	/*String checkpwd(int user_no,SqlSessionTemplate sqlSession);*/

	int updatepwd(SqlSessionTemplate sqlSession, Member m);

	String checkpwd(SqlSessionTemplate sqlSession, Member m);

	int cyberMoney(SqlSessionTemplate sqlSession, int user_no);

	void insertCyberMoney3(int parseInt, Member loginUser, String account_name, String account_no,
			SqlSessionTemplate sqlSession);

	List<HashMap<String, Object>> consultingCustomerHistory(SqlSessionTemplate sqlSession, Member loginUser);

	List<HashMap<String, Object>> cyberMoneyStatus(SqlSessionTemplate sqlSession, Member loginUser);

	void insertCyberMoney4(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession);
}
