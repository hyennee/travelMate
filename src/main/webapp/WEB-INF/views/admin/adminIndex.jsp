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
	text-align: inline-block;
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
				<h3 style="text-align: left;">
					<b>대시보드</b>
				</h3>
				<div class="panel panel-danger">
					<div class="panel-heading">
						<h3 class="panel-title">
							<b>최근 1:1 상담 요청</b>
						</h3>
					</div>
					<div class="panel-body">
						<c:if test="${ not empty boardList }">
							<table class="table table-hover">
								<c:forEach var="row" items="${ boardList }" end="10">
									<c:if test="${ row.category eq '3' && row.board_level eq '1'}">
										<tr>
											<td><b>${ row.nick_Name }(${ row.user_Name })</b>님이 <b>${ row.title }</b>
												상담 신청 (${ row.board_date })</td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</c:if>
					</div>
				</div>
			</div>
			<div class="table-responsive">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><b>최근 가입 회원</b></h3>
					</div>
					<div class="panel-body">
						<c:if test="${ not empty memberList }">
							<table class="table table-stripe">
								<c:forEach var="row2" items="${ memberList }" end="5">
									<tr>
										<td><b>${ row2.nick_name }(${ row2.user_name })</b>님이 <b>${ row2.enroll_date }</b>에 가입하셨습니다.</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>