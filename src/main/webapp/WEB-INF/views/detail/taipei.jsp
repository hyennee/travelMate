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
		<div class="visualIn" style="background-image:url('/travelMate/resources/images/detail/taipei.jpg');">
            <h2 class="cityName">타이페이</h2>
            <span class="cover"></span>
            <ul class="weather">
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/110_new.png" alt="흐림"></span>
                    <span class="date">10/24 (목)</span>
                    <span class="degree">21~24˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/110_new.png" alt="흐림"></span>
                    <span class="date">10/25 (금)</span>
                    <span class="degree">22~26˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/300_new.png" alt="비"></span>
                    <span class="date">10/26 (토)</span>
                    <span class="degree">22~27˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/300_new.png" alt="비"></span>
                    <span class="date">10/27 (일)</span>
                    <span class="degree">21~22˚C</span>
                </li>
                <li>
                    <span class="ico"><img src="/travelMate/resources/images/detail/110_new.png" alt="흐림"></span>
                    <span class="date">10/28 (월)</span>
                    <span class="degree">17~24˚C</span>
                </li>
            </ul>
        </div>  
    </div>
    
    <div id="subWrap" class="cityMain">
        <div id="menu01" class="container" style="margin-left:-100px;">
            <h3>핵심만 콕콕, 타이페이 추천일정 및 테마</h3>
            <div class="newListArea theme">
                <ul>
                   <li>
                      <a href="detailTaipei1.bo">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2014062372/gjdn9q/국립고궁박물관.jpg" alt="고궁박물원" width="522">                            
                             </div>
                            <strong class="title">고궁박물원</strong>
                            <span class="description">
		인기리에 방영됐던 '꽃보다 할배' 타이완편에 나와 주목받은 고궁박물원. 타이베이 여행에서 누구나 필수로 들르는 곳으로, 소장 유물의 개수만 하더라도 69만...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="detailTaipei2.bo">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2015081277/gjex2p/타이베이_핑시선 지우펀_TTS(1).jpg" alt="지우펀" width="522">                            </div>
                            <strong class="title">지우펀</strong>
                            <span class="description">지우펀 九份
타이완 북부의 신베이 시에 위치한 마을인 지우펀은 아홉 가구밖에 없는 작은 산골 마을에 '언제 어디서든 아홉 가구의 물건을 함께 구입하여 아홉...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="detailTaipei3.bo">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2014062340/gjdj6x/(국립 중정기념당&amp;융캉제 주변)_딘타이펑_TT.jpg" alt="타이베이(타이페이) 음식" width="522" style="margin-top: 0px;">                            </div>
                            <strong class="title">타이베이(타이페이) 음식</strong>
                            <span class="description">타이완 여행을 식도락 여행으로 간다면? 생각만 해도 정말 기분 좋은 여행이 될 것! 먹거리 가득한 타이베이 시내에서는 다양한 종류의 타이완 음식을 맛볼 수 ...</span>
                            <span class="cover"></span>
                        </a>
                    </li>
                                    
                    <li>
                        <a href="detailTaipei4.bo">
                            <div class="thumb">
                                <img src="//ttcfd.hanatour.com/@cms_600/2015051579/gjeus3/IMGP4877.JPG" alt="타이베이(타이페이) 마사지" width="522">                            </div>
                            <strong class="title">타이베이(타이페이) 마사지</strong>
                            <span class="description">타이완 정부에서 인정한 마사지 중의원인 자화당. 발바닥을 지나가는 혈을 찾아 여행 중 쌓인 피로를 풀어주는데 탁월하다. 2인 이상이라면 픽업서비스까지 된다...</span>
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