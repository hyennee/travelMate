<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.panel-title {
	color: white;
}
.menuArea {
	padding: 0px;
	maring: 0px;
	text-align: center;
	width: 250px;
}
</style>
</head>
<body>
	<div class="menuArea">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="panel-title">
					<b>결제관리</b>
				</h2>
			</div>
			<div class="panel-body">
				<b><a
					href="${ pageContext.request.contextPath }/admin/PaymentManage.admin">결제목록</a></b><br><br>
			</div>
		</div>
	</div>
</body>
</html>