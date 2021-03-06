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
	height: 33px;
	width: 120px;
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
				<span class="label label-primary">컨설턴트 회원 신청 목록</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>등록일</th>
							<th>신청자</th>
							<th>이메일</th>
							<th>회원등급</th>
							<th>상태</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${ consultApplyList }">
							<tr>
								<td><b><c:out value="${ row.consult_Apply_No }"></c:out></b></td>
								<td><c:out value="${ row.apply_Date }"></c:out></td>
								<td><c:out value="${ row.nick_Name }(${ row.user_Name })"></c:out></td>
								<td><c:out value="${ row.email }"></c:out></td>
								<c:if test="${ row.user_Type_Level eq '3' }">
									<td>컨설턴트</td>
								</c:if>
								<c:if test="${ row.user_Type_Level ne '3'}">
									<td><c:out value="${ row.user_Type_Level }"></c:out></td>
								</c:if>
								<c:if test="${ empty row.status }">
									<td>미처리</td>
								</c:if>
								<c:if test="${ row.status eq 'Y'}">
									<td>승인</td>
								</c:if>
								<c:if test="${ row.status eq 'N'}">
									<td>거부</td>
								</c:if>
								<td>
									<button type="button" class="btn btn-sm btn-success"
										onclick="location.href='consultManageDetail.admin?apply_no=${ row.consult_Apply_No }'">조회</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="pagingArea">
					<c:if test="${ page.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
					<c:if test="${ page.currentPage > 1}">
						<c:url var="blistBack" value="/admin/memberManage.admin">
							<c:param name="currentPage" value="${ page.currentPage - 1 }" />
						</c:url>
						<a href="${ blistBack }">[이전]</a>
					</c:if>
					<c:forEach var="p" begin="${ page.startPage }"
						end="${ page.endPage }">
						<c:if test="${ p eq page.currentPage }">
							<font color="black" size="4"><b>${ p }</b></font>
						</c:if>
						<c:if test="${ p ne page.currentPage }">
							<c:url var="blistCheck" value="/admin/memberManage.admin">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<a href="${ blistCheck }">${ p }</a>
						</c:if>
					</c:forEach>

					<c:if test="${ page.currentPage >= page.maxPage }">
				&nbsp; [다음]
			</c:if>
					<c:if test="${ page.currentPage < page.maxPage }">
						<c:url var="blistEnd" value="/admin/memberManage.admin">
							<c:param name="currentPage" value="${ page.currentPage + 1 }" />
						</c:url>
						<a href="${ blistEnd }">[다음]</a>
					</c:if>
				</div>
				<div class="searchArea">
					<form class="navbar-form navbar-center">
						<select id="searchCondition">
							<option value="user_name">이름</option>
							<option value="email">이메일</option>
							<option value="phone">전화번호</option>
						</select> <input type="text" class="form-control" placeholder="키워드...">
						<button type="submit" class="btn btn-info">검색</button>
					</form>
				</div>
			</div>
		</div>
	</c:if>
</body>
</html>