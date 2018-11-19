package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.PageInfo;
import com.kh.travelMate.admin.model.vo.PaymentManage;

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

}
