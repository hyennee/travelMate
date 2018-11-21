<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Index Page</title>
<!-- google chart -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
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
	width: 77%;
	float: left;
	display: inline-block;
	text-align: center;
	padding: 10px;
}

.table {
	text-align: left;
}

.table-responsive {
	text-align: inline-block;
	float: left;
}

#lineOne {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#lineTwo {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#lineThree {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#recentBoardListDiv {
	width: 80%;
}

.table-responsive th {
	text-align: center;
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
			<h3 style="text-align: left;">
				<b>대시보드</b>
			</h3>
			<hr style="float: left; width: 85%;">
			<div id="lineOne">
				<div class="table-responsive" style="width: 40%;">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">
								<b>최근 1:1 상담 요청</b>
							</h3>
						</div>
						<div class="panel-body">
							<c:if test="${ not empty boardList }">
								<table class="table table-stripe">
									<c:forEach var="row" items="${ boardList }" begin="0" end="4"
										step="1">
										<c:if test="${ row.category eq '2' && row.board_level eq '1'}">
											<tr>
												<td><b>${ row.nick_Name }(${ row.user_Name })</b> 님이 <a
													href="${ pageContext.request.contextPath }/admin/boardManageReply.admin?board_no=${ row.board_no }"><b>${ row.title }</b></a>
													상담 신청 (${ row.board_date })</td>
											</tr>
										</c:if>
									</c:forEach>
								</table>
							</c:if>
						</div>
					</div>
				</div>
				<div class="table-responsive" style="width: 40%; margin-left: 10px;">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">
								<b>최근 가입 회원</b>
							</h3>
						</div>
						<div class="panel-body">
							<c:if test="${ not empty memberList }">
								<table class="table table-stripe">
									<c:forEach var="row2" items="${ memberList }" begin="0" end="4"
										step="1">
										<tr>
											<td>
											<a href="${ pageContext.request.contextPath }/admin/memberManageDetail.admin?userno=${ row2.user_no }">
											<b>${ row2.nick_name }(${ row2.user_name })</b></a> 님이 <b>${ row2.enroll_date }</b> 에
												가입하셨습니다.</td>
										</tr>
									</c:forEach>
								</table>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div id="lineTwo">
				<!-- 하단 최근 게시물 출력 부분 -->
				<div id="recentBoardListDiv" class="table-responsive">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">
								<b>최근 게시물</b>
							</h3>
						</div>
						<div class="panel-body">
							<c:if test="${ not empty recentBoardList }">
								<table class="table table-hover">
									<c:forEach var="row3" items="${ recentBoardList }" begin="0" end="4" step="1">
									<thead>
										<tr>
											<th><b>#게시물번호</b></th>
											<th>종류</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
										</tr>
									</thead>
									<tbody>	
										<tr>
											<td><b><c:out value="${ row3.board_no }" /></b></td>
											<td><b><c:out value="${ row3.category }" /></b></td>
											<td><a
												href="${ pageContext.request.contextPath }/admin/boardManageDetail.admin?board_no=${ row3.board_no }"><b>${ row3.title }</b></a>&nbsp;
											</td>
											<td><b><c:out
														value="${ row3.nick_Name }(${ row3.user_Name })" /></b></td>
											<td><b><c:out value="${ row3.board_date }" /></b></td>
										</tr>
									</tbody>
									</c:forEach>
								</table>
							</c:if>
						</div>
					</div>
					<!-- 최근 게시물 출력 끝 -->
				</div>
			</div>
			<!-- 차후 기능 추가를 위한 영역 -->
			<div id="lineThree">
			</div>
			<hr style="float: left; width: 85%;">
		</div>
	</c:if>
</body>
</html>