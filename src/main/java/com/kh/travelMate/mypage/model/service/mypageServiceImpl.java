package com.kh.travelMate.mypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.travelMate.member.model.exception.LoginException;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.mypage.model.dao.mypageDao;

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
	@Override
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
		
		
	}

	


}
