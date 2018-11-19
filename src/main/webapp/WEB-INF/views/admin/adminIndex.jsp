<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Index Page</title>
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

.table {
	text-align: left;
}

.table-responsive {
	text-align:inline-block;
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
			<jsp:include page="../admin/common/header.jsp" />
		</div>
		<div class="leftMenu">
			<jsp:include page="../admin/common/sideMenu.jsp" />
		</div>
		<div class="lowerPage">
			<div class="table-responsive">
				<table class="table" style="width: 40%;">
					<thead>
						<tr>
							<th><h2>DASHBOARD</h2></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><b>최근 1:1 상담 요청</b></td>
						</tr>
						<tr>
							<td>피자(이회원)님이 <b>페퍼로니피자 맛있나요?</b> ( 2018/11/18 22:44 )<br>
							</td>
						</tr>
						<tr>
							<td>스파게티(박회원)님이 <b>도미노피자 좋나요?</b> ( 2018/11/18 22:42 )<br>
							</td>
						</tr>
						<tr>
							<td>라자냐(강회원)님이 <b>이탈리아 여행상담</b> ( 2018/11/18 22:04 )<br>
							</td>
						</tr>
						<tr>
							<td>맘스터치(김엄마)님이 <b>치킨 vs 피자</b> ( 2018/11/18 22:00 )<br>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="table-responsive">
			<table>
			<tr>
				<td><b>abcdefg</b></td>
			</tr>
			</table>
			</div>
		</div>
	</c:if>
</body>
</html>