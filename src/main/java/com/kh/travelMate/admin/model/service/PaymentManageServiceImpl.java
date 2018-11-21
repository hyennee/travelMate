package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.BoardManageDao;
import com.kh.travelMate.admin.model.dao.PaymentManageDao;
import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;
import com.kh.travelMate.admin.model.vo.PaymentRequest;

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

	@Override
	public ArrayList<PaymentManage> selectPaymentDetail(int payment_No) {
		ArrayList<PaymentManage> paymentDetail = pmd.paymentDetail(sqlSession, payment_No);
		return paymentDetail;
	}

	@Override
	public int getPaymentRequestListCount() {
		int listCount = pmd.getPaymentRequestListCount(sqlSession);
		return listCount;
	}

	@Override
	public int getPaymentRequestListCount(String sel, String val) {
		int listCount = pmd.getPaymentRequestListCount(sqlSession, sel, val);
		return listCount;
	}

	@Override
	public ArrayList<PaymentRequest> paymentRequestList(PageInfo page) {
		ArrayList<PaymentRequest> paymentRequestList = pmd.paymentRequestList(sqlSession, page);
		return paymentRequestList;
	}

	@Override
	public ArrayList<PaymentRequest> paymentRequestList(PageInfo page, String sel, String val) {
		ArrayList<PaymentRequest> paymentRequestList = pmd.paymentRequestList(sqlSession, page, sel, val);
		return paymentRequestList;
	}

	@Override
	public PaymentRequest selectPaymentRequestDetail(int request_no) {
		PaymentRequest paymentRequestDetail = pmd.paymentRequestDetail(sqlSession, request_no);
		return paymentRequestDetail;
	}

	@Override
	public void paymentRequestProcess(int request_no, String string) {
		pmd.paymentRequestProcess(sqlSession, request_no, string);		
	}

}
