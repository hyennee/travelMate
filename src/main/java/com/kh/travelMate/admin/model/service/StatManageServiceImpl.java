package com.kh.travelMate.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.StatManageDao;
import com.kh.travelMate.admin.model.vo.StatSummaryManage;

@Service
public class StatManageServiceImpl implements StatManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private StatManageDao smd;

	@Override
	public StatSummaryManage getTodayStats() {
		StatSummaryManage ssm = smd.getTodayStats(sqlSession);
		return ssm;
	}
	

}
