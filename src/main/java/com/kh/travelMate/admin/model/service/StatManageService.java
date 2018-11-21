package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.travelMate.admin.model.vo.StatSummaryManage;

public interface StatManageService {

	StatSummaryManage getTodayStats();

	List<HashMap<String,Object>> selectMemberRatio();

	List<HashMap<String, Object>> selectMemberEnroll();

	List<HashMap<String, Object>> selectMonth();


}
