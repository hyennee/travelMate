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
				<span class="label label-primary">출금 요청 목록</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>출금요청번호</th>
							<th>출금요청자</th>
							<th>금액</th>
							<th>요청일</th>
							<th>상태</th>
							<th></th>
						</tr>
					</thead>
					<c:if test="${ not empty paymentRequestList }">
					<tbody>
						<c:forEach var="row" items="${ paymentRequestList }">
							<tr>
							<td>${ row.withDraw_No }</td>
							<td>${ row.email } (${ row.user_Name })</td>
							<td>${ row.money }</td>
							<td>${ row.withDraw_Date }</td>
							<c:if test="${ row.status eq 'N'}">
							<td><B>미처리</B></td>
							</c:if>
							<c:if test="${ row.status eq 'Y'}">
							<td><B>출금완료</B></td>
							</c:if>
							<c:if test="${ row.status eq 'R'}">
							<td><B>출금거부</B></td>
							</c:if>
							
							<td>
							<button type="button" class="btn btn-sm btn-success"
										onclick="location.href='paymentRequestManageDetail.admin?request_no=${ row.withDraw_No }'">조회</button>
							</td>					
							</tr>
						</c:forEach>
					</tbody>
					</c:if>
				</table>
				<div class="pagingArea">
					<c:if test="${ page.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
					<c:if test="${ page.currentPage > 1}">
						<c:url var="blistBack" value="/admin/paymentRequestManage.admin">
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
							<c:url var="blistCheck" value="/admin/paymentRequestManage.admin">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<a href="${ blistCheck }">${ p }</a>
						</c:if>
					</c:forEach>

					<c:if test="${ page.currentPage >= page.maxPage }">
				&nbsp; [다음]
			</c:if>
					<c:if test="${ page.currentPage < page.maxPage }">
						<c:url var="blistEnd" value="/admin/paymentRequestManage.admin">
							<c:param name="currentPage" value="${ page.currentPage + 1 }" />
						</c:url>
						<a href="${ blistEnd }">[다음]</a>
					</c:if>
					<div class="searchArea">
						<form class="navbar-form navbar-center">
							<select id="searchCondition" name="sel">
								<option value="bank">은행명</option>
								<option value="name">예금주</option>
							</select> <input type="text" class="form-control" placeholder="키워드..." name="val">
							<button type="submit" class="btn btn-info">검색</button>
						</form>
					</div>
				</div>
			</div>
			</div>
	</c:if>
</body>
</html>