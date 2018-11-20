package com.kh.travelMate.admin.model.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.AttachmentInfo;

@Repository
public class DownloadAttachmentDaoImpl implements DownloadAttachmentDao {
	@Inject SqlSession sqlsession;

	@Override
	public AttachmentInfo getFile(SqlSessionTemplate sqlSession, int attachMent_No) {
		return sqlSession.selectOne("BoardManage.getFileInfo", attachMent_No);
	}

}
