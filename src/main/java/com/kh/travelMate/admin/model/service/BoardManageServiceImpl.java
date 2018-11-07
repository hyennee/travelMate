package com.kh.travelMate.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.travelMate.admin.model.dao.BoardManageDao;
import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Service
public class BoardManageServiceImpl implements BoardManageService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private BoardManageDao bmd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Override
	public int getListCount() {
		int listCount = bmd.getListCount(sqlSession);
		return listCount;
	}

	@Override
	public ArrayList<BoardManage> boardList(PageInfo page) {
		ArrayList<BoardManage> boardList = bmd.boardList(sqlSession, page);
		return boardList;
	}

}