<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 사이드바 메뉴</title>
<style>
.side-menu {
	margin: 80px auto;
	height: 800px;
	padding: 0;
	height: 700px;
	float: left;
}

ul#navi {
	width: 200px;
}

ul#navi ul li.group div.title {
	text-indent: 0px;
}

ul#navi, ul#navi ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

li.group {
	margin-bottom: 3px;
}
/* 주메뉴 */
li.group div.title {
	height: 50px;
	line-height: 50px;
	background: #6bc6b3;
	cursor: pointer;
	color: white;
	font-size: 18px;
	text-align: center;
	font-family: 'Jua', sans-serif;
}
/* 서브메뉴 */
ul.sub li {
	margin-bottom: 2px;
	line-height: 50px;
	background: #f4f4f4;
	cursor: pointer;
	font-family: 'Jua', sans-serif;
	text-indent: 10px;
}

ul.sub li a {
	display: block;
	width: 100%;
	height: 100%;
	text-decoration: none;
	font-family: 'Jua', sans-serif;
	color: #000;
	font-size: 16px;
}

ul.sub li:hover {
	background: #6bc6b3;
}



</style>
</head>
<body>
	<div class="side-menu" >
		<ul id="navi">
			<c:if test="${(!empty sessionScope.loginUser) and (sessionScope.loginUser.user_type_level eq '3')}">		
				<li class="group">
					<div class="title">컨설턴트관리</div>
					<ul class="sub">
						<li><a href="consultingCustomer.me">컨설팅 고객관리</a></li>
						<li><a href="consultingManual.me">나의 컨설턴트 매뉴얼</a></li>

					</ul>
				</li>
			</c:if>
		
			<li class="group">

				<div class="title">계정관리</div>
				<ul class="sub">
					<li><a href="myInfo.me">나의계정</a></li>
					<li><a href="modifyInfo.me">정보수정</a></li>
					<li><a href="modifyPwd.me">비밀번호변경</a></li>
					<li><a href="cancelAccount.me">회원탈퇴</a></li>
				</ul>
			</li>
			<li class="group">
				<div class="title">서비스 관리</div>
				<ul class="sub">
					<li><a href="tradeHistory.me">거래내역</a></li>
					<li><a href="oneByOneQnA.me">1:1 문의</a></li>
					<li><a href="Money.me">사이버머니</a></li>
					
				</ul>
			</li>
		</ul>
	</div>





</body>
</html>