<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Jua"
	rel="stylesheet">
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
	background: #fc972a;
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
	background: #fc972a;
}



</style>
</head>
<body>
	<div class="side-menu" >
		<ul id="navi">
			<li class="group">

				<div class="title">계정관리</div>
				<ul class="sub">
					<li>나의 계정</li>
					<li>정보수정</li>
					<li>비번수정</li>
				</ul>
			</li>
			<li class="group">
				<div class="title">서비스 관리</div>
				<ul class="sub">
					<li>거래내역</li>
					<li>1:1 문의</li>
				</ul>
			</li>
			<li class="group">
				<div class="title">컨설턴트관리</div>
				<ul class="sub">
					<li>컨설팅 고객관리</li>
					<li>나의 컨설턴트 매뉴얼</li>

				</ul>
			</li>
		</ul>
	</div>





</body>
</html>