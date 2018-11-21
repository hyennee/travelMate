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
	text-align: left;
	height: 45px;
}

input {
	height: 40px;
}

#email {
	width: 250px;
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
				<span class="label label-primary">출금 요청 상세 정보</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="row-header">출금 신청 번호</td>
							<td>${ paymentRequestDetail.withDraw_No }</td>
						</tr>
						<tr>
							<td class="row-header">등록일</td>
							<td>${ paymentRequestDetail.withDraw_Date }</td>
						</tr>
						<tr>
							<td class="row-header">신청자</td>
							<td>${ paymentRequestDetail.user_Name }(${ paymentRequestDetail.nick_Name })</td>
						</tr>
						<tr>
							<td class="row-header">이메일</td>
							<td>${ paymentRequestDetail.email }</td>
						</tr>
						<tr>
							<td class="row-header">연락처</td>
							<td>${ paymentRequestDetail.phone }</td>
						</tr>
						<tr>
							<td class="row-header">요청 금액</td>
							<td>${ paymentRequestDetail.money }</td>
						</tr>
						<tr>
							<td class="row-header">은행명</td>
							<td>${ paymentRequestDetail.bank }</td>
						</tr>
						<tr>
							<td class="row-header">계좌번호</td>
							<td>${ paymentRequestDetail.bank_No }</td>
						</tr>
						<tr>
							<td class="row-header">예금주</td>
							<td>${ paymentRequestDetail.name }</td>
						</tr>						
					</tbody>
				</table>
				<c:if test='${ not empty paymentRequestDetail.status }'>
					<table class="table table-bordered">
						<tr>
							<td class="row-header">출금승인여부</td>
							<c:if test="${ paymentRequestDetail.status eq 'N'}">
							<td><B>미처리</B></td>
							</c:if>
							<c:if test="${ paymentRequestDetail.status eq 'Y'}">
							<td><B>출금완료</B></td>
							</c:if>
							<c:if test="${ paymentRequestDetail.status eq 'R'}">
							<td><B>출금거부</B></td>
							</c:if>
						</tr>
					</table>
					<form name="applyAcceptForm" method="POST">
						<input name="request_no" type="hidden" value="${ paymentRequestDetail.withDraw_No }"/>
						<c:if test="${paymentRequestDetail.status eq 'N' }">
						<button type="button" class="btn btn-primary"
							onclick='applyConfirm(1);'>승인</button>
						<button type="button" class="btn btn-danger"
							onclick='applyConfirm(2);'>거부</button>
						</c:if>	
											<button type="button" class="btn btn-success"
					onclick="location.href='${ pageContext.request.contextPath }/admin/paymentRequestManage.admin'">목록으로</button>
					</form>
					</c:if>
			</div>
		</div>
		<script>
			function applyConfirm(menu) {

				if (menu == 1) {
					document.applyAcceptForm.action = '${ pageContext.request.contextPath }/admin/paymentRequestApproveManage.admin';
					document.applyAcceptForm.submit();
				}

				if (menu == 2) {
					document.applyAcceptForm.action = '${ pageContext.request.contextPath }/admin/paymentRequestRefuseManage.admin';
					document.applyAcceptForm.submit();
				}

			}
		</script>
	</c:if>
</body>
</html>