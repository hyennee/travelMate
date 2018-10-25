<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/travelMate/resources/css/style.css"
	type="text/css">
<style>
.outer {
	width: 960px;
	margin: auto;
}

.info h2{
float: none !important;
}

/* cityList */
.cityList {
	display: table;
	width: 100%;
	table-layout: fixed;
	margin: -10px 0 0 0;
	overflow: hidden;
}

.cityList ul {
	display: block;
	width: 100%;
	height: 100%;
	min-height: 468px;
	vertical-align: middle;
	*zoom: 1;
	padding: 8px 0;
}

.cityList ul:after {
	content: '';
	clear: both;
}

.cityList li {
	display: block;
	width: 100%;
	vertical-align: middle;
}

.cityList li a {
	position: relative;
	display: block;
	width: 100%;
	text-indent: 16px;
	font: normal 14px/100% "Nanum Gothic";
	letter-spacing: -1px;
	color: #232323;
	padding: 8px 0;
}

.cityList li a:hover {
	background: #e7e7e7;
}

.cityList li a img {
	display: inline-block;
	width: 30px;
	vertical-align: middle;
	margin: 0 10px 0 0;
}

.cityList li a em {
	position: relative;
	top: -1px;
	display: inline-block;
	width: 13px;
	height: 13px;
	font: 0/0 arial;
	letter-spacing: 0;
	text-indent: -9999em;
	vertical-align: middle;
	margin-left: 5px;
}

.cityList li a em.hot {
	background: url('/img/common/ico_hot_round.png') no-repeat;
}

.cityList li a em.new {
	background: url('/img/common/ico_new_round.png') no-repeat;
}

.cityList li.small a {
	letter-spacing: -2px;
	font-size: 13px;
}

.cityList .section {
	position: relative;
	display: table-cell;
	width: 150px;
	height: 100%;
	padding: 50px 0 0 0;
	background: #FFF;
	border: 1px solid #e7e7e7;
	border-width: 0 1px 1px 0;
}

.cityList .section .title {
	z-index: 3;
	position: absolute;
	top: -1px;
	left: -1px;
	display: block;
	width: 160px;
	height: 50px;
	font: bold 15px/50px "Nanum Gothic";
	color: #FEFEFE;
	text-align: center;
	background: #4a505d;
}

.cityList .section .title:after {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 1px;
	height: 100%;
	background: #232323;
}

.cityList .section.first {
	width: 149px;
	border-width: 0 1px 1px 1px;
}

.cityList .section.first .title:after {
	display: none;
}

.cityList .section:last-child {
	border-right: 1px solid #e7e7e7;
}

.cityList .section:last-child .title {
	border-right: 1px solid #4a505d;
}


a{
	text-decoration:none;
}
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="contents">
			<div id="adbox">
				<img src="/travelMate/resources/images/jumping.jpg" alt="Img"
					height="444" width="630">
				<div class="info">
					<h2 style="width:250px;">여행의 시작</h2>
					<p>너왜여기있니?</p>
				</div>
			</div>
		</div>
		
		<div class="cityList">
			<div class="section first">
				<strong class="title">동남아</strong>
				<ul>
					<li first=""><a href="taipei.me"><img src="/travelMate/resources/images/flag/TW.jpg" alt="타이페이">타이페이</a></li>
					<li first=""><a href="hanoi.me"><img src="/travelMate/resources/images/flag/VN.jpg" alt="하노이">하노이</a></li>
					<li first=""><a href="/dest/city/17"><img src="/travelMate/resources/images/flag/PH.jpg" alt="세부">세부</a></li>
					<li first=""><a href="/dest/city/48"><img src="/travelMate/resources/images/flag/VN.jpg" alt="호치민">호치민</a></li>
					<li first=""><a href="/dest/city/19"><img src="/travelMate/resources/images/flag/MY.jpg" alt="코타 키나발루">코타 키나발루</a></li>
					<li first=""><a href="/dest/city/38"><img src="/travelMate/resources/images/flag/MY.jpg" alt="페낭">페낭</a></li>
					<li first=""><a href="/dest/city/39"><img src="/travelMate/resources/images/flag/MY.jpg" alt="쿠알라룸푸르">쿠알라룸푸르</a></li>
					<li first=""><a href="/dest/city/44"><img src="/travelMate/resources/images/flag/VN.jpg" alt="다낭">다낭</a></li>
					<li first=""><a href="/dest/city/15"><img src="/travelMate/resources/images/flag/TH.jpg" alt="방콕">방콕</a></li>
					<li first=""><a href="/dest/city/16"><img src="/travelMate/resources/images/flag/TH.jpg" alt="푸껫">푸껫</a></li>
					<li first=""><a href="/dest/city/42"><img src="/travelMate/resources/images/flag/LA.jpg" alt="라오스">라오스</a></li>
					<li first=""><a href="/dest/city/41"><img src="/travelMate/resources/images/flag/PH.jpg" alt="마닐라">마닐라</a></li>
					<li first=""><a href="/dest/city/3"><img src="/travelMate/resources/images/flag/SG.jpg" alt="싱가포르">싱가포르</a></li>
					<li first=""><a href="/dest/city/34"><img src="/travelMate/resources/images/flag/TW.jpg" alt="타이중">타이중</a></li>
					<li first=""><a href="/dest/city/33"><img src="/travelMate/resources/images/flag/TW.jpg" alt="가오슝">가오슝</a></li>
					<li first=""><a href="/dest/city/18"><img src="/travelMate/resources/images/flag/PH.jpg" alt="보라카이">보라카이</a></li>
				</ul>
			</div>
			<div class="section">
				<strong class="title">중국</strong>
				<ul>
					<li><a href="hongkong.me"><img src="/travelMate/resources/images/flag/HK.jpg" alt="홍콩">홍콩</a></li>
					<li><a href="/dest/city/8"><img src="/travelMate/resources/images/flag/MO.jpg" alt="마카오">마카오</a></li>
					<li><a href="/dest/city/12"><img src="/travelMate/resources/images/flag/CN.jpg" alt="북경">북경</a></li>
					<li><a href="/dest/city/13"><img src="/travelMate/resources/images/flag/CN.jpg" alt="상해">상해</a></li>
					<li><a href="/dest/city/14"><img src="/travelMate/resources/images/flag/CN.jpg" alt="청도">청도</a></li>
					<li><a href="/dest/city/40"><img src="/travelMate/resources/images/flag/CN.jpg" alt="황산">황산</a></li>
					<li><a href="/dest/city/43"><img src="/travelMate/resources/images/flag/CN.jpg" alt="장가계">장가계</a></li>
					<li><a href="/dest/city/46"><img src="/travelMate/resources/images/flag/CN.jpg" alt="서안">서안</a></li>
				</ul>
			</div>
			<div class="section">
				<strong class="title">일본</strong>
				<ul>
					<li><a href="/dest/city/2"><img src="/travelMate/resources/images/flag/JP.jpg" alt="오사카">오사카</a></li>
					<li><a href="/dest/city/10"><img src="/travelMate/resources/images/flag/JP.jpg" alt="도쿄">도쿄</a></li>
					<li><a href="/dest/city/9"><img src="/travelMate/resources/images/flag/JP.jpg" alt="후쿠오카">후쿠오카</a></li>
					<li><a href="/dest/city/49"><img src="/travelMate/resources/images/flag/JP.jpg" alt="오키나와">오키나와</a></li>
				</ul>
			</div>
			<div class="section america">
				<strong class="title">남태평양</strong>
				<ul>
					<li america=""><a href="/dest/city/27"><img src="/travelMate/resources/images/flag/AU.jpg" alt="시드니">시드니</a></li>
					<li america=""><a href="/dest/city/6"><img src="/travelMate/resources/images/flag/GU.jpg" alt="괌">괌</a></li>
				</ul>
			</div>
			<div class="section">
				<strong class="title">미주</strong>
				<ul>
					<li><a href="/dest/city/5"><img src="/travelMate/resources/images/flag/US.jpg" alt="뉴욕">뉴욕</a></li>
					<li><a href="/dest/city/25"><img src="/travelMate/resources/images/flag/US.jpg" alt="하와이">하와이</a></li>
					<li><a href="/dest/city/26"><img src="/travelMate/resources/images/flag/US.jpg" alt="미서부">미서부</a></li>
				</ul>
			</div>
			<div class="section">
				<strong class="title">유럽</strong>
				<ul>
					<li><a href="/dest/city/22"><img src="/travelMate/resources/images/flag/ES.jpg" alt="바르셀로나">바르셀로나</a></li>
					<li><a href="/dest/city/4"><img src="/travelMate/resources/images/flag/FR.jpg" alt="파리">파리</a></li>
					<li><a href="/dest/city/20"><img src="/travelMate/resources/images/flag/IT.jpg" alt="로마">로마</a></li>
					<li><a href="/dest/city/50"><img src="/travelMate/resources/images/flag/RU.jpg" alt="블라디보스토크">블라디보스토크</a></li>
					<li><a href="/dest/city/21"><img src="/travelMate/resources/images/flag/GB.jpg" alt="런던">런던</a></li>
					<li><a href="/dest/city/23"><img src="/travelMate/resources/images/flag/HR.jpg" alt="크로아티아">크로아티아</a></li>
					<li><a href="/dest/city/24"><img src="/travelMate/resources/images/flag/TR.jpg" alt="이스탄불">이스탄불</a></li>
				</ul>
			</div>
			

		</div>
		
	</div>
	<!-- Footer -->
	<jsp:include page="../must/footer.jsp" />
</body>
</html>