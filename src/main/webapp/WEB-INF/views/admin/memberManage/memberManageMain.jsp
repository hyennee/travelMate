<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.headerMenu{
		padding: 20px;
		margin-bottom: 20px;
		border: 0px solid #bcbcbc;
	}
	
	.leftMenu {
		padding: 20px;
		margin-right: 20px;
		margin-bottom: 20px;
		float: left;
		border: 0px solid #bcbcbc;
	}
	.lowerPage {
		width: 73%;
		padding: 50px;
		margin: 0px auto;
		float: left;
		border: 0px solid #bcbcbc;
	}
	#memberListTable {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<c:if test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
	<c:redirect url="../"/>
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
	<div class="headerMenu">
	<jsp:include page="../../admin/common/header.jsp"/>
	</div>
	<div class="leftMenu">
	<jsp:include page="sideMenu.jsp"/>
	</div>
	<div class="lowerPage">
		<b>회원목록</b>
		<table id="memberListTable">
			<tr>
				<th>회원번호</th>
				<th>이메일</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>전화번호</th>
				<th>성별</th>
				<th>가입일</th>
				<th>권한</th>
			</tr>
			<c:forEach var="row" items="${ memberList }">
			<tr>
				<td>${ row.user_no }</td>
				<td>${ row.email }</td>
				<td>${ row.user_name }</td>
				<td>${ row.nick_name }</td>
				<td>${ row.phone }</td>
				<c:if test="${ row.gender eq 'M' }">
				<td>남</td>
				</c:if>
				<c:if test="${ row.gender eq 'F' }">
				<td>여</td>
				</c:if>
				<td>${ row.enroll_date }</td>
				<td>${ row.user_type }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</c:if>
</body>
</html>