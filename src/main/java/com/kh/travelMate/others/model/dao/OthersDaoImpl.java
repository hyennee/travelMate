package com.kh.travelMate.others.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Repository
public class OthersDaoImpl implements OthersDao{

	@Override
	public int insertCONSULT_APPLY(ConsultApply ca, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("Others.insertCONSULT_APPLY", ca);
	}

	@Override
	public int insertConsultRequest(ConsultRequest cr, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("Others.insertConsultRequest", cr);
	}

}
