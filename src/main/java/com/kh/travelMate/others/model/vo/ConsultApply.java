package com.kh.travelMate.others.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ConsultApply  implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7677624666180272301L;

	private int CONSULT_APPLY_NO;//관리번호
	private Date APPLY_DATE;//신청일자
	private String JOB;//직업
	private String INFO;//자기소개
	private String TRAVEL_EXP;//여행경험
	private String IDEA;//아이디어
	private String ETC;//특이사항
	private int USER_NO;//회원번호
	private String FILE;//파일
	
	public ConsultApply() {
		super();
	}

	public ConsultApply(int cONSULT_APPLY_NO, Date aPPLY_DATE, String jOB, String iNFO, String tRAVEL_EXP, String iDEA,
			String eTC, int uSER_NO, String fILE) {
		super();
		CONSULT_APPLY_NO = cONSULT_APPLY_NO;
		APPLY_DATE = aPPLY_DATE;
		JOB = jOB;
		INFO = iNFO;
		TRAVEL_EXP = tRAVEL_EXP;
		IDEA = iDEA;
		ETC = eTC;
		USER_NO = uSER_NO;
		FILE = fILE;
	}

	public int getCONSULT_APPLY_NO() {
		return CONSULT_APPLY_NO;
	}

	public void setCONSULT_APPLY_NO(int cONSULT_APPLY_NO) {
		CONSULT_APPLY_NO = cONSULT_APPLY_NO;
	}

	public Date getAPPLY_DATE() {
		return APPLY_DATE;
	}

	public void setAPPLY_DATE(Date aPPLY_DATE) {
		APPLY_DATE = aPPLY_DATE;
	}

	public String getJOB() {
		return JOB;
	}

	public void setJOB(String jOB) {
		JOB = jOB;
	}

	public String getINFO() {
		return INFO;
	}

	public void setINFO(String iNFO) {
		INFO = iNFO;
	}

	public String getTRAVEL_EXP() {
		return TRAVEL_EXP;
	}

	public void setTRAVEL_EXP(String tRAVEL_EXP) {
		TRAVEL_EXP = tRAVEL_EXP;
	}

	public String getIDEA() {
		return IDEA;
	}

	public void setIDEA(String iDEA) {
		IDEA = iDEA;
	}

	public String getETC() {
		return ETC;
	}

	public void setETC(String eTC) {
		ETC = eTC;
	}

	public int getUSER_NO() {
		return USER_NO;
	}

	public void setUSER_NO(int uSER_NO) {
		USER_NO = uSER_NO;
	}

	public String getFILE() {
		return FILE;
	}

	public void setFILE(String fILE) {
		FILE = fILE;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ConsultApply [CONSULT_APPLY_NO=" + CONSULT_APPLY_NO + ", APPLY_DATE=" + APPLY_DATE + ", JOB=" + JOB
				+ ", INFO=" + INFO + ", TRAVEL_EXP=" + TRAVEL_EXP + ", IDEA=" + IDEA + ", ETC=" + ETC + ", USER_NO="
				+ USER_NO + ", FILE=" + FILE + "]";
	}
}
