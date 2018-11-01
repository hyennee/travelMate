<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.menuArea {
		text-align:center;
	}
</style>
</head>
<body>
	<div class="menuArea">
	<h2><span class="label label-success">회원관리</span></h2>
	<ul>
		<li><a href="${ pageContext.request.contextPath }/admin/memberManage.admin">회원목록</a></li>
		<li>휴면/제재/탈퇴</li>
		<li>ABC</li>
	</ul>
	</div>
</body>
</html>