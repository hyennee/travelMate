package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;

public interface PaymentManageService {

	int getListCount();

	ArrayList<PaymentManage> paymentList(PageInfo page);

	ArrayList<PaymentManage> selectPaymentDetail(int payment_No);

}
