package com.kh.travelMate.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.MemberManageDao;
import com.kh.travelMate.admin.model.vo.MemberManage;

@Service
public class MemberManageServiceImpl implements MemberManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberManageDao mmd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public List<MemberManage> memberList() {
		return mmd.memberList();
	}

}
