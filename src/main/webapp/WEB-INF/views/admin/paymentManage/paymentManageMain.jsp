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
				<span class="label label-primary">결제목록</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>결제승인번호</th>
							<th>결제종류</th>
							<th>결제사용자</th>
							<th>결제방식</th>
							<th>금액</th>
							<th>결제일</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${ paymentList }">
							<tr>
								<c:if test="${ row.ref_No ne '0' }">
									<td>&nbsp;&nbsp;└─</td>
								</c:if>
								<c:if test="${ row.ref_No eq '0' }">
									<td>${ row.payment_No }</td>
								</c:if>
								<td>${ row.proof_No }</td>
								<td>${ row.payment_Type }</td>
								<td>${ row.user_Name }(${ row.nick_Name })</td>
								<td>${ row.payment_Way }</td>
								<td>${ row.money }</td>
								<td>${ row.payment_Date }</td>
								<td><c:if test="${ row.ref_No ne '0' }">
										<button type="button" class="btn btn-sm btn-success"
											onclick="location.href='paymentManageDetail.admin?payment_No=${ row.ref_No }'">조회</button>
									</c:if> <c:if test="${ row.ref_No eq '0' }">
										<button type="button" class="btn btn-sm btn-success"
											onclick="location.href='paymentManageDetail.admin?payment_No=${ row.payment_No }'">조회</button>
									</c:if></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="pagingArea">
					<c:if test="${ page.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
					<c:if test="${ page.currentPage > 1}">
						<c:url var="blistBack" value="/admin/paymentManage.admin">
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
							<c:url var="blistCheck" value="/admin/paymentManage.admin">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<a href="${ blistCheck }">${ p }</a>
						</c:if>
					</c:forEach>

					<c:if test="${ page.currentPage >= page.maxPage }">
				&nbsp; [다음]
			</c:if>
					<c:if test="${ page.currentPage < page.maxPage }">
						<c:url var="blistEnd" value="/admin/paymentManage.admin">
							<c:param name="currentPage" value="${ page.currentPage + 1 }" />
						</c:url>
						<a href="${ blistEnd }">[다음]</a>
					</c:if>
					<div class="searchArea">
						<form class="navbar-form navbar-center">
							<select id="searchCondition">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="writer">작성자</option>
							</select> <input type="text" class="form-control" placeholder="키워드...">
							<button type="submit" class="btn btn-info">검색</button>
						</form>
					</div>
				</div>
			</div>
	</c:if>
</body>
</html>