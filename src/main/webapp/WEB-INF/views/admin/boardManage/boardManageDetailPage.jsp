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
	padding-left: 20px;
	margin-top: 0px;
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

.row-header {
	text-align: center;
	background: #efefef;
	color: black;
	font-weight: bold;
}

td {
	color: #727272;
	text-align: justify;
	height: 45px;
}

input {
	height: 40px;
}

#email {
	width: 250px;
}

#buttonArea {
	text-align: right;
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
				<span class="label label-primary">게시물 관리</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<c:forEach var="row" items="${ boardDetail }">
							<tr>
								<td colspan="2" style="background-color: lightgray;"><h4
										style="color: orangered;">
										<b>${ row.title }</b>
									</h4> 게시물번호: <b>${ row.board_no }</b>&nbsp;&nbsp;|&nbsp; 등록자: <b>${ row.nick_Name }(${ row.user_Name })</b>&nbsp;&nbsp;|&nbsp;등록일:
									<b>${ row.board_date }</b></td>
							</tr>
							<tr>
								<td colspan="2">${ row.content }</td>
							</tr>
							<tr>
								<td id="buttonArea" colspan="2">
								<input type="hidden" name="board_no" value='${ row.board_no }' />
								<c:if test="${ row.category eq '2' and row.ref_no eq '0' and row.status eq 'Y'}">
								<button type="button" class="btn btn-sm btn-success" style="text-align: right;" onclick="location.href='${ pageContext.request.contextPath }/admin/boardManageReply.admin?board_no=${ row.board_no }'">답변</button>
								</c:if>
								<c:if test="${ row.writer eq sessionScope.loginUser.user_no }">
								<button type="button" class="btn btn-sm btn-info" style="text-align: right;" onclick="location.href='${ pageContext.request.contextPath }/admin/boardManageModify.admin?board_no=${ row.board_no }'">수정</button>
								</c:if>
								<c:if test="${ row.status eq 'Y' }">
								<button type="button" class="btn btn-sm btn-danger" style="text-align: right;" onclick="location.href='${ pageContext.request.contextPath }/admin/boardManageDelete.admin?board_no=${ row.board_no }'">삭제</button>
								</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<button type="button" class="btn btn-sm btn-success" style="text-align: center;" onclick="javascript:history.back()">목록으로</button>
		</div>
	</c:if>
</body>
</html>