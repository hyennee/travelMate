package com.kh.travelMate.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3839253641079080139L;
	
	private int boardNo;			//게시글 ID
	private int rowNum;				//글 번호
	private int write;				//게시글 작성자(JOIN)의 멤버 ID
	private String writer;			//게시글 작성자
	private String category;
	private String title;			//제목
	private String content;			//내용
	private Date boardDate;			//작성일자
	private String status;			//상태
	private int boardLevel;			//게시글 레벨
	private int refNo;				//참조 게시글번호
	
	public Board() {}

	public Board(int rowNum, int boardNo, int write, String writer, String category, String title, String content,
			Date boardDate, String status, int boardLevel, int refNo) {
		super();
		this.rowNum = rowNum;
		this.boardNo = boardNo;
		this.write = write;
		this.writer = writer;
		this.category = category;
		this.title = title;
		this.content = content;
		this.boardDate = boardDate;
		this.status = status;
		this.boardLevel = boardLevel;
		this.refNo = refNo;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getWrite() {
		return write;
	}

	public void setWrite(int write) {
		this.write = write;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBoardLevel() {
		return boardLevel;
	}

	public void setBoardLevel(int boardLevel) {
		this.boardLevel = boardLevel;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [rowNum=" + rowNum + ", boardNo=" + boardNo + ", write=" + write + ", writer=" + writer
				+ ", category=" + category + ", title=" + title + ", content=" + content + ", boardDate=" + boardDate
				+ ", status=" + status + ", boardLevel=" + boardLevel + ", refNo=" + refNo + "]";
	}
}