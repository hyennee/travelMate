package com.kh.travelMate.board.model.vo;

import java.io.Serializable;

public class BoardStatus implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -9098762347777142295L;
	
	private int boardStatusNo;
	private int boardNo;
	private String status;
	
	public BoardStatus() {}

	public BoardStatus(int boardStatusNo, int boardNo, String status) {
		super();
		this.boardStatusNo = boardStatusNo;
		this.boardNo = boardNo;
		this.status = status;
	}

	public int getBoardStatusNo() {
		return boardStatusNo;
	}

	public void setBoardStatusNo(int boardStatusNo) {
		this.boardStatusNo = boardStatusNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BoardStatus [boardStatusNo=" + boardStatusNo + ", boardNo=" + boardNo + ", status=" + status + "]";
	}
}
