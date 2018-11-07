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
	<h2><span class="label label-success">게시물 관리</span></h2>
	<ul>
		<li><a href="${ pageContext.request.contextPath }/admin/boardManage.admin">전체 게시물</a></li>
		<li>오픈컨설팅 관리</li>
		<li>1:1 상담 관리</li>
		<li>공지사항 관리</li>
	</ul>
	</div>
</body>
</html>