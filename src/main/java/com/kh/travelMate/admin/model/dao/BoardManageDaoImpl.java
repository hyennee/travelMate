package com.kh.travelMate.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.admin.model.vo.BoardManage;
import com.kh.travelMate.admin.model.vo.ConsultManage;
import com.kh.travelMate.admin.model.vo.MemberManage;
import com.kh.travelMate.admin.model.vo.PageInfo;

@Repository
public class BoardManageDaoImpl implements BoardManageDao {
	@Inject SqlSession sqlsession;
	
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("BoardManage.boardListCount");
	}

	@Override
	public ArrayList<BoardManage> boardList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<BoardManage> boardList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		System.out.println("offset: " + offset);
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		System.out.println("rowBounds: " + rowBounds);
		
		// generic을 제외하고 down-casting
		boardList = (ArrayList)sqlSession.selectList("BoardManage.boardList", null, rowBounds);
		
		return boardList;
	}

	@Override
	public int getConsultApplyListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("BoardManage.consultApplyListCount");
	}

	@Override
	public ArrayList<ConsultManage> consultApplyList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<ConsultManage> consultApplyList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		System.out.println("offset: " + offset);
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		System.out.println("rowBounds: " + rowBounds);
		
		// generic을 제외하고 down-casting
		consultApplyList = (ArrayList)sqlSession.selectList("BoardManage.consultApplyList", null, rowBounds);
		
		return consultApplyList;
	}

	@Override
	public ConsultManage selectApplyDetail(SqlSessionTemplate sqlSession, int apply_no) {
		ConsultManage selectApplyDetail = (ConsultManage)sqlSession.selectOne("BoardManage.consultApplyDetail", apply_no);
		return selectApplyDetail;
	}

	@Override
	public void consultApplyAccept(SqlSessionTemplate sqlSession, ConsultManage selectApplyDetail) {
		sqlSession.insert("BoardManage.consultApplyAccept", selectApplyDetail);
		sqlSession.update("BoardManage.consultApplyAcceptSuccess", selectApplyDetail);
	}

	@Override
	public void consultApplyRefuse(SqlSessionTemplate sqlSession, ConsultManage selectApplyDetail) {
		sqlSession.insert("BoardManage.consultApplyRefuse", selectApplyDetail);
	}

	@Override
	public ArrayList<BoardManage> selectBoardDetail(SqlSessionTemplate sqlSession, int board_no) {
		ArrayList<BoardManage> boardDetail = (ArrayList)sqlSession.selectList("BoardManage.selectBoardDetail", board_no);
		return boardDetail;
	}

	@Override
	public void updateBoardDetail(SqlSessionTemplate sqlSession, BoardManage modifyBoard) {
		sqlSession.update("BoardManage.updateBoardDetail", modifyBoard);
	}

	@Override
	public BoardManage selectBoardDetailOne(SqlSessionTemplate sqlSession, int board_no) {
		BoardManage selectBoardDetailOne = (BoardManage)sqlSession.selectOne("BoardManage.selectBoardDetailOne", board_no);
		return selectBoardDetailOne;
	}

	@Override
	public void deleteBoardAll(SqlSessionTemplate sqlSession, int board_no) {
		sqlSession.update("BoardManage.deleteBoardAll", board_no);
	}

	@Override
	public void insertBoardReply(SqlSessionTemplate sqlSession, BoardManage replyBoardInfo) {
		sqlSession.insert("BoardManage.insertBoardReply", replyBoardInfo);
		sqlSession.update("BoardManage.updateBoardReplyStatus", replyBoardInfo.getRef_no());
	}

	@Override
	public int getnoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("BoardManage.noticeListCount");
	}

	@Override
	public ArrayList<BoardManage> noticeList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<BoardManage> noticeList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		// generic을 제외하고 down-casting
		noticeList = (ArrayList)sqlSession.selectList("BoardManage.noticeList", null, rowBounds);
		
		return noticeList;
	}

	@Override
	public void insertNotice(SqlSessionTemplate sqlSession, BoardManage noticeBoard) {
		sqlSession.insert("BoardManage.insertNotice", noticeBoard);
	}

	@Override
	public ArrayList<BoardManage> getOTOboardList(SqlSessionTemplate sqlSession) {
		ArrayList<BoardManage> otoBoardList = null;
		otoBoardList = (ArrayList)sqlSession.selectList("BoardManage.getOTOboardList");
		return otoBoardList;
	}

	@Override
	public int getListCount(SqlSessionTemplate sqlSession, String sel, String val) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sel", sel);
		map.put("val", val);
		return sqlSession.selectOne("BoardManage.boardListCount", map);
	}

	@Override
	public ArrayList<BoardManage> boardList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val) {
		ArrayList<BoardManage> boardList = null;
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
		boardList = (ArrayList)sqlSession.selectList("BoardManage.boardList", map, rowBounds);
		
		return boardList;
	}

	@Override
	public ArrayList<BoardManage> getRecentBoardList(SqlSessionTemplate sqlSession) {
		ArrayList<BoardManage> recentBoardList = null;
		recentBoardList = (ArrayList)sqlSession.selectList("BoardManage.getRecentBoardList");
		return recentBoardList;
	}

	@Override
	public int getOpenConsultListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("BoardManage.openConsultListCount");
	}

	@Override
	public int getOpenConsultListCount(SqlSessionTemplate sqlSession, String sel, String val) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sel", sel);
		map.put("val", val);
		return sqlSession.selectOne("BoardManage.openConsultListCount", map);
	}

	@Override
	public ArrayList<BoardManage> openConsultList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<BoardManage> openConsultList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		System.out.println("offset: " + offset);
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		System.out.println("rowBounds: " + rowBounds);
		
		// generic을 제외하고 down-casting
		openConsultList = (ArrayList)sqlSession.selectList("BoardManage.openConsultList", null, rowBounds);
		
		return openConsultList;
	}

	@Override
	public ArrayList<BoardManage> openConsultList(SqlSessionTemplate sqlSession, PageInfo page, String sel,
			String val) {
		ArrayList<BoardManage> openConsultList = null;
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
		openConsultList = (ArrayList)sqlSession.selectList("BoardManage.openConsultList", map, rowBounds);
		
		return openConsultList;
	}

	@Override
	public int getOneToOneListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("BoardManage.oneToOneListCount");
	}

	@Override
	public int getOneToOneListCount(SqlSessionTemplate sqlSession, String sel, String val) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sel", sel);
		map.put("val", val);
		return sqlSession.selectOne("BoardManage.oneToOneListCount", map);
	}

	@Override
	public ArrayList<BoardManage> oneToOneList(SqlSessionTemplate sqlSession, PageInfo page) {
		ArrayList<BoardManage> oneToOneList = null;
		
		// 몇 개의 게시물을 건너뛰고 조회할 것인지에 대한 처리
		int offset = ((page.getCurrentPage() - 1) * page.getLimit());
		
		System.out.println("offset: " + offset);
		
		// myBatis가 제공하고 있는 RowBounds 클래스 사용
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		System.out.println("rowBounds: " + rowBounds);
		
		// generic을 제외하고 down-casting
		oneToOneList = (ArrayList)sqlSession.selectList("BoardManage.oneToOneList", null, rowBounds);
		
		return oneToOneList;
	}

	@Override
	public ArrayList<BoardManage> oneToOneList(SqlSessionTemplate sqlSession, PageInfo page, String sel, String val) {
		ArrayList<BoardManage> oneToOneList = null;
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
		oneToOneList = (ArrayList)sqlSession.selectList("BoardManage.oneToOneList", map, rowBounds);
		
		return oneToOneList;
	}

}
