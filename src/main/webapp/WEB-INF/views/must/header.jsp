<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/travelMate/resources/css/style.css" type="text/css">
<style>
.header {
	width: 960px;
	margin: auto;
}

.searchbar{
	width:120px;
	height:40px;
}
</style>
</head>

<body>

		<!-- 로그인 상단메뉴 추가 -->
		<jsp:include page="loginMenubar.jsp"/>
		<!-- 로그인 상단메뉴 추가 -->
		<div id="header" class="header">
		
			<div id="logo">
				<a href="/travelMate/index.jsp"> <img src="/travelMate/resources/images/logo.png" alt="LOGO" width="170px;"></a>
			</div>
			<!-- <form action="/test/index.jsp" method="post" class="searchbar">
				<input type="text" value="Search" onFocus="this.select();" onMouseUp="return false;">
				<input type="submit" value="Go">
			</form> -->
			<ul id="navigation">
				<li>
					<a href="travelInfo.me">여행정보</a>
				</li>
				<li >
					<a href="selectList.bo?category=3">오픈컨설팅</a>
				</li>
				<li>
					<a href="selectCSlist.bo">다이렉트컨설팅</a>
				</li>
				<li>
					<a href="applyConsult.me">회원컨설팅신청</a>
				</li>
				<li>
					<a href="selectServiceCenter.bo">고객센터</a>
				</li>

			</ul>
		</div>
</body>
</html>