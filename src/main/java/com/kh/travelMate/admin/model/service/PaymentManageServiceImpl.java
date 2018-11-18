package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.BoardManageDao;
import com.kh.travelMate.admin.model.dao.PaymentManageDao;
import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;

@Service
public class PaymentManageServiceImpl implements PaymentManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private PaymentManageDao pmd;
	@Autowired
	private DataSourceTransactionManager transactionManager;	

	@Override
	public int getListCount() {
		int listCount = pmd.getListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<PaymentManage> paymentList(PageInfo page) {
		ArrayList<PaymentManage> paymentList = pmd.paymentList(sqlSession, page);
		return paymentList;
	}

}
