package com.kh.travelMate.mypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.dao.mypageDao;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Service
public class mypageServiceImpl implements mypageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private mypageDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	//거래내역 가져오기
	@Override
	public List<HashMap<String, Object>> tradeInfoHistory(Member loginUser) {
		List<HashMap<String, Object>> tradeInfo = new ArrayList<HashMap<String, Object>>();
		
		tradeInfo = md.tradeInfoHistory(sqlSession,loginUser);
		
		System.out.println("ms.tradeInfo갔다왔니 ? : " + tradeInfo);
		
		for(int i = 0; i < tradeInfo.size(); i++) {
			System.out.println(tradeInfo.get(i).get("tradeInfoHistory"));
		}
		
		
		return tradeInfo;
	}
	//1:1문의내역 가져오기
	@Override
	public List<HashMap<String, Object>> oneByOneHistory(Member loginUser) {
		List<HashMap<String, Object>> oneByOne = new ArrayList<HashMap<String, Object>>();
		
		oneByOne = md.oneByOneHistory(sqlSession,loginUser);
		
		System.out.println("oneByOne갔다왔니 ? : " + oneByOne);
		
		for(int i = 0; i < oneByOne.size(); i++) {
			System.out.println(oneByOne.get(i).get("oneByOneHistory"));
		}
		
		return oneByOne;
	}
	
	//사이버머니내역 가져오기
	@Override
	public List<HashMap<String, Object>> cyberMoneyHistory(Member loginUser) {
		List<HashMap<String, Object>> cyberMoney = new ArrayList<HashMap<String, Object>>();
		
		cyberMoney = md.cyberMoneyHistory(sqlSession,loginUser);
		
		
		for(int i = 0; i < cyberMoney.size(); i++) {
			System.out.println(cyberMoney.get(i).get("CYBERMONEY_RECORD_NO"));
		}
		return cyberMoney;
	}
	
	//정보수정
	@Override
	public int modifyInfo(Member mem) {
		
		int modifyInfo = md.modifyInfo(sqlSession, mem);
		
		System.out.println("modifyInfo : " + modifyInfo);
		
		return modifyInfo;
	}
	
	
	//닉네임 중복체크
	@Override
	public int nickNameCheck(String nick_name) {
		// TODO Auto-generated method stub
		return md.nickNameCheck(sqlSession, nick_name);
	}
	
	
	@Override
	public void insertCyberMoney(int parseInt, Member loginUser, String imp_uid) {
		md.insertCyberMoney(parseInt, loginUser, imp_uid, sqlSession);
	}

	@Override
	public void insertCyberMoney2(int parseInt, Member loginUser, String imp_uid) {
		md.insertCyberMoney2(parseInt, loginUser, imp_uid, sqlSession);
		
	}
	
	//비밀번호 변경 시 현재비밀번호 일치하는지 체크
/*	@Override
	public String checkpwd(Member m) {
		
		//1. 암호화 된 비밀번호를 조회해오기
		String encPassword =  md.checkpwd(m.getUser_no(), sqlSession);
				
		//2. 조회해온 암호화 된 비밀번호와 평문 비밀번호를 비교해본다.
		if(!passwordEncoder.matches(m.getPassword(), encPassword)){
			//두개의 비밀번호가 같지 않으면 exception발생시킴
			System.out.println("비번틀림");
			return "must/errorPage";
		}else {
			//두개가 일치하는지 비교 일치하면 회원 정보를 조회해온다
			return encPassword;
		}
		
		
	}*/
	
	//비밀번호 변경
	@Override
	public int updatepwd(Member m) {
		
		return md.updatepwd(sqlSession, m);
	}
	
	//비밀번호 일치하는지
	@Override
	public String checkpwd(Member m) {
		
		return md.checkpwd(sqlSession, m);
	}
	@Override
	public int cyberMoney(int user_no) {
		
		return md.cyberMoney(sqlSession, user_no);
	}
	@Override
	public void insertCyberMoney3(int parseInt, Member loginUser, String account_name, String account_no) {
		md.insertCyberMoney3(parseInt, loginUser, account_name, account_no, sqlSession);
	}
	@Override
	public List<HashMap<String, Object>> consultingCustomerHistory(Member loginUser) {
		List<HashMap<String, Object>> consultingCustomerHistory = md.consultingCustomerHistory(sqlSession,loginUser);
		
		System.out.println("ms.consultingCustomerHistory갔다왔니 ? : " + consultingCustomerHistory);
		
		for(int i = 0; i < consultingCustomerHistory.size(); i++) {
			System.out.println(consultingCustomerHistory.get(i).get("tradeInfoHistory"));
		}
		
		
		return consultingCustomerHistory;
	}
	@Override
	public List<HashMap<String, Object>> cyberMoneyStatus(Member loginUser) {
		
		return  md.cyberMoneyStatus(sqlSession,loginUser);
		
	}
	@Override
	public void insertCyberMoney4(int parseInt, Member loginUser, String imp_uid) {
		md.insertCyberMoney4(parseInt, loginUser, imp_uid, sqlSession);
		
	}
	
	//유저타입레벨 '탈퇴회원'으로 변경
	@Override
	public int updateCancel(Member m) {
		// TODO Auto-generated method stub
		return md.updateCancel(sqlSession, m);
	}
	
	//상세보기 1:1
	@Override
	public Board selectOneByOneBoard(int boardNo) {
		
		return md.selectOneByOneBoard(sqlSession, boardNo);
	}
	
//	거래내역 상세보기
	@Override
	public ConsultRequest selectOneTrade(int consultNo) {
		
		
		return md.selectOneTrade(sqlSession, consultNo);
	}
	

	


}
