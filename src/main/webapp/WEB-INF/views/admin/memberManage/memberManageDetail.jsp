<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.headerMenu {
	padding: 20px;
	margin-bottom: 20px;
	border: 0px solid #bcbcbc;
}

.leftMenu {
	padding-left: 20px;
	margin-top: 0px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 0px solid #bcbcbc;
}

.lowerPage {
	width: 95%;
	text-align: center;
}

table th {
	text-align: center;
}

#searchCondition {
	text-align: inline-block;
	height: 33px;
	width: 120px;
}
.row-header {
	text-align: center;
	background: #efefef;
	color: black;
	font-weight: bold;
}
td {
	color: #727272;
	text-align: left;
	height: 45px;

}
input {
	height: 40px;
}
#email {
	width: 250px;
}
</style>
</head>
<body>
	<c:if
		test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
		<c:redirect url="../" />
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
		<div class="headerMenu">
			<jsp:include page="../../admin/common/header.jsp" />
		</div>
		<div class="leftMenu">
			<jsp:include page="sideMenu.jsp" />
		</div>
		<div class="lowerPage">
			<h2>
				<span class="label label-primary">회원상세정보</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="row-header">회원번호</td>
							<td>${ memberDetail.user_no }</td>
						</tr>
						<tr>
							<td class="row-header">이메일</td>
							<td>${ memberDetail.email }</td>
						</tr>
						<tr>
							<td class="row-header">이름</td>
							<td>${ memberDetail.user_name }</td>
						</tr>
						<tr>
							<td class="row-header">닉네임</td>
							<td>${ memberDetail.nick_name }</td>
						</tr>										
						<tr>
							<td class="row-header">전화번호</td>
							<td>${ memberDetail.phone }</td>
						</tr>
						<tr>
							<td class="row-header">가입일</td>
							<td>${ memberDetail.enroll_date }</td>
						</tr>
						<tr>
							<td class="row-header">성별</td>
							<c:if test="${ memberDetail.gender eq 'M' }">
								<td>남</td>
							</c:if>
							<c:if test="${ memberDetail.gender eq 'F' }">
								<td>여</td>
							</c:if>
						</tr>
						<tr>
							<td class="row-header">회원종류</td>
							<td>${ memberDetail.user_type }</td>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-success" onclick="location.href='${ pageContext.request.contextPath }/admin/memberManage.admin'">목록으로 돌아가기</button>
			</div>
		</div>
	</c:if>
</body>
</html>