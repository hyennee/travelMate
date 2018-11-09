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
					<b>회원관리</b>
				</h2>
			</div>
			<div class="panel-body">
				<b><a
					href="${ pageContext.request.contextPath }/admin/memberManage.admin">회원목록</a></b><br><br>
					<b><a href="${ pageContext.request.contextPath }/admin/consultManage.admin">컨설턴트 회원 신청관리</a></b><br><br>
			</div>
		</div>
	</div>
</body>
</html>