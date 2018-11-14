package com.kh.travelMate.mypage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.member.model.vo.Member;

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
	public void insertCyberMoney(int parseInt, Member loginUser, String imp_uid, SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("imp_uid", imp_uid);
		sqlSession.insert("Mypage.insertCyberMoney", a);
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

	@Override
	public int updatepwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Mypage.updatepwd", m);
	}

	@Override
	public String checkpwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Mypage.checkpwd", m.getUser_no());
	}

	@Override
	public int cyberMoney(SqlSessionTemplate sqlSession, int user_no) {
		
		return sqlSession.selectOne("Mypage.cyberMoney", user_no);
	}

	@Override
	public void insertCyberMoney3(int parseInt, Member loginUser, String account_name, String account_no,
			SqlSessionTemplate sqlSession) {
		Map<String, Object> a = new HashMap<String, Object>();
		a.put("money", parseInt);
		a.put("userNo", loginUser.getUser_no());
		a.put("account_name", account_name);
		a.put("account_no", account_no);
		sqlSession.insert("Mypage.insertCyberMoney4", a);
		sqlSession.insert("Mypage.insertCyberMoney3", a);
		
	}

	@Override
	public List<HashMap<String, Object>> consultingCustomerHistory(SqlSessionTemplate sqlSession, Member loginUser) {
		return sqlSession.selectList("Mypage.consultingCustomerHistory", loginUser.getUser_no());
	}
	

}
