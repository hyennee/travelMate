package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;

public interface PaymentManageDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<PaymentManage> paymentList(SqlSessionTemplate sqlSession, PageInfo page);

	ArrayList<PaymentManage> paymentDetail(SqlSessionTemplate sqlSession, int payment_No);

}
