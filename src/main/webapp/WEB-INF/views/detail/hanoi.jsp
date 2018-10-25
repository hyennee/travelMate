<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/travelMate/resources/css/style.css" type="text/css">
<style>
.outer {
	width: 960px;
	margin: auto;
}

/* visualArea new */
.visualArea.new {
	margin: 0 0 50px;
	background: url('/travelMate/resources/images/detail/taipei.jpg') center
		0 repeat-x;
}

.visualArea.new .sMenu {
	z-index: 60;
	position: relative;
	top: 0;
	left: 0;
	width: 100%;
	height: 80px;
	background-color: #0f4888;
}

.visualArea.new .sMenu .in {
	position: relative;
	width: 1064px;
	height: 100%;
	margin: 0 auto;
}

.visualArea.new .sMenu .cityName {
	float: left;
	display: inline-block;
	width: 446px;
	text-align: left;
	margin-top: 19px;
}

.visualArea.new .sMenu .cityName .flag {
	position: relative;
	float: left;
	display: inline-block;
	width: 43px;
	height: 43px;
	overflow: hidden;
	border-radius: 100%;
	-webkit-border-radius: 100%;
}

.visualArea.new .sMenu .cityName .flag img {
	position: absolute;
	top: 0;
	left: 50%;
	height: 44px;
	margin-left: -33px;
}

.visualArea.new .sMenu .cityName strong {
	font-size: 35px;
	font-weight: normal;
	color: #FFF;
	letter-spacing: -0.014em;
	margin-left: 20px;
	cursor: pointer;
}

.visualArea.new .sMenu .slider {
	position: absolute;
	top: 0;
	right: 0;
}

.visualArea.new .sMenu .slider ul {
	display: block;
	text-align: right;
}

.visualArea.new .sMenu .slider li {
	_float: left;
	display: inline-block;
	height: 100%;
}

.visualArea.new .sMenu .slider li a {
	display: block;
	height: 80px;
	font-size: 20px;
	color: #FFF;
	line-height: 78px;
	padding: 0 20px;
}

.visualArea.new .sMenu .slider li.active a {
	background: #0a325f;
}

.visualArea.new .sMenu.fixed {
	position: fixed;
	top: 0;
	left: 0;
}

.visualArea.new .cityInfo {
	z-index: 2;
	position: relative;
	display: table;
	height: 43px;
	width: 1064px;
	font-size: 18px;
	color: #FFF;
	margin: 20px auto 0 auto;
}

.visualArea.new .cityInfo i {
	font-style: normal;
}

.visualArea.new .cityInfo .time, .visualArea.new .cityInfo .exchange {
	display: table-cell;
	height: 100%;
	vertical-align: middle;
}

.visualArea.new .cityInfo .time {
	text-align: left;
}

.visualArea.new .cityInfo .time p {
	height: 100%;
	line-height: 43px;
	padding-left: 64px;
	background: url('/img/common/ico_time.png') 0 0 no-repeat;
}

.visualArea.new .cityInfo .exchange {
	text-align: right;
}

.visualArea.new .cityInfo .exchange .before {
	display: inline-block;
	height: 100%;
	line-height: 43px;
	padding-left: 64px;
	background: url('/img/common/ico_exchange.png') 0 0 no-repeat;
}

.visualArea.new .cityInfo.ko .time, .visualArea.new .cityInfo.ko .exchange
	{
	display: none;
}

.visualArea.new .visualIn {
	position: relative;
	width: 960px;
	height: 390px;
	margin: 20px auto 0 auto;
	overflow: hidden;
	background: url('/travelMate/resources/images/detail/taipei.jpg') center
		0 no-repeat;
}

.visualArea.new .visualIn h2.cityName {
	z-index: 2;
	position: relative;
	display: block;
	font-size: 65px;
	color: #FFF;
	font-weight: normal;
	letter-spacing: -0.003em;
	text-align: left;
	margin: 47px 0 0 56px;
	text-shadow: 0px 0px 5px rgba(0, 0, 0, 0.4);
}

.visualArea.new .visualIn .weather {
	z-index: 3;
	position: absolute;
	bottom: 0;
	left: -15px;
	display: table;
	table-layout: fixed;
	width: 95%;
	height: 140px;
}

.visualArea.new .visualIn .cover {
	z-index: 2;
	position: absolute;
	bottom: 0;
	left: 0;
	display: block;
	width: 100%;
	height: 140px;
	background: #000;
	opacity: 0.25;
	filter: alpha(opacity = 25);
}

.visualArea.new .visualIn .weather li {
	z-index: 1;
	position: relative;
	display: table-cell;
	width: 20%;
	height: 140px;
	text-align: center;
	color: #FFF;
	vertical-align: middle;
	font-size: 18px;
	color: #FFF;
}

.visualArea.new .visualIn .weather li:before {
	z-index: 2;
	content: '';
	position: absolute;
	top: 15px;
	left: 0;
	width: 1px;
	height: 140px;
	background: #FFF;
	opacity: 0.4;
	filter: alpha(opacity = 40);
}

.visualArea.new .visualIn .weather li:first-child:before {
	display: none;
}

.visualArea.new .visualIn .weather li .ico {
	display: block;
	margin: 0 0 6px;
}

.visualArea.new .visualIn .weather li .date {
	line-height: 18px;
}

.visualArea.new .visualIn .weather li .degree {
	position: relative;
	line-height: 18px;
	padding-left: 11px;
	margin: 0 0 0 9px;
}

.visualArea.new .visualIn .weather li .degree:before {
	content: '';
	position: absolute;
	top: 4px;
	left: 0;
	width: 1px;
	height: 14px;
	background: #FFF;
	opacity: 0.4;
	filter: alpha(opacity = 40);
}

.visualArea.new .visualIn .rollingBg {
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.visualArea.new .visualIn .rollingBg img {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	display: none;
}

/* subWrap */
#subWrap {
	width: 1064px;
	text-align: left;
	margin: 0 auto;
	padding: 40px 0 70px 0;
}

#subWrap:after {
	content: '';
	display: block;
	clear: both;
}

#subWrap.cityMain {
	padding-top: 0;
	padding-bottom: 0;
}

/* theme list */
.newListArea.theme li {
	width: 245px;
	height: 349px;
}

.newListArea.theme li a {
	height: 100%;
}

.newListArea.theme li a .cover {
	width: 243px;
	height: 347px;
}

.newListArea.theme li a .thumb {
	height: 200px;
}

.newListArea.theme li a .thumb img {
	height: 100%;
}

.newListArea.theme li a .title {
	top: 220px;
	width: 205px;
}

.newListArea.theme li a .description {
	position: absolute;
	top: 247px;
	left: 0;
	display: block;
	width: 205px;
	height: 56px;
	color: #666;
	font-size: 18px;
	letter-spacing: -0.028em;
	line-height: 28px;
	margin: 0 20px;
	overflow: hidden;
	word-wrap: break-word;
}

/* newListArea */
.newListArea {
	overflow: hidden;
}

.newListArea ul {
	display: block;
	width: 1100px;
	margin-top: -28px;
}

.newListArea ul:after {
	content: '';
	display: block;
	clear: both;
}

.newListArea li {
	position: relative;
	float: left;
	display: inline-block;
	width: 336px;
	height: 238px;
	margin: 28px 28px 0 0;
	overflow: hidden;
	background: #FFF;
}

.newListArea li a {
	display: block;
	width: 100%;
	height: 225px;
	text-align: left;
}

.newListArea li a .cover {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 334px;
	height: 236px;
	border: 1px solid #000;
	opacity: 0.1;
	filter: alpha(opacity = 10);
}

.newListArea li a .thumb {
	width: 100%;
	height: 136px;
	overflow: hidden;
}

.newListArea li a .thumb img {
	max-width: 336px;
}

.newListArea li a .flag {
	position: absolute;
	top: 117px;
	left: 17px;
	width: 54px;
	height: 38px;
	background: #FFF;
}

.newListArea li a .flag img {
	position: absolute;
	top: 3px;
	left: 3px;
	width: 48px;
}

.newListArea li a .title {
	position: absolute;
	top: 172px;
	left: 20px;
	display: block;
	width: 296px;
	font-weight: 600;
	font-size: 20px;
	color: #444;
	letter-spacing: -0.025em;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.newListArea li a .by {
	position: absolute;
	top: 203px;
	left: 20px;
	display: block;
	width: 296px;
	font-size: 16px;
	color: #444;
	letter-spacing: -0.031em;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.newListArea li .likeArea {
	z-index: 5;
	position: absolute;
	bottom: 19px;
	left: 20px;
	width: auto;
	text-align: left;
	margin: 0;
}

.newListArea li .likeArea ul {
	width: auto;
	margin: 0;
}

.newListArea li .likeArea ul li {
	float: none;
	width: auto;
	height: auto;
	margin: 0 0 0 14px;
}

.newListArea li .likeArea ul li:before {
	display: none;
}

.newListArea li .likeArea ul li:first-child {
	margin: 0;
}

.newListArea li .likeArea ul li button {
	width: 70px;
}
</style>
</head>
<body>
	<jsp:include page="../must/header.jsp" />
	<br><br><br><br>
	<div class="outer">
		<div class="visualArea new">
		<div class="visualIn" style="background-image:url('/travelMate/resources/images/detail/hanoi.jpg');">
            <h2 class="cityName">하노이</h2>
            <span class="cover"></span>
			<ul class="weather">
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/300_new.png" alt="비"></span>
                    <span class="date">10/25 (목)</span>
                    <span class="degree">23~27˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/300_new.png" alt="비"></span>
                    <span class="date">10/26 (금)</span>
                    <span class="degree">22~27˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/110_new.png" alt="흐린 후 갬"></span>
                    <span class="date">10/27 (토)</span>
                    <span class="degree">21~25˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/101_new.png" alt="구름조금"></span>
                    <span class="date">10/28 (일)</span>
                    <span class="degree">20~26˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/101_new.png" alt="구름조금"></span>
                    <span class="date">10/29 (월)</span>
                    <span class="degree">21~25˚C</span>
                </li>
            </ul>
        </div>  
    </div>
    
    <div id="subWrap" class="cityMain">
        <div id="menu01" class="container" style="margin-left:-100px;">
            <h3>핵심만 콕콕, 하노이 추천일정 및 테마</h3>
            <div class="newListArea theme">
                <ul>
                   <li>
                      <a href="/dest/content/theme/11?contentID=1000021124101">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2017101126/gjfhme/하노이_호치민 묘소_TTB(1).JPG" alt="하노이, 하롱베이 추천일정" width="522">                           
                             </div>
                            <strong class="title">하노이 푸드트립 3박 5일</strong>
                            <span class="description">
보는 즐거움보다 먹는 즐거움이 배로 큰 베트남 여행. 먹는 순간은 물론 가격도 부담 없어 마지막까지 행복하다. 
베트남의 맛부터 프렌치 요리까지 모두 맛보려...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="/dest/content/theme/11?contentID=1000021160101">
                            <div class="thumb">
                               <img src="//ttcfd.hanatour.com/@cms_600/2017101636/gjfhwh/하노이_퍼 틴_TTB(3).JPG" alt="여행이 맛있는 베트남" width="522"><img src="//ttcfd.hanatour.com/@cms_600/2017101636/gjfhwh/하노이_퍼 틴_TTB(3).JPG" alt="여행이 맛있는 베트남" width="522">                           
                                </div>
                            <strong class="title">하노이, 하롱베이 추천일정</strong>
                            <span class="description">베트남의 과거와 현재를 만날 수 있는 천 년의 도시, 하노이로 떠나 보자. 
역사의 도시답게 다채로운 볼거리와 맛있는 음식까지 더해져 풍요로운 여행을 선사한...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="/dest/content/theme/11?contentID=1000021190101">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2017101960/gjfi0z/하롱베이_하롱팔래스 (1).jpg" alt="하롱베이" width="522">
                             </div>
                            <strong class="title">하롱베이</strong>
                            <span class="description">파란 하늘 아래, 바다의 숲이라 불리는 베트남 최고의 경승지 하롱베이. 유네스코 세계 자연 유산에 등록된 아름다운 여행지다. 
하롱(下龍)의 지명 유래는 '하...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                                    
                    <li>
                        <a href="/dest/content/theme/11?contentID=1000021192101">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2017101626/gjfhwp/하노이_롯데마트_TTB(3).JPG" alt="하노이 쇼핑 리스트" width="522">                          
                                 </div>
                            <strong class="title">하노이 쇼핑 리스트</strong>
                            <span class="description">한국 여행객을 위한 마트
쾌적한 쇼핑 환경, 다양한 상품을 보유 
롯데마트와 함께 호텔, 백화점이 함께 위치 

한국 마트답게 여행 중 필요한 한국 제품을 쉽게...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
               </ul>
            </div>
    </div>
</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>