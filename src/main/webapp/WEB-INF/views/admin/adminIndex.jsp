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
						<c:if test="${ not empty boardList }">
						<c:forEach var="row" items="${ boardList }">
						<c:if test="${ row.category eq '3' && row.board_level eq '1'}">
						<tr>
							<td><b>${ row.nick_Name }(${ row.user_Name })</b>님이 <b>${ row.title }</b> 상담 신청</td>
						</tr>
						</c:if>
						</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<div class="table-responsive">
			<table>
			<tr>
				<td></td>
			</tr>
			</table>
			</div>
		</div>
	</c:if>
</body>
</html>