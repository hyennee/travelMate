package com.kh.travelMate.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ConsultManage implements Serializable {
	private static final long serialVersionUID = 1213323016272387223L;
	private int consult_Apply_No;
	private Date apply_Date;
	private String job;
	private String info;
	private String travel_Exp;
	private String idea;
	private String etc;
	private int user_No;
	private int consult_Ok_Record_No;
	private String status;
	private String reason;
	private Date agree_Date;
	private String email;
	private String user_Name;
	private String nick_Name;
	private String phone;
	private String birthDay;
	private String gender;
	private Date enroll_Date;
	private String user_Type_Level;
	private int attachMent_No;
	private String origin_Name;
	
	public ConsultManage() {}

	public ConsultManage(int consult_Apply_No, Date apply_Date, String job, String info, String travel_Exp, String idea,
			String etc, int user_No, int consult_Ok_Record_No, String status, String reason, Date agree_Date,
			String email, String user_Name, String nick_Name, String phone, String birthDay, String gender,
			Date enroll_Date, String user_Type_Level, int attachMent_No, String origin_Name) {
		super();
		this.consult_Apply_No = consult_Apply_No;
		this.apply_Date = apply_Date;
		this.job = job;
		this.info = info;
		this.travel_Exp = travel_Exp;
		this.idea = idea;
		this.etc = etc;
		this.user_No = user_No;
		this.consult_Ok_Record_No = consult_Ok_Record_No;
		this.status = status;
		this.reason = reason;
		this.agree_Date = agree_Date;
		this.email = email;
		this.user_Name = user_Name;
		this.nick_Name = nick_Name;
		this.phone = phone;
		this.birthDay = birthDay;
		this.gender = gender;
		this.enroll_Date = enroll_Date;
		this.user_Type_Level = user_Type_Level;
		this.attachMent_No = attachMent_No;
		this.origin_Name = origin_Name;
	}

	public int getConsult_Apply_No() {
		return consult_Apply_No;
	}

	public void setConsult_Apply_No(int consult_Apply_No) {
		this.consult_Apply_No = consult_Apply_No;
	}

	public Date getApply_Date() {
		return apply_Date;
	}

	public void setApply_Date(Date apply_Date) {
		this.apply_Date = apply_Date;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getTravel_Exp() {
		return travel_Exp;
	}

	public void setTravel_Exp(String travel_Exp) {
		this.travel_Exp = travel_Exp;
	}

	public String getIdea() {
		return idea;
	}

	public void setIdea(String idea) {
		this.idea = idea;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public int getUser_No() {
		return user_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public int getConsult_Ok_Record_No() {
		return consult_Ok_Record_No;
	}

	public void setConsult_Ok_Record_No(int consult_Ok_Record_No) {
		this.consult_Ok_Record_No = consult_Ok_Record_No;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getAgree_Date() {
		return agree_Date;
	}

	public void setAgree_Date(Date agree_Date) {
		this.agree_Date = agree_Date;
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

	public String getUser_Type_Level() {
		return user_Type_Level;
	}

	public void setUser_Type_Level(String user_Type_Level) {
		this.user_Type_Level = user_Type_Level;
	}

	public int getAttachMent_No() {
		return attachMent_No;
	}

	public void setAttachMent_No(int attachMent_No) {
		this.attachMent_No = attachMent_No;
	}

	public String getOrigin_Name() {
		return origin_Name;
	}

	public void setOrigin_Name(String origin_Name) {
		this.origin_Name = origin_Name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ConsultManage [consult_Apply_No=" + consult_Apply_No + ", apply_Date=" + apply_Date + ", job=" + job
				+ ", info=" + info + ", travel_Exp=" + travel_Exp + ", idea=" + idea + ", etc=" + etc + ", user_No="
				+ user_No + ", consult_Ok_Record_No=" + consult_Ok_Record_No + ", status=" + status + ", reason="
				+ reason + ", agree_Date=" + agree_Date + ", email=" + email + ", user_Name=" + user_Name
				+ ", nick_Name=" + nick_Name + ", phone=" + phone + ", birthDay=" + birthDay + ", gender=" + gender
				+ ", enroll_Date=" + enroll_Date + ", user_Type_Level=" + user_Type_Level + ", attachMent_No="
				+ attachMent_No + ", origin_Name=" + origin_Name + "]";
	}






}
