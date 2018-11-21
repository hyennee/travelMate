package com.kh.travelMate.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class PaymentRequest implements Serializable {
	private static final long serialVersionUID = 7714632455962558017L;
	private int withDraw_No;
	private String status;
	private Date withDraw_Date;
	private String name;
	private String bank;
	private String bank_No;
	private int user_No;
	private int money;
	private String user_Name;
	private String nick_Name;
	private String email;
	private String phone;
	
	public PaymentRequest() {}

	public PaymentRequest(int withDraw_No, String status, Date withDraw_Date, String name, String bank, String bank_No,
			int user_No, int money, String user_Name, String nick_Name, String email, String phone) {
		super();
		this.withDraw_No = withDraw_No;
		this.status = status;
		this.withDraw_Date = withDraw_Date;
		this.name = name;
		this.bank = bank;
		this.bank_No = bank_No;
		this.user_No = user_No;
		this.money = money;
		this.user_Name = user_Name;
		this.nick_Name = nick_Name;
		this.email = email;
		this.phone = phone;
	}

	public int getWithDraw_No() {
		return withDraw_No;
	}

	public void setWithDraw_No(int withDraw_No) {
		this.withDraw_No = withDraw_No;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getWithDraw_Date() {
		return withDraw_Date;
	}

	public void setWithDraw_Date(Date withDraw_Date) {
		this.withDraw_Date = withDraw_Date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBank_No() {
		return bank_No;
	}

	public void setBank_No(String bank_No) {
		this.bank_No = bank_No;
	}

	public int getUser_No() {
		return user_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PaymentRequest [withDraw_No=" + withDraw_No + ", status=" + status + ", withDraw_Date=" + withDraw_Date
				+ ", name=" + name + ", bank=" + bank + ", bank_No=" + bank_No + ", user_No=" + user_No + ", money="
				+ money + ", user_Name=" + user_Name + ", nick_Name=" + nick_Name + ", email=" + email + ", phone="
				+ phone + "]";
	}

}
