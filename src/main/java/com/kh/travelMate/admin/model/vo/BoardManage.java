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
	private String email;
	private String user_Name;
	private String nick_Name;
	private String phone;
	private String birthDay;
	private String gender;
	private Date enroll_Date;
	
	public BoardManage() {}

	public BoardManage(int board_no, int writer, String category, String title, String content, Date board_date,
			String status, int board_level, int ref_no, String email, String user_Name, String nick_Name, String phone,
			String birthDay, String gender, Date enroll_Date) {
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
		this.email = email;
		this.user_Name = user_Name;
		this.nick_Name = nick_Name;
		this.phone = phone;
		this.birthDay = birthDay;
		this.gender = gender;
		this.enroll_Date = enroll_Date;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public String getNick_Name() {
		return nick_Name;
	}

	public void setNick_Name(String nick_Name) {
		this.nick_Name = nick_Name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getEnroll_Date() {
		return enroll_Date;
	}

	public void setEnroll_Date(Date enroll_Date) {
		this.enroll_Date = enroll_Date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "BoardManage [board_no=" + board_no + ", writer=" + writer + ", category=" + category + ", title="
				+ title + ", content=" + content + ", board_date=" + board_date + ", status=" + status
				+ ", board_level=" + board_level + ", ref_no=" + ref_no + ", email=" + email + ", user_Name="
				+ user_Name + ", nick_Name=" + nick_Name + ", phone=" + phone + ", birthDay=" + birthDay + ", gender="
				+ gender + ", enroll_Date=" + enroll_Date + "]";
	}


	

}
