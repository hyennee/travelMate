package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;
import com.kh.travelMate.admin.model.vo.PaymentRequest;

public interface PaymentManageService {

	int getListCount();

	ArrayList<PaymentManage> paymentList(PageInfo page);

	ArrayList<PaymentManage> selectPaymentDetail(int payment_No);

	int getPaymentRequestListCount();

	int getPaymentRequestListCount(String sel, String string);

	ArrayList<PaymentRequest> paymentRequestList(PageInfo page);

	ArrayList<PaymentRequest> paymentRequestList(PageInfo page, String sel, String string);

	PaymentRequest selectPaymentRequestDetail(int request_no);

	void paymentRequestProcess(int request_no, String string);

}
