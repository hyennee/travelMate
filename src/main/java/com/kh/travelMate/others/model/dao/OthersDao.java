package com.kh.travelMate.others.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.common.Attachment;
import com.kh.travelMate.others.model.vo.ConsultApply;
import com.kh.travelMate.others.model.vo.ConsultRequest;

public interface OthersDao {

	int insertCONSULT_APPLY(ConsultApply ca, SqlSessionTemplate sqlSession);

	int insertConsultRequest(ConsultRequest cr, SqlSessionTemplate sqlSession);

	int insertAttachment(Attachment attachment, SqlSessionTemplate sqlSession);

}
