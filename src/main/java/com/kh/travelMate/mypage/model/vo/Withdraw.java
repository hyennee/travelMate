package com.kh.travelMate.mypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Withdraw implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int WITHDRAW_NO;
	private String STATUS;
	private Date WITHDRAW_DATE;	
	private String NAME;
	private String BANK;
	private String BANK_NO;
	private int USER_NO;
	private int MONEY;
	public Withdraw() {
		super();
	}
	public Withdraw(int wITHDRAW_NO, String sTATUS, Date wITHDRAW_DATE, String nAME, String bANK, String bANK_NO,
			int uSER_NO, int mONEY) {
		super();
		WITHDRAW_NO = wITHDRAW_NO;
		STATUS = sTATUS;
		WITHDRAW_DATE = wITHDRAW_DATE;
		NAME = nAME;
		BANK = bANK;
		BANK_NO = bANK_NO;
		USER_NO = uSER_NO;
		MONEY = mONEY;
	}
	public int getWITHDRAW_NO() {
		return WITHDRAW_NO;
	}
	public void setWITHDRAW_NO(int wITHDRAW_NO) {
		WITHDRAW_NO = wITHDRAW_NO;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public Date getWITHDRAW_DATE() {
		return WITHDRAW_DATE;
	}
	public void setWITHDRAW_DATE(Date wITHDRAW_DATE) {
		WITHDRAW_DATE = wITHDRAW_DATE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getBANK() {
		return BANK;
	}
	public void setBANK(String bANK) {
		BANK = bANK;
	}
	public String getBANK_NO() {
		return BANK_NO;
	}
	public void setBANK_NO(String bANK_NO) {
		BANK_NO = bANK_NO;
	}
	public int getUSER_NO() {
		return USER_NO;
	}
	public void setUSER_NO(int uSER_NO) {
		USER_NO = uSER_NO;
	}
	public int getMONEY() {
		return MONEY;
	}
	public void setMONEY(int mONEY) {
		MONEY = mONEY;
	}
	@Override
	public String toString() {
		return "Withdraw [WITHDRAW_NO=" + WITHDRAW_NO + ", STATUS=" + STATUS + ", WITHDRAW_DATE=" + WITHDRAW_DATE
				+ ", NAME=" + NAME + ", BANK=" + BANK + ", BANK_NO=" + BANK_NO + ", USER_NO=" + USER_NO + ", MONEY="
				+ MONEY + "]";
	}
	

}
