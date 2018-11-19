<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.menuArea {
	padding: 0px;
	maring: 0px;
	text-align: center;
	width: 250px;
}
.panel-body td
{
	text-align:center;
}
</style>
</head>
<body>
	<div class="menuArea">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h2 class="panel-title">
				<b>오늘의 travelMate</b>
			</h2>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<tr>
					<td><b>오늘의 가입자수</b></td>
				</tr>
				<tr>
					<td>${ ssm.totalJoinMember }명</td>
				</tr>
				<tr>
					<td><b>오늘의 매출액</b></td>
				</tr>
				<tr>
					<td>${ ssm.totalPayment }원</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</body>
</html>