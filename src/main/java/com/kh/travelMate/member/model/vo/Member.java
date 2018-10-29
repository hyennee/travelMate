package com.kh.travelMate.member.model.vo;

import java.sql.Date;

//빈으로 스프링에서 사용할수있게 등록하기
//멤버클래스에는 annotation을 사용하지않는다.

public class Member implements java.io.Serializable{
	
	private int userNo;	  //회원번호
	private String email;    //이메일
	private String password;  //비밀번호
	private String userName; //이름
	private String nickName; //닉네임
	private String phone;	 //연락처
	private String birthday; //생년월일
	private String gender;	 //성별
	private Date enroll_date; //가입일
	private Date modify_date; //수정일
	private String userType; //회원유형 '비관리자'
	private String bankNo;//계좌번호
	private int cyberMoney;  //사이버머니
	private Date cm_modify_date; //사이버머니변경일자
	private String bank; //은행이름
	private String user_type_level; //구분 '일반회원'
	
	
	
	
	public Member() {}




	public Member(int userNo, String email, String password, String userName, String nickName, String phone,
			String birthday, String gender, Date enroll_date, Date modify_date, String userType, String bankNo,
			int cyberMoney, Date cm_modify_date, String bank, String user_type_level) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.password = password;
		this.userName = userName;
		this.nickName = nickName;
		this.phone = phone;
		this.birthday = birthday;
		this.gender = gender;
		this.enroll_date = enroll_date;
		this.modify_date = modify_date;
		this.userType = userType;
		this.bankNo = bankNo;
		this.cyberMoney = cyberMoney;
		this.cm_modify_date = cm_modify_date;
		this.bank = bank;
		this.user_type_level = user_type_level;
	}




	public int getUserNo() {
		return userNo;
	}




	public String getEmail() {
		return email;
	}




	public String getPassword() {
		return password;
	}




	public String getUserName() {
		return userName;
	}




	public String getNickName() {
		return nickName;
	}




	public String getPhone() {
		return phone;
	}




	public String getBirthday() {
		return birthday;
	}




	public String getGender() {
		return gender;
	}




	public Date getEnroll_date() {
		return enroll_date;
	}




	public Date getModify_date() {
		return modify_date;
	}




	public String getUserType() {
		return userType;
	}




	public String getBankNo() {
		return bankNo;
	}




	public int getCyberMoney() {
		return cyberMoney;
	}




	public Date getCm_modify_date() {
		return cm_modify_date;
	}




	public String getBank() {
		return bank;
	}




	public String getUser_type_level() {
		return user_type_level;
	}




	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public void setUserName(String userName) {
		this.userName = userName;
	}




	public void setNickName(String nickName) {
		this.nickName = nickName;
	}




	public void setPhone(String phone) {
		this.phone = phone;
	}




	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}




	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}




	public void setUserType(String userType) {
		this.userType = userType;
	}




	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}




	public void setCyberMoney(int cyberMoney) {
		this.cyberMoney = cyberMoney;
	}




	public void setCm_modify_date(Date cm_modify_date) {
		this.cm_modify_date = cm_modify_date;
	}




	public void setBank(String bank) {
		this.bank = bank;
	}




	public void setUser_type_level(String user_type_level) {
		this.user_type_level = user_type_level;
	}




	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", email=" + email + ", password=" + password + ", userName=" + userName
				+ ", nickName=" + nickName + ", phone=" + phone + ", birthday=" + birthday + ", gender=" + gender
				+ ", enroll_date=" + enroll_date + ", modify_date=" + modify_date + ", userType=" + userType
				+ ", bankNo=" + bankNo + ", cyberMoney=" + cyberMoney + ", cm_modify_date=" + cm_modify_date + ", bank="
				+ bank + ", user_type_level=" + user_type_level + "]";
	}

	
	
}
