package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;
import com.kh.travelMate.admin.model.vo.PaymentRequest;

public interface PaymentManageDao {

	int getListCount(SqlSessionTemplate sqlSession);

	ArrayList<PaymentManage> paymentList(SqlSessionTemplate sqlSession, PageInfo page);

	ArrayList<PaymentManage> paymentDetail(SqlSessionTemplate sqlSession, int payment_No);

	int getPaymentRequestListCount(SqlSessionTemplate sqlSession);

	int getPaymentRequestListCount(SqlSessionTemplate sqlSession, String sel, String val);

	ArrayList<PaymentRequest> paymentRequestList(SqlSessionTemplate sqlSession, PageInfo page);

	ArrayList<PaymentRequest> paymentRequestList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val);

	PaymentRequest paymentRequestDetail(SqlSessionTemplate sqlSession, int request_no);

	void paymentRequestProcess(SqlSessionTemplate sqlSession, int request_no, String string);

}
