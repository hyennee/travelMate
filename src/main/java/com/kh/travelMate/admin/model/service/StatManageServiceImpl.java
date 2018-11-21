package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<HashMap<String,Object>> selectMemberRatio() {
		return smd.selectMemberRatio(sqlSession);
	}

	@Override
	public List<HashMap<String, Object>> selectMemberEnroll() {
		return smd.selectMemberEnroll(sqlSession);
	}

	@Override
	public List<HashMap<String, Object>> selectMonth() {
		return smd.selectMonth(sqlSession);
	}
	

}
