package com.kh.travelMate.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.StatSummaryManage;

public interface StatManageDao {

	StatSummaryManage getTodayStats(SqlSessionTemplate sqlSession);

}
