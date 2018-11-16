package com.kh.travelMate.mypage.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.member.model.vo.Member;

public interface mypageService {

	List<HashMap<String, Object>> tradeInfoHistory(Member loginUser);

	List<HashMap<String, Object>> oneByOneHistory(Member loginUser);

	List<HashMap<String, Object>> cyberMoneyHistory(Member loginUser);

	int modifyInfo(Member mem);

	int nickNameCheck(String nick_name);

	void insertCyberMoney(int parseInt, Member loginUser, String imp_uid);

	void insertCyberMoney2(int parseInt, Member loginUser, String imp_uid);

	String checkpwd(Member m);

	int updatepwd(Member m);

	int cyberMoney(int user_no);

	void insertCyberMoney3(int parseInt, Member loginUser, String account_name, String account_no);

	List<HashMap<String, Object>> consultingCustomerHistory(Member loginUser);

	List<HashMap<String, Object>> cyberMoneyStatus(Member loginUser);

	void insertCyberMoney4(int parseInt, Member loginUser, String imp_uid);

	int updateCancel(Member m);

	Board selectOneByOneBoard(int boardNo);
	
}
