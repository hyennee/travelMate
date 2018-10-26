<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.loginMenuBarUl {
	padding-top: 10px;
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: none;
	padding: 0 3px; /* 각 메뉴 간격 */
	float: right;
}

.loginMenuBarLi {
	margin-right: 10px;
	display: inline; /*  세로나열을 가로나열로 변경 */
	padding: 0 3px;
	border-right: none;
	border-left: none; /* 메뉴 분류중 제일 왼쪽의 "|"는 삭제*/
	float: right;
}
</style>
</head>
<body>



	<div class="topLoginArea">

		<c:if test="${empty sessionScope.loginUser }">
			<div id="beforeLoginMenu">
				<nav>
					<ul class="loginMenuBarUl">
						<li class="loginMenuBarLi"><a href="memberJoinView.me"><img
								src="/travelMate/resources/images/join.png" alt="Img"
								height="14px" width="40px"></a></li>

						<li class="loginMenuBarLi"><a href="loginView.me"><img
								src="/travelMate/resources/images/login.png" alt="Img"
								height="14px" width="48px"></a></li>
					</ul>
				</nav>
			</div>
		</c:if>
		<c:if test="${!empty sessionScope.loginUser }">
			<div id="afterLoginMenu">
				<nav>
					<ul class="loginMenuBarUl">
						<li class="loginMenuBarLi"><a href="mypage.me"><img
								src="/travelMate/resources/images/mypage.png" alt="Img"
								height="14px" width="56px"></a></li>

						<li class="loginMenuBarLi"><a href="logout.me"><img
								src="/travelMate/resources/images/logout.png" alt="Img"
								height="14px" width="56px"></a></li>
								
					</ul>
					
				</nav>
				
			</div>

		</c:if>
	</div>


</body>
</html>