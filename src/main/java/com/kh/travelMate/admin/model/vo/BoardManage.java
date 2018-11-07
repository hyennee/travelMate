package com.kh.travelMate.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardManage implements Serializable{
	private static final long serialVersionUID = -1524759584786334407L;
	private int board_no;
	private int writer;
	private String category;
	private String title;
	private String content;
	private Date board_date;
	private String status;
	private int board_level;
	private int ref_no;
	
	public BoardManage() {}

	public BoardManage(int board_no, int writer, String category, String title, String content, Date board_date,
			String status, int board_level, int ref_no) {
		super();
		this.board_no = board_no;
		this.writer = writer;
		this.category = category;
		this.title = title;
		this.content = content;
		this.board_date = board_date;
		this.status = status;
		this.board_level = board_level;
		this.ref_no = ref_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
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

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBoard_level() {
		return board_level;
	}

	public void setBoard_level(int board_level) {
		this.board_level = board_level;
	}

	public int getRef_no() {
		return ref_no;
	}

	public void setRef_no(int ref_no) {
		this.ref_no = ref_no;
	}

	@Override
	public String toString() {
		return "BoardManage [board_no=" + board_no + ", writer=" + writer + ", category=" + category + ", title="
				+ title + ", content=" + content + ", board_date=" + board_date + ", status=" + status
				+ ", board_level=" + board_level + ", ref_no=" + ref_no + "]";
	}	
	

}
