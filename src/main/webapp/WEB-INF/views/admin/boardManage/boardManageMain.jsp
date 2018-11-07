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
			<h1>
				<span class="label label-info">게시물목록</span>
			</h1>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>작성자</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>내용</th>
							<th>작성일</th>
							<th>상태</th>
							<th>참조게시물번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${ boardList }">
							<tr>
								<td>${ row.board_no }</td>
								<td>${ row.writer }</td>
								<td>${ row.category }</td>
								<td>${ row.title }</td>
								<td>${ row.content }</td>
								<td>${ row.board_date }</td>
								<td>${ row.status }</td>
								<td>${ row.ref_no }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
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
				<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }">
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
						<option value="title">제목</option>
						<option value="content">내용</option>
						<option value="writer">작성자</option>
					</select> <input type="text" class="form-control" placeholder="키워드...">
					<button type="submit" class="btn btn-success">검색</button>
				</form>
			</div>
		</div>
	</c:if>
</body>
</html>