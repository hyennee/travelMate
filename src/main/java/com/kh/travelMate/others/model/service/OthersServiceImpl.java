package com.kh.travelMate.others.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.common.Attachment;
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
	public int insertCONSULT_APPLY(ConsultApply ca, Attachment attachment)
	{
		int result = 0;
		int conResult = od.insertCONSULT_APPLY(ca, sqlSession);
		int attResult = od.insertAttachment(attachment, sqlSession);
		
		if(conResult > 0 && attResult > 0)
		{
			result = 1;
			
			return result;			
		}
		return 0;
	}


	@Override
	public int insertConsultRequest(ConsultRequest cr) {
		int result = od.insertConsultRequest(cr, sqlSession);
		
		return result;
	}

}