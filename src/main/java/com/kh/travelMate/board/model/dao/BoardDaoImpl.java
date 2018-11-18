package com.kh.travelMate.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.travelMate.board.model.exception.BoardListException;
import com.kh.travelMate.board.model.vo.Board;
import com.kh.travelMate.board.model.vo.PageInfo;

@Repository
public class BoardDaoImpl implements BoardDao
{
	@Override
	public ArrayList<Board> selectServiceCenterList(SqlSessionTemplate sqlSession, Board b)
	{
		List<Board> list = sqlSession.selectList("Board.serviceCenterList", b);
		
		return (ArrayList<Board>) list;
	}
	
	@Override
	public ArrayList<Board> selectBoardList(SqlSessionTemplate sqlSession, Board b, PageInfo page) throws BoardListException
	{
		List<Board> list = null;
		
		int offset = (page.getCurrentPage() - 1) * page.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		list = sqlSession.selectList("Board.boardList", b, rowBounds);
		
		if(list == null)
		{
			throw new BoardListException("게시글 조회 실패");
		}
		
		return (ArrayList<Board>) list;
	}

	@Override
	public Board selectOne(SqlSessionTemplate sqlSession, Board b)
	{
		Board noticeOne = sqlSession.selectOne("Board.selectOne", b);
		
		return noticeOne;
	}

	@Override
	public int getListCount(SqlSessionTemplate sqlSession, Board b) throws BoardListException
	{
		int result = sqlSession.selectOne("Board.selectListCount", b);
		
		/*if(result <= 0)
		{
			throw new BoardListException("게시글 수 조회 실패");
		}*/
		
		return result;
	}

	@Override
	public int insertBoard(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.insert("Board.insertBoard", b);
	}

	@Override
	public int updateBoard(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.update("Board.updateBoard", b);
	}

	@Override
	public int deleteBoard(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.update("Board.deleteBoard", b);
	}

	@Override
	public int insertAnswerBoard(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.insert("Board.insertAnswerBoard", b);
	}

	@Override
	public ArrayList<Board> selectAnswerBoard(SqlSessionTemplate sqlSession, Board b)
	{
		List<Board> answerList = sqlSession.selectList("Board.selectAnswerList", b);
		
		return (ArrayList<Board>)answerList;
	}

	@Override
	public int updateContent(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.update("Board.updateContent", b);
	}

	@Override
	public Board selectOneRef(SqlSessionTemplate sqlSession, Board b)
	{
		return sqlSession.selectOne("Board.selectOneRef", b);
	}

	@Override
	public ArrayList<Board> selectSearch(SqlSessionTemplate sqlSession, Board b, PageInfo page) throws BoardListException
	{
		List<Board> list = null;
		
		/*System.out.println("seoff : " + b.getSearchCategory());*/
		
		int offset = (page.getCurrentPage() - 1) * page.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, page.getLimit());
		
		if(b.getSearchCategory().equals("title"))
		{
			list = sqlSession.selectList("Board.searchTitleList", b, rowBounds);
		}
		else if(b.getSearchCategory().equals("nick_name"))
		{
			list = sqlSession.selectList("Board.searchNicknameList", b, rowBounds);
		}
		else if(b.getSearchCategory().equals("content"))
		{
			list = sqlSession.selectList("Board.searchContentList", b, rowBounds);
		}
		
		if(list == null)
		{
			throw new BoardListException("게시글 검색 실패");
		}
		return (ArrayList<Board>) list;
	}

	@Override
	public int getListCountSearch(SqlSessionTemplate sqlSession, Board b)
	{
		int result = 0;
		
		if(b.getSearchCategory().equals("title"))
		{
			result = sqlSession.selectOne("Board.selectListCountSearchTitle", b);
		}
		else if(b.getSearchCategory().equals("nick_name"))
		{
			result = sqlSession.selectOne("Board.selectListCountSearchNickname", b);
		}
		else if(b.getSearchCategory().equals("content"))
		{
			result = sqlSession.selectOne("Board.selectListCountSearchContent", b);
		}
		return result;
	}

	@Override
	public Board selectOneAnswer(SqlSessionTemplate sqlSession, Board b)
	{
		Board noticeOne = sqlSession.selectOne("Board.selectOneAnswer", b);
		
		return noticeOne;
	}

	@Override
	public Board selectOneAnswerAdmin(SqlSessionTemplate sqlSession, Board b)
	{
		Board answer = sqlSession.selectOne("Board.selectOneAnswerAdmin", b);
		
		return answer;
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectCSlist(SqlSessionTemplate sqlSession) {
		List<HashMap<String, Object>> list = sqlSession.selectList("Board.selectCSlist"); 
		return (ArrayList<HashMap<String, Object>>)list;
	}


}