package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.member.model.vo.Member;
import com.kh.travelMate.others.model.vo.ConsultRequest;
import com.kh.travelMate.others.model.vo.ConsultRequest2;

@Repository
public class mypageDaoImpl implements mypageDao{

	@Override
	public List<HashMap<String, Object>> tradeInfoHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		
		//return sqlSession.selectList(Mypage);
		return sqlSession.selectList("Mypage.tradeInfoHistory", loginUser.getUser_no());
	}

	@Override
	public List<HashMap<String, Object>> oneByOneHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectList("Mypage.oneByOneHistory", loginUser.getUser_no());
	}

	@Override
	public List<HashMap<String, Object>> cyberMoneyHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectList("Mypage.cyberMoneyHistory",loginUser.getUser_no());
	}

	@Override
	public int modifyInfo(SqlSessionTemplate sqlSession, Member mem) {
		return sqlSession.update("Mypage.modifyUserInfo", mem);
	}

	@Override
	public int nickNameCheck(SqlSessionTemplate sqlSession, String nick_name) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Mypage.nickNameCheck", nick_name);
	}


	@Override
	public void insertCyberMoney2(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("imp_uid", imp_uid);
		sqlSession.insert("Mypage.insertCyberMoney2", a);
		
	}
	
/*// 비밀번호 체크
	@Override
	public String checkpwd(int user_no, SqlSessionTemplate sqlSession) {	
		return sqlSession.selectOne("Mypage.checkpwd", user_no);
	}*/

	//비번 변경하기
	@Override
	public int updatepwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Mypage.updatepwd", m);
	}

	//비번이 일치하는지
	@Override
	public String checkpwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Mypage.checkpwd", m.getUser_no());
	}

	@Override
	public int cyberMoney(SqlSessionTemplate sqlSession, int user_no) {
		
		return sqlSession.selectOne("Mypage.cyberMoney", user_no);
	}

	@Override
	public void insertCyberMoney(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("imp_uid", imp_uid);
		sqlSession.insert("Mypage.insertCyberMoney", a);
	}
	
	@Override
	public void insertCyberMoney3(int parseInt, Member loginUser, String account_name, String account_no,
			SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("account_name", account_name);
		a.put("account_no", account_no);
		sqlSession.insert("Mypage.insertCyberMoney3", a);
		sqlSession.insert("Mypage.insertCyberMoney4", a);
		
	}

	@Override
	public List<HashMap<String, Object>> consultingCustomerHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectList("Mypage.consultingCustomerHistory", loginUser.getUser_no());
	}

	@Override
	public List<HashMap<String, Object>> cyberMoneyStatus(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectList("Mypage.cyberMoneyStatus",loginUser.getUser_no());
	}

	@Override
	public void insertCyberMoney4(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("imp_uid", imp_uid);
		sqlSession.insert("Mypage.insertCyberMoney5", a);
	}

	//탈퇴회원으로 변경하기
	@Override
	public int updateCancel(SqlSessionTemplate sqlSession, Member m) {
		
		
		return  sqlSession.update("Mypage.updateCancel", m);
	}

	//1:1 상세보기 
	@Override
	public Board selectOneByOneBoard(SqlSessionTemplate sqlSession, int boardNo) {
		
		System.out.println("md의 1:1상세보기 리스트 : " + boardNo);
		return sqlSession.selectOne("Mypage.selectOneByOneBoard", boardNo);
	}

	@Override
	public HashMap<String, Object> selectProfile(SqlSessionTemplate sqlSession, int user_no) {
		
		return sqlSession.selectOne("Mypage.selectProfile", user_no);
	}
	
	@Override
	public void insertProfile(SqlSessionTemplate sqlSession, Map<String, Object> data) {
		sqlSession.update("Mypage.insertProfile", data);
	}

	@Override
	public void insertProfileAttachment(SqlSessionTemplate sqlSession, Attachment attachment) {
		sqlSession.update("Mypage.insertProfileAttachment", attachment);
	}

	@Override
	public String selectProfileAttachment(SqlSessionTemplate sqlSession, int user_no) {
		return sqlSession.selectOne("Mypage.selectProfileAttachment", user_no);
	}
    
//	거래내역 상세보기
	@Override
	public ConsultRequest2 selectOneTrade(SqlSessionTemplate sqlSession, int consultNo) {
		
		System.out.println("md의 거래내역 상세보기 프라임키 잘 전달? : " + consultNo);
		return sqlSession.selectOne("Mypage.selectOneTrade", consultNo);

	}
	
	
	

}
