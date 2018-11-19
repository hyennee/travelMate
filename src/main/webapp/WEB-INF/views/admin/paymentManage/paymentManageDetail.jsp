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
				<span class="label label-primary">결제 세부 정보</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<c:forEach var="row" items="${ paymentDetail }">
							<tr>
								<td class="row-header">결제번호</td>
								<td>${ row.payment_No }</td>
							</tr>
							<tr>
								<td class="row-header">거래일련번호</td>
								<td>${ row.proof_No }</td>
							</tr>
							<tr>
								<td class="row-header">거래자</td>
								<td>${ row.user_Name }(${ row.nick_Name })</td>
							</tr>
							<tr>
								<td class="row-header">거래일</td>
								<td>${ row.payment_Date }</td>
							</tr>
							<tr>
								<td class="row-header">거래종류</td>
								<td>${ row.payment_Type }</td>
							</tr>
							<tr>
								<td class="row-header">거래금액</td>
								<c:if test="${ row.payment_Type eq '구매' }">
								<td>${ row.money }</td>
								</c:if>
								<c:if test="${ row.payment_Type eq '환불' }">
								<td>-${ row.money }</td>
								</c:if>
							</tr>
							<tr>
								<td class="row-header">거래상태</td>
								<td>${ row.payment_Status }</td>
							</tr>
							<tr>
								<td class="row-header">결제수단</td>
								<td>${ row.payment_Way }</td>
							</tr>
							<tr>
								<td colspan="2"><hr></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<button class="btn btn-success" onclick="location.href='${ pageContext.request.contextPath }/admin/paymentManage.admin'">목록으로 돌아가기</button>
			</div>
		</div>
		<br><br>
	</c:if>
</body>
</html>