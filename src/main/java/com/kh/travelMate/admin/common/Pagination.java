package com.kh.travelMate.admin.common;

import com.kh.travelMate.admin.model.vo.PageInfo;

public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int listCount){
		PageInfo pi = null;
		
		int limit = 10;			// 한 페이지에 보여줄 게시물 수 설정
		int buttonCount = 10;	// 한 페이지 밑에 보여줄 페이징 버튼의 수
		int maxPage;			// 전체 페이지에서 가장 마지막 페이지
		int startPage;			// 한 번에 표시될 페이지 버튼의 시작 페이지
		int endPage;			// 한 번에 표시될 페이지 버튼의 끝나는 페이지
		
		// 총 페이지 수 계산
		maxPage = (int)((double)listCount / limit + 0.9);
		
		// 시작 페이지 계산
		startPage = (((int)((double)currentPage / buttonCount + 0.9)) - 1 ) * buttonCount + 1;
		
		// 마지막 페이지 계산
		endPage = startPage + buttonCount - 1;
		
		if(maxPage < endPage){
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		return pi;
	}
}
