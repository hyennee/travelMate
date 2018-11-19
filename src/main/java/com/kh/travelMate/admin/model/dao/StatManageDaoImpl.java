package com.kh.travelMate.admin.model.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.StatSummaryManage;

@Repository
public class StatManageDaoImpl implements StatManageDao {
	@Inject SqlSession sqlsession;

	@Override
	public StatSummaryManage getTodayStats(SqlSessionTemplate sqlSession) {
		int tbc = sqlSession.selectOne("statManage.todayBoardCount");
		int ybc = sqlSession.selectOne("statManage.yesterdayBoardCount");
		int tobc = sqlSession.selectOne("statManage.totalBoardCount");
		int tjmc = sqlSession.selectOne("statManage.todayJoinMemberCount");
		int yjmc = sqlSession.selectOne("statManage.yesterdayJoinMemberCount");
		int tojmc = sqlSession.selectOne("statManage.totalJoinMemberCount");
		int tpm = sqlSession.selectOne("statManage.todayPayment");
		int ypm = sqlSession.selectOne("statManage.yesterdayPayment");
		int topm = sqlSession.selectOne("statManage.totalPayment");
		
		StatSummaryManage ssm = new StatSummaryManage();
		
		ssm.setTodayBoardCount(tbc);
		ssm.setYesterdayBoard(ybc);
		ssm.setTotalBoard(tobc);
		ssm.setTodayJoinMember(tjmc);
		ssm.setYesterdayJoinMember(yjmc);
		ssm.setTotalJoinMember(tojmc);
		ssm.setTodayPayment(tpm);
		ssm.setYesterdayPayment(ypm);
		ssm.setTotalPayment(topm);
		
		return ssm;
	}

}
