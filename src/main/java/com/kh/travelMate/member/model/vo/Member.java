package com.kh.travelMate.member.model.vo;

import java.sql.Date;

//빈으로 스프링에서 사용할수있게 등록하기
//멤버클래스에는 annotation을 사용하지않는다.

public class Member implements java.io.Serializable{
	
	private int userNo;	 //회원번호
	private String email;    //이메일
	private String userPwd;  //비밀번호
	private String userName; //이름
	private String nickName; //닉네임
	private String phone;	 //연락처
	private String birthDay; //생년월일
	private String gender;	 //성별
	private Date enrollDate; //가입일
	private Date modifyDate; //수정일
	private String userType; //회원유형
	private String bankName; //은행이름
	private String accountNo;//계좌번호
	private int cyberMoney;  //사이버머니
	private Date updateCybermoneyDate; //사이버머니변경일자
	
	public Member() {}

	public Member(int userNo, String email, String userPwd, String userName, String nickName, String phone,
			String birthDay, String gender, Date enrollDate, Date modifyDate, String userType, String bankName,
			String accountNo, int cyberMoney, Date updateCybermoneyDate) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.phone = phone;
		this.birthDay = birthDay;
		this.gender = gender;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.userType = userType;
		this.bankName = bankName;
		this.accountNo = accountNo;
		this.cyberMoney = cyberMoney;
		this.updateCybermoneyDate = updateCybermoneyDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public String getEmail() {
		return email;
	}

	public String getUserPwd() {
		return userPwd;
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

	public String getBirthDay() {
		return birthDay;
	}

	public String getGender() {
		return gender;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public String getUserType() {
		return userType;
	}

	public String getBankName() {
		return bankName;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public int getCyberMoney() {
		return cyberMoney;
	}

	public Date getUpdateCybermoneyDate() {
		return updateCybermoneyDate;
	}

	public void setUserNp(int userNo) {
		this.userNo = userNo;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
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

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public void setCyberMoney(int cyberMoney) {
		this.cyberMoney = cyberMoney;
	}

	public void setUpdateCybermoneyDate(Date updateCybermoneyDate) {
		this.updateCybermoneyDate = updateCybermoneyDate;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", email=" + email + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", nickName=" + nickName + ", phone=" + phone + ", birthDay=" + birthDay + ", gender=" + gender
				+ ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", userType=" + userType + ", bankName="
				+ bankName + ", accountNo=" + accountNo + ", cyberMoney=" + cyberMoney + ", updateCybermoneyDate="
				+ updateCybermoneyDate + "]";
	}
	
	
	/*private int mid;
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String birthday;
	private String gender;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	
	//기본생성자는 필수!!없으면 에러
	public Member() {}

	public Member(int mid, String userId, String userPwd, String userName, String email, String birthday, String gender,
			String phone, String address, Date enrollDate, Date modifyDate, String status) {
		super();
		this.mid = mid;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getUserId() {
		return userId;
	}

	//세터개터도 필수!! 에러는 안나오지만 null 값이 나옴
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", email=" + email + ", birthday=" + birthday + ", gender=" + gender + ", phone=" + phone
				+ ", address=" + address + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", status="
				+ status + "]";
	}
	*/
	
}
