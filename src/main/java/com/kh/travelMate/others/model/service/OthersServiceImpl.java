package com.kh.travelMate.others.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.others.model.dao.OthersDao;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

@Service
public class OthersServiceImpl implements OthersService {

	@Autowired
	private OthersDao od;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertCONSULT_APPLY(ConsultApply ca) {
		
		int result = od.insertCONSULT_APPLY(ca, sqlSession);
		
		return result;
	}


	@Override
	public int insertConsultRequest(ConsultRequest cr) {
		int result = od.insertConsultRequest(cr, sqlSession);
		
		return result;
	}

}
