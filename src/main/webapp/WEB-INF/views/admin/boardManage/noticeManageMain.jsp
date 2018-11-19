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
				<span class="label label-primary">공지사항목록</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${ noticeList }">
							<tr>
								<c:if test="${ row.board_level eq '1'}">
									<td style="text-align: center;"><b>${ row.board_no }</b></td>
								</c:if>
								<c:if test="${ row.board_level ne '1'}">
									<td></td>
								</c:if>
								<c:if test="${ row.board_level eq '1'}">
									<td style="text-align: left;"><b><a
											href="${ pageContext.request.contextPath }/admin/boardManageDetail.admin?board_no=${ row.board_no }">${ row.title }</a></b></td>
								</c:if>
								<c:if test="${ row.board_level ne '1'}">
									<td style="text-align: left;"><b><a
											href="${ pageContext.request.contextPath }/admin/boardManageDetail.admin?board_no=${ row.ref_no }">&nbsp;
												&nbsp; ㄴ${ row.title }</a></b></td>
								</c:if>
								<td>${ row.nick_Name }</td>
								<td>${ row.board_date }</td>
								<c:if test="${ row.status eq 'Y' }">
								<td>정상</td>
								</c:if>
								<c:if test="${ row.status eq 'N' }">
								<td>삭제</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="pagingArea">
					<c:if test="${ page.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
					<c:if test="${ page.currentPage > 1}">
						<c:url var="blistBack" value="/admin/noticeManage.admin">
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
							<c:url var="blistCheck" value="/admin/noticeManage.admin">
								<c:param name="currentPage" value="${ p }" />
							</c:url>
							<a href="${ blistCheck }">${ p }</a>
						</c:if>
					</c:forEach>

					<c:if test="${ page.currentPage >= page.maxPage }">
				&nbsp; [다음]
			</c:if>
					<c:if test="${ page.currentPage < page.maxPage }">
						<c:url var="blistEnd" value="/admin/noticeManage.admin">
							<c:param name="currentPage" value="${ page.currentPage + 1 }" />
						</c:url>
						<a href="${ blistEnd }">[다음]</a>
					</c:if>
				</div>
				<div class="writeNotice">
				<br>
					<button type="button" class="btn btn-success" onclick="location.href='${ pageContext.request.contextPath }/admin/noticeManageWrite.admin'">공지사항 작성</button>
				<br>
				</div>
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