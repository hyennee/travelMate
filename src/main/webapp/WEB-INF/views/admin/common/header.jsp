<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Page</title>
<style>
	.errorInfo {
		text-align:center;
	}
</style>
</head>
<body>
	<c:if test="${ sessionScope.loginUser.userType eq 'ADMIN' }">
		<b>hello, adminWorld!</b>
	</c:if>
		<div class="errorInfo">
		<b>error. you must login with admin ID.</b><br>
		you logged as ${ sessionScope.loginUser.email }
		<br>your account type is ${ sessionScope.loginUser.user_type_level }
		</div>
</body>
</html>