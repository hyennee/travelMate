package com.kh.travelMate.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class MemberManage implements Serializable {
	private int user_no;
	private String email;
	private String password;
	private String user_name;
	private String nick_name;
	private String phone;
	private String birthday;
	private String gender;
	private Date enroll_date;
	private Date modify_date;
	private String user_type;
	private String bank_no;
	private int cybermoney;
	private Date cm_modify_date;
	private String bank;
	private String user_type_level;
	
	public MemberManage() {}

	public MemberManage(int user_no, String email, String password, String user_name, String nick_name, String phone,
			String birthday, String gender, Date enroll_date, Date modify_date, String user_type, String bank_no,
			int cybermoney, Date cm_modify_date, String bank, String user_type_level) {
		super();
		this.user_no = user_no;
		this.email = email;
		this.password = password;
		this.user_name = user_name;
		this.nick_name = nick_name;
		this.phone = phone;
		this.birthday = birthday;
		this.gender = gender;
		this.enroll_date = enroll_date;
		this.modify_date = modify_date;
		this.user_type = user_type;
		this.bank_no = bank_no;
		this.cybermoney = cybermoney;
		this.cm_modify_date = cm_modify_date;
		this.bank = bank;
		this.user_type_level = user_type_level;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}

	public Date getModify_date() {
		return modify_date;
	}

	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getBank_no() {
		return bank_no;
	}

	public void setBank_no(String bank_no) {
		this.bank_no = bank_no;
	}

	public int getCybermoney() {
		return cybermoney;
	}

	public void setCybermoney(int cybermoney) {
		this.cybermoney = cybermoney;
	}

	public Date getCm_modify_date() {
		return cm_modify_date;
	}

	public void setCm_modify_date(Date cm_modify_date) {
		this.cm_modify_date = cm_modify_date;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getUser_type_level() {
		return user_type_level;
	}

	public void setUser_type_level(String user_type_level) {
		this.user_type_level = user_type_level;
	}

	@Override
	public String toString() {
		return "MemberManage [user_no=" + user_no + ", email=" + email + ", password=" + password + ", user_name="
				+ user_name + ", nick_name=" + nick_name + ", phone=" + phone + ", birthday=" + birthday + ", gender="
				+ gender + ", enroll_date=" + enroll_date + ", modify_date=" + modify_date + ", user_type=" + user_type
				+ ", bank_no=" + bank_no + ", cybermoney=" + cybermoney + ", cm_modify_date=" + cm_modify_date
				+ ", bank=" + bank + ", user_type_level=" + user_type_level + "]";
	}

}
