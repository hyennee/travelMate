package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.StatSummaryManage;

public interface StatManageDao {

	StatSummaryManage getTodayStats(SqlSessionTemplate sqlSession);

	List<HashMap<String,Object>> selectMemberRatio(SqlSessionTemplate sqlSession);

	List<HashMap<String, Object>> selectMemberEnroll(SqlSessionTemplate sqlSession);

	List<HashMap<String, Object>> selectMonth(SqlSessionTemplate sqlSession);

}
