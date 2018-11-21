package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;
import com.kh.travelMate.admin.model.vo.PaymentRequest;

@Repository
public class PaymentManageDaoImpl implements PaymentManageDao{

	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("PaymentManage.paymentListCount");
	}

	@Override
	public ArrayList<PaymentManage> paymentList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<PaymentManage> paymentList = null;
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());

		System.out.println("offset: " + offset);

		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());

		System.out.println("rowBounds: " + rowBounds);

		// generic을 제외하고 down-casting
		paymentList = (ArrayList)sqlSession.selectList("PaymentManage.paymentList", null, rowBounds);

		return paymentList;
	}

	@Override
	public ArrayList<PaymentManage> paymentDetail(SqlSessionTemplate sqlSession, int payment_No) {
		ArrayList<PaymentManage> paymentDetail = (ArrayList)sqlSession.selectList("PaymentManage.selectPaymentDetail", payment_No);
		return paymentDetail;
	}

	@Override
	public int getPaymentRequestListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("PaymentManage.paymentRequestListCount");
	}

	@Override
	public int getPaymentRequestListCount(SqlSessionTemplate sqlSession, String sel, String val) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sel", sel);
		map.put("val", val);
		return sqlSession.selectOne("PaymentManage.paymentRequestListCount", map);
	}

	@Override
	public ArrayList<PaymentRequest> paymentRequestList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<PaymentRequest> paymentRequestList = null;

		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());

		System.out.println("offset: " + offset);

		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());

		System.out.println("rowBounds: " + rowBounds);

		// generic을 제외하고 down-casting
		paymentRequestList = (ArrayList)sqlSession.selectList("paymentRequestList", null, rowBounds);

		return paymentRequestList;
	}

	@Override
	public ArrayList<PaymentRequest> paymentRequestList(SqlSessionTemplate sqlSession, PageInfo page, String sel,
			String val) {
		ArrayList<PaymentRequest> paymentRequestList = null;
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sel", sel);
		map.put("val", val);
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());

		System.out.println("offset: " + offset);

		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());

		System.out.println("rowBounds: " + rowBounds);

		// generic을 제외하고 down-casting
		paymentRequestList = (ArrayList)sqlSession.selectList("PaymentManage.paymentRequestList", map, rowBounds);

		return paymentRequestList;
	}

	@Override
	public PaymentRequest paymentRequestDetail(SqlSessionTemplate sqlSession, int request_no) {
		PaymentRequest paymentRequestDetail = (PaymentRequest)sqlSession.selectOne("PaymentManage.paymentRequestDetail", request_no);
		return paymentRequestDetail;
	}

	@Override
	public void paymentRequestProcess(SqlSessionTemplate sqlSession, int request_no, String string) {
		if(string.equals("Approve")) {
			sqlSession.update("PaymentManage.paymentRequestApprove", request_no);
		}else {
			PaymentRequest paymentRequestDetail = (PaymentRequest)sqlSession.selectOne("PaymentManage.paymentRequestDetail", request_no);
			int money = paymentRequestDetail.getMoney();
			sqlSession.update("PaymentManage.paymentRequestRefund", paymentRequestDetail);
			sqlSession.insert("PaymentManage.paymentRequestRefundRecord", paymentRequestDetail);
			sqlSession.update("PaymentManage.paymentRequestRefuse", request_no);
		}
	}

}
