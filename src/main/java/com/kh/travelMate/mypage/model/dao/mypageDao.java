package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.others.model.vo.ConsultRequest;
import com.kh.travelMate.others.model.vo.ConsultRequest2;

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

	int updateCancel(SqlSessionTemplate sqlSession, Member m);

	Board selectOneByOneBoard(SqlSessionTemplate sqlSession, int boardNo);


	void insertProfile(SqlSessionTemplate sqlSession, Map<String, Object> data);

	void insertProfileAttachment(SqlSessionTemplate sqlSession, Attachment attachment);

	HashMap<String, Object> selectProfile(SqlSessionTemplate sqlSession, int user_no);

	String selectProfileAttachment(SqlSessionTemplate sqlSession, int user_no);

	ConsultRequest2 selectOneTrade(SqlSessionTemplate sqlSession, int consultNo);

}
