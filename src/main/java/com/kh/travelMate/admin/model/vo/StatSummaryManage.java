package com.kh.travelMate.admin.model.vo;

import java.sql.Date;

public class StatSummaryManage {
	private int todayJoinMember;
	private int yesterdayJoinMember;
	private int totalJoinMember;
	private int todayBoardCount;
	private int yesterdayBoard;
	private int totalBoard;
	private int todayPayment;
	private int yesterdayPayment;
	private int totalPayment;
	private Date today;
	
	public StatSummaryManage() {}

	public StatSummaryManage(int todayJoinMember, int yesterdayJoinMember, int totalJoinMember, int todayBoardCount,
			int yesterdayBoard, int totalBoard, int todayPayment, int yesterdayPayment, int totalPayment, Date today) {
		super();
		this.todayJoinMember = todayJoinMember;
		this.yesterdayJoinMember = yesterdayJoinMember;
		this.totalJoinMember = totalJoinMember;
		this.todayBoardCount = todayBoardCount;
		this.yesterdayBoard = yesterdayBoard;
		this.totalBoard = totalBoard;
		this.todayPayment = todayPayment;
		this.yesterdayPayment = yesterdayPayment;
		this.totalPayment = totalPayment;
		this.today = today;
	}

	public int getTodayJoinMember() {
		return todayJoinMember;
	}

	public void setTodayJoinMember(int todayJoinMember) {
		this.todayJoinMember = todayJoinMember;
	}

	public int getYesterdayJoinMember() {
		return yesterdayJoinMember;
	}

	public void setYesterdayJoinMember(int yesterdayJoinMember) {
		this.yesterdayJoinMember = yesterdayJoinMember;
	}

	public int getTotalJoinMember() {
		return totalJoinMember;
	}

	public void setTotalJoinMember(int totalJoinMember) {
		this.totalJoinMember = totalJoinMember;
	}

	public int getTodayBoardCount() {
		return todayBoardCount;
	}

	public void setTodayBoardCount(int todayBoardCount) {
		this.todayBoardCount = todayBoardCount;
	}

	public int getYesterdayBoard() {
		return yesterdayBoard;
	}

	public void setYesterdayBoard(int yesterdayBoard) {
		this.yesterdayBoard = yesterdayBoard;
	}

	public int getTotalBoard() {
		return totalBoard;
	}

	public void setTotalBoard(int totalBoard) {
		this.totalBoard = totalBoard;
	}

	public int getTodayPayment() {
		return todayPayment;
	}

	public void setTodayPayment(int todayPayment) {
		this.todayPayment = todayPayment;
	}

	public int getYesterdayPayment() {
		return yesterdayPayment;
	}

	public void setYesterdayPayment(int yesterdayPayment) {
		this.yesterdayPayment = yesterdayPayment;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public Date getToday() {
		return today;
	}

	public void setToday(Date today) {
		this.today = today;
	}

	@Override
	public String toString() {
		return "StatSummaryManage [todayJoinMember=" + todayJoinMember + ", yesterdayJoinMember=" + yesterdayJoinMember
				+ ", totalJoinMember=" + totalJoinMember + ", todayBoardCount=" + todayBoardCount + ", yesterdayBoard="
				+ yesterdayBoard + ", totalBoard=" + totalBoard + ", todayPayment=" + todayPayment
				+ ", yesterdayPayment=" + yesterdayPayment + ", totalPayment=" + totalPayment + ", today=" + today
				+ "]";
	}
	
	

}
