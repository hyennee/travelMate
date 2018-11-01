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
	padding: 20px;
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
	height:33px;
	width:120px;
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
			<h1><span class="label label-info">회원목록</span></h1>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>이메일</th>
							<th>이름</th>
							<th>닉네임</th>
							<th>전화번호</th>
							<th>성별</th>
							<th>가입일</th>
							<th>권한</th>
						</tr>
					</thead>
					<tbody>
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
					</tbody>
				</table>
			</div>
			<div class="pagingArea">Fake paging info...</div>
			<div class="searchArea">
				<form class="navbar-form navbar-center">
					<select id="searchCondition">
						<option value="user_name">이름</option>
						<option value="email">이메일</option>
						<option value="phone">전화번호</option>
					</select> 
					<input type="text" class="form-control" placeholder="키워드...">
					<button type="submit" class="btn btn-success">검색</button>
				</form>
			</div>
		</div>
	</c:if>
</body>
</html>