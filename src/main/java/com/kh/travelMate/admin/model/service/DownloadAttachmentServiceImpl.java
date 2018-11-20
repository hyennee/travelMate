package com.kh.travelMate.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.DownloadAttachmentDao;
import com.kh.travelMate.admin.model.vo.AttachmentInfo;

@Service
public class DownloadAttachmentServiceImpl implements DownloadAttachmentService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DownloadAttachmentDao dad;

	@Override
	public AttachmentInfo getFile(int attachMent_No) {
		AttachmentInfo ai = dad.getFile(sqlSession, attachMent_No);
		return ai;
	}

}
