package com.kh.travelMate.admin.model.vo;

import java.sql.Date;

public class PaymentManage {
	private int user_No;
	private String email;
	private String user_Name;
	private String nick_Name;
	private int bank_No;
	private String bank;
	private int cyberMoney;
	private Date cm_Modify_Date;
	private int cybermoney_Record_No;
	private String proof_No;
	private Date record_Date;
	private int change_Money;
	private String change_Reason;
	private int before_Money;
	private int payment_No;
	private String payment_Type;
	private String payment_Status;
	private String payment_Way;
	private int ref_No;
	private int pay_Record_No;
	private int consult_Reply_No;
	private Date pay_Date;
	private int money;
	private Date payment_Date; 
	
	public PaymentManage() {}

	public PaymentManage(int user_No, String email, String user_Name, String nick_Name, int bank_No, String bank,
			int cyberMoney, Date cm_Modify_Date, int cybermoney_Record_No, String proof_No, Date record_Date,
			int change_Money, String change_Reason, int before_Money, int payment_No, String payment_Type,
			String payment_Status, String payment_Way, int ref_No, int pay_Record_No, int consult_Reply_No,
			Date pay_Date, int money, Date payment_Date) {
		super();
		this.user_No = user_No;
		this.email = email;
		this.user_Name = user_Name;
		this.nick_Name = nick_Name;
		this.bank_No = bank_No;
		this.bank = bank;
		this.cyberMoney = cyberMoney;
		this.cm_Modify_Date = cm_Modify_Date;
		this.cybermoney_Record_No = cybermoney_Record_No;
		this.proof_No = proof_No;
		this.record_Date = record_Date;
		this.change_Money = change_Money;
		this.change_Reason = change_Reason;
		this.before_Money = before_Money;
		this.payment_No = payment_No;
		this.payment_Type = payment_Type;
		this.payment_Status = payment_Status;
		this.payment_Way = payment_Way;
		this.ref_No = ref_No;
		this.pay_Record_No = pay_Record_No;
		this.consult_Reply_No = consult_Reply_No;
		this.pay_Date = pay_Date;
		this.money = money;
		this.payment_Date = payment_Date;
	}

	public int getUser_No() {
		return user_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
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

	public int getBank_No() {
		return bank_No;
	}

	public void setBank_No(int bank_No) {
		this.bank_No = bank_No;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public int getCyberMoney() {
		return cyberMoney;
	}

	public void setCyberMoney(int cyberMoney) {
		this.cyberMoney = cyberMoney;
	}

	public Date getCm_Modify_Date() {
		return cm_Modify_Date;
	}

	public void setCm_Modify_Date(Date cm_Modify_Date) {
		this.cm_Modify_Date = cm_Modify_Date;
	}

	public int getCybermoney_Record_No() {
		return cybermoney_Record_No;
	}

	public void setCybermoney_Record_No(int cybermoney_Record_No) {
		this.cybermoney_Record_No = cybermoney_Record_No;
	}

	public String getProof_No() {
		return proof_No;
	}

	public void setProof_No(String proof_No) {
		this.proof_No = proof_No;
	}

	public Date getRecord_Date() {
		return record_Date;
	}

	public void setRecord_Date(Date record_Date) {
		this.record_Date = record_Date;
	}

	public int getChange_Money() {
		return change_Money;
	}

	public void setChange_Money(int change_Money) {
		this.change_Money = change_Money;
	}

	public String getChange_Reason() {
		return change_Reason;
	}

	public void setChange_Reason(String change_Reason) {
		this.change_Reason = change_Reason;
	}

	public int getBefore_Money() {
		return before_Money;
	}

	public void setBefore_Money(int before_Money) {
		this.before_Money = before_Money;
	}

	public int getPayment_No() {
		return payment_No;
	}

	public void setPayment_No(int payment_No) {
		this.payment_No = payment_No;
	}

	public String getPayment_Type() {
		return payment_Type;
	}

	public void setPayment_Type(String payment_Type) {
		this.payment_Type = payment_Type;
	}

	public String getPayment_Status() {
		return payment_Status;
	}

	public void setPayment_Status(String payment_Status) {
		this.payment_Status = payment_Status;
	}

	public String getPayment_Way() {
		return payment_Way;
	}

	public void setPayment_Way(String payment_Way) {
		this.payment_Way = payment_Way;
	}

	public int getRef_No() {
		return ref_No;
	}

	public void setRef_No(int ref_No) {
		this.ref_No = ref_No;
	}

	public int getPay_Record_No() {
		return pay_Record_No;
	}

	public void setPay_Record_No(int pay_Record_No) {
		this.pay_Record_No = pay_Record_No;
	}

	public int getConsult_Reply_No() {
		return consult_Reply_No;
	}

	public void setConsult_Reply_No(int consult_Reply_No) {
		this.consult_Reply_No = consult_Reply_No;
	}

	public Date getPay_Date() {
		return pay_Date;
	}

	public void setPay_Date(Date pay_Date) {
		this.pay_Date = pay_Date;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public Date getPayment_Date() {
		return payment_Date;
	}

	public void setPayment_Date(Date payment_Date) {
		this.payment_Date = payment_Date;
	}

	@Override
	public String toString() {
		return "PaymentManage [user_No=" + user_No + ", email=" + email + ", user_Name=" + user_Name + ", nick_Name="
				+ nick_Name + ", bank_No=" + bank_No + ", bank=" + bank + ", cyberMoney=" + cyberMoney
				+ ", cm_Modify_Date=" + cm_Modify_Date + ", cybermoney_Record_No=" + cybermoney_Record_No
				+ ", proof_No=" + proof_No + ", record_Date=" + record_Date + ", change_Money=" + change_Money
				+ ", change_Reason=" + change_Reason + ", before_Money=" + before_Money + ", payment_No=" + payment_No
				+ ", payment_Type=" + payment_Type + ", payment_Status=" + payment_Status + ", payment_Way="
				+ payment_Way + ", ref_No=" + ref_No + ", pay_Record_No=" + pay_Record_No + ", consult_Reply_No="
				+ consult_Reply_No + ", pay_Date=" + pay_Date + ", money=" + money + ", payment_Date=" + payment_Date
				+ "]";
	}




}
