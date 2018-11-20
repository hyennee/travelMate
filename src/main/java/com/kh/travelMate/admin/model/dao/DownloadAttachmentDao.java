package com.kh.travelMate.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.travelMate.admin.model.vo.AttachmentInfo;

public interface DownloadAttachmentDao {

	AttachmentInfo getFile(SqlSessionTemplate sqlSession, int attachMent_No);

}
