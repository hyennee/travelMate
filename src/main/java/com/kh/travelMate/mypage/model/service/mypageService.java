package com.kh.travelMate.mypage.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.vo.Withdraw;
import com.kh.travelMate.others.model.vo.ConsultRequest;
import com.kh.travelMate.others.model.vo.ConsultRequest2;

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

//	1:1상세보기
	Board selectOneByOneBoard(int boardNo);


	void insertProfile(Map<String, Object> data, Attachment attachment);

	HashMap<String, Object> selectProfile(int user_no);

	String selectProfileAttachment(int user_no);

//	거래내역 상세보기
	ConsultRequest2 selectOneTrade(int consultNo);


	List<HashMap<String, Object>> openConsulting(Member loginUser);

	HashMap<String, Object> selectOneOpenTrade(int bOARD_NO);

	int insertResponse(Map<String, Object> map);

	int insertWithdraw(Withdraw w);

	//다이렉트 답변
	HashMap<String, Object> selectResponse(int cONSULT_REQUEST_NO);

	HashMap<String, Object> selectOneOpenTrade2(int bOARD_NO);



	
}
