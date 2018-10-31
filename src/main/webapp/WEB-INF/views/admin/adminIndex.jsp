<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Index Page</title>
<style>
	.headerMenu{
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
		width: 73%;
		padding: 50px;
		margin: 0px auto;
		float: left;
		border: 0px solid #bcbcbc;
	}
</style>
</head>
<body>
	<c:if test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
	<c:redirect url="../"/>
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
	<div class="headerMenu">
	<jsp:include page="../admin/common/header.jsp"/>
	</div>
	<div class="leftMenu">
	<jsp:include page="../admin/common/sideMenu.jsp"/>
	</div>
	<div class="lowerPage">
	하단부 테스트
	${ contextPath }
	</div>
	</c:if>
</body>
</html>