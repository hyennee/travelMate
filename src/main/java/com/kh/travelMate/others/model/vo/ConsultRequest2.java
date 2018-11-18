package com.kh.travelMate.others.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ConsultRequest2 implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8417776476752686650L;
	private int CONSULT_REQUEST_NO;//컨설팅번호
	private String TRAVEL_PURPOSE;//여행목적
	private int ADULT_NUM;//성인인원
	private int CHILD_NUM;//어린이인원
	private String TRAVEL_AREA;//여행지역
	private Date TRAVEL_START_DATE;//여행시작일자
	private Date TRAVEL_END_DATE;//여행종료일자
	private int BUDGET;//예산
	private String ETC;//특이사항
	private String STATUS;//상태
	private int REQUEST_USER_NO;//요청자회원번호
	private int CONSULT_USER_NO;//컨설턴트번호
	private String requestNickName; //요청자 닉네임
	private String consultNickName; //컨설턴트 닉네임
	
	public ConsultRequest2() {
		super();
	}

	public int getCONSULT_REQUEST_NO() {
		return CONSULT_REQUEST_NO;
	}

	public void setCONSULT_REQUEST_NO(int cONSULT_REQUEST_NO) {
		CONSULT_REQUEST_NO = cONSULT_REQUEST_NO;
	}

	public String getTRAVEL_PURPOSE() {
		return TRAVEL_PURPOSE;
	}

	public void setTRAVEL_PURPOSE(String tRAVEL_PURPOSE) {
		TRAVEL_PURPOSE = tRAVEL_PURPOSE;
	}

	public int getADULT_NUM() {
		return ADULT_NUM;
	}

	public void setADULT_NUM(int aDULT_NUM) {
		ADULT_NUM = aDULT_NUM;
	}

	public int getCHILD_NUM() {
		return CHILD_NUM;
	}

	public void setCHILD_NUM(int cHILD_NUM) {
		CHILD_NUM = cHILD_NUM;
	}

	public String getTRAVEL_AREA() {
		return TRAVEL_AREA;
	}

	public void setTRAVEL_AREA(String tRAVEL_AREA) {
		TRAVEL_AREA = tRAVEL_AREA;
	}

	public Date getTRAVEL_START_DATE() {
		return TRAVEL_START_DATE;
	}

	public void setTRAVEL_START_DATE(Date tRAVEL_START_DATE) {
		TRAVEL_START_DATE = tRAVEL_START_DATE;
	}

	public Date getTRAVEL_END_DATE() {
		return TRAVEL_END_DATE;
	}

	public void setTRAVEL_END_DATE(Date tRAVEL_END_DATE) {
		TRAVEL_END_DATE = tRAVEL_END_DATE;
	}

	public int getBUDGET() {
		return BUDGET;
	}

	public void setBUDGET(int bUDGET) {
		BUDGET = bUDGET;
	}

	public String getETC() {
		return ETC;
	}

	public void setETC(String eTC) {
		ETC = eTC;
	}

	public String getSTATUS() {
		return STATUS;
	}

	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}

	public int getREQUEST_USER_NO() {
		return REQUEST_USER_NO;
	}

	public void setREQUEST_USER_NO(int rEQUEST_USER_NO) {
		REQUEST_USER_NO = rEQUEST_USER_NO;
	}

	public int getCONSULT_USER_NO() {
		return CONSULT_USER_NO;
	}

	public void setCONSULT_USER_NO(int cONSULT_USER_NO) {
		CONSULT_USER_NO = cONSULT_USER_NO;
	}

	public String getRequestNickName() {
		return requestNickName;
	}

	public void setRequestNickName(String requestNickName) {
		this.requestNickName = requestNickName;
	}

	public String getConsultNickName() {
		return consultNickName;
	}

	public void setConsultNickName(String consultNickName) {
		this.consultNickName = consultNickName;
	}

	public ConsultRequest2(int cONSULT_REQUEST_NO, String tRAVEL_PURPOSE, int aDULT_NUM, int cHILD_NUM,
			String tRAVEL_AREA, Date tRAVEL_START_DATE, Date tRAVEL_END_DATE, int bUDGET, String eTC, String sTATUS,
			int rEQUEST_USER_NO, int cONSULT_USER_NO, String requestNickName, String consultNickName) {
		super();
		CONSULT_REQUEST_NO = cONSULT_REQUEST_NO;
		TRAVEL_PURPOSE = tRAVEL_PURPOSE;
		ADULT_NUM = aDULT_NUM;
		CHILD_NUM = cHILD_NUM;
		TRAVEL_AREA = tRAVEL_AREA;
		TRAVEL_START_DATE = tRAVEL_START_DATE;
		TRAVEL_END_DATE = tRAVEL_END_DATE;
		BUDGET = bUDGET;
		ETC = eTC;
		STATUS = sTATUS;
		REQUEST_USER_NO = rEQUEST_USER_NO;
		CONSULT_USER_NO = cONSULT_USER_NO;
		this.requestNickName = requestNickName;
		this.consultNickName = consultNickName;
	}

	@Override
	public String toString() {
		return "ConsultRequest2 [CONSULT_REQUEST_NO=" + CONSULT_REQUEST_NO + ", TRAVEL_PURPOSE=" + TRAVEL_PURPOSE
				+ ", ADULT_NUM=" + ADULT_NUM + ", CHILD_NUM=" + CHILD_NUM + ", TRAVEL_AREA=" + TRAVEL_AREA
				+ ", TRAVEL_START_DATE=" + TRAVEL_START_DATE + ", TRAVEL_END_DATE=" + TRAVEL_END_DATE + ", BUDGET="
				+ BUDGET + ", ETC=" + ETC + ", STATUS=" + STATUS + ", REQUEST_USER_NO=" + REQUEST_USER_NO
				+ ", CONSULT_USER_NO=" + CONSULT_USER_NO + ", requestNickName=" + requestNickName + ", consultNickName="
				+ consultNickName + "]";
	}
	
	
}
