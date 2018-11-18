package com.kh.travelMate.admin.model.vo;

import java.sql.Date;

public class StatManage {
	// 통계 조회시 날짜 지정
	private Date startDate;
	private Date endDate;
	// 통계 조회시 검색 키워드
	private String queryString;
	// 통계 조회 결과값
	private int statResult;
	
	public StatManage() {}

	public StatManage(Date startDate, Date endDate, String queryString, int statResult) {
		super();
		this.startDate = startDate;
		this.endDate = endDate;
		this.queryString = queryString;
		this.statResult = statResult;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getQueryString() {
		return queryString;
	}

	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}

	public int getStatResult() {
		return statResult;
	}

	public void setStatResult(int statResult) {
		this.statResult = statResult;
	}

	@Override
	public String toString() {
		return "StatManage [startDate=" + startDate + ", endDate=" + endDate + ", queryString=" + queryString
				+ ", statResult=" + statResult + "]";
	}
	
}
