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
				<span class="label label-primary">회원 컨설턴트 신청서 상세 정보</span>
			</h2>
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="row-header">신청서번호</td>
							<td>${ selectApplyDetail.consult_Apply_No }</td>
						</tr>
						<tr>
							<td class="row-header">등록일</td>
							<td>${ selectApplyDetail.apply_Date }</td>

						</tr>
						<tr>
							<td class="row-header">신청자</td>
							<td>${ selectApplyDetail.user_Name }(${ selectApplyDetail.nick_Name })</td>
						</tr>
						<tr>
							<td class="row-header">성별</td>
							<c:if test="${ selectApplyDetail.gender eq 'M' }">
								<td>남</td>
							</c:if>
							<c:if test="${ selectApplyDetail.gender eq 'F' }">
								<td>여</td>
							</c:if>
						</tr>
						<tr>
							<td class="row-header">연락처</td>
							<td>${ selectApplyDetail.phone }</td>
						</tr>
						<tr>
							<td class="row-header">직업</td>
							<td>${ selectApplyDetail.job }</td>
						</tr>
						<tr>
							<td class="row-header">자기소개</td>
							<td>${ selectApplyDetail.info }</td>
						</tr>
						<tr>
							<td class="row-header">주요 여행경험</td>
							<td>${ selectApplyDetail.travel_Exp }</td>
						</tr>
						<tr>
							<td class="row-header" colspan="2">여행상품 아이디어</td>
						</tr>
						<tr>
							<td colspan="2">${ selectApplyDetail.idea }</td>
						</tr>
						<tr>
							<td class="row-header">특이사항</td>
							<td>${ selectApplyDetail.etc }</td>
						</tr>
					</tbody>
				</table>
				<c:if test='${ not empty selectApplyDetail.status }'>
					<table class="table table-bordered">
						<tr>
							<td class="row-header">승인여부</td>
							<td>${ selectApplyDetail.status }</td>
						</tr>
						<tr>
							<td class="row-header" colspan="2">승인/거부 사유</td>
						</tr>
						<tr>
							<td colspan="2">${ selectApplyDetail.reason }</td>
						</tr>
					</table>
				</c:if>
				<c:if test='${ empty selectApplyDetail.status }'>
					<form name="applyAcceptForm" method="post">
						<table class="table table-bordered">
							<tr>
								<td class="row-header">승인여부</td>
								<td>미승인</td>
							</tr>
							<tr>
								<td class="row-header" colspan="2">승인/거부 사유</td>
							</tr>
							<tr>
								<td colspan="2"><textarea name="reason" cols="100"
										style="resize: none; width: 100%;"></textarea> <input
									type="hidden" name="user_No"
									value='${ selectApplyDetail.user_No }' /> <input type="hidden"
									name="apply_no" value='${ selectApplyDetail.consult_Apply_No }' />
								</td>
							</tr>
						</table>
						<button type="button" class="btn btn-primary"
							onclick='applyConfirm(1);'>승인</button>
						<button type="button" class="btn btn-danger"
							onclick='applyConfirm(2);'>거부</button>
					</form>
				</c:if>
				<button type="button" class="btn btn-success"
					onclick="location.href='${ pageContext.request.contextPath }/admin/consultManage.admin'">목록으로
					돌아가기</button>
			</div>
		</div>
		<script>
			function applyConfirm(menu) {

				if (menu == 1) {
					document.applyAcceptForm.action = '${ pageContext.request.contextPath }/admin/consultApplyAccept.admin';
					document.applyAcceptForm.submit();
				}

				if (menu == 2) {
					document.applyAcceptForm.action = '${ pageContext.request.contextPath }/admin/consultApplyRefuse.admin';
					document.applyAcceptForm.submit();
				}

			}
		</script>
	</c:if>
</body>
</html>