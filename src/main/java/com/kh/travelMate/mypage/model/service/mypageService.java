package com.kh.travelMate.mypage.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.travelMate.member.model.vo.Member;

public interface mypageService {

	List<HashMap<String, Object>> tradeInfoHistory(Member loginUser);

	List<HashMap<String, Object>> oneByOneHistory(Member loginUser);

	List<HashMap<String, Object>> cyberMoneyHistory(Member loginUser);

	int modifyInfo(Member m);




}
