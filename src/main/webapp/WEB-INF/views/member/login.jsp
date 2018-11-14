<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.outer {
	width: 960px;
	margin: auto;
}

#loginArea {
	width: 100%;
	height: 800px;
	margin: auto;

}

#loginForm {
	width: 300px;
	height: 450px;
	margin-top: 124px;
	background: #91d4c6; /* #a3dbcf; */
	display: inline-block;
	border-radius: 4px;
}

.inputLoginForm {
	position: relative;
	width: 200px;
	margin-top: 15px;
	margin-right: 10px;
}

.inputLoginForm label {
	position: absolute;
	top: 1px; /* input 요소의 border-top 설정값 만큼 */
	left: 1px; /* input 요소의 border-left 설정값 만큼 */
	padding: .5em; /* input 요소의 padding 값 만큼 */ color : #999;
	cursor: text;
	color: #999;
}

.inputLoginForm input[type="text"], .inputLoginForm input[type="password"]
	{
	width: 100%; /* 원하는 너비 설정 */
	height: auto; /* 높이값 초기화 */
	line-height: normal; /* line-height 초기화 */
	padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
	border: 1px solid #ccc;
	border-radius: 4px;
	outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */
	-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */
	-moz-appearance: none;
	appearance: none;
}

#loginBtn {
	background: #6bc6b3;
	color: #fff;
	border: 1px solid white;
	position: relative;
	margin-left: 5px;
	width: 215px;
	height: 42px;
	font-size: 14px;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	font-weight: bold;
	border-radius: 4px;
}

#loginBtn:hover {
	background: #fff;
	color: #6bc6b3;
	font-weight: bold;
}

#loginBtn:before, #loginBtn:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #6bc6b3;
	transition: 400ms ease all;
}

#loginBtn:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

#loginBtn:hover:before, #loginBtn:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

a {
	text-decoration: none;
	color:white;
	
}

a:hover {
	color: #999;
}

/* nav tag */
nav #memberMenuUl {
	padding: 0;
	margin-top : 40px;
} /*  상단 여백 10px  */
nav #memberMenuUl>li {
	display: inline; 						/*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; 			/* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 13px Dotum; 					/* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 8px; 
											/* 각 메뉴 간격 */
}

nav #memberMenuUl>li:first-child {
	border-left: none;
}

#loginMsg {
	font-size : 11px;
	font-weight:bold;
	text-align:left;
	padding: 0px 20px 0px 20px; 
	margin-left:7px;
	
}
</style>
</head>
<body>

	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="loginArea" align="center">
					<div id="loginForm" align="center">
						<form action="login.me" method="post">
							<p style="text-align: center; padding-top: 50px; font-weight: bold; font-size: 22px; color: white">로그인</p>
							<div id="loginMsg">　<br>　</div>
							<div class="inputLoginForm">
								<label for="ex_input">아이디(이메일 주소)</label> 
								<input type="text" id="ex_input" name="email" maxlength="100">
							</div>

							<div class="inputLoginForm">
								<label for="ex_input2">패스워드</label> 
								<input type="password" id="ex_input2" name="password" maxlength="100">
							</div>
							<br>
							<button id="loginBtn">로그인</button>
							
							  
						</form>
						<br>
						<!-- 네이버아이디로로그인 버튼 노출 영역 -->
 							 <div id="naver_id_login"></div>
 							 
						<div id="memberMenu">
							<nav>
								<ul id="memberMenuUl">
								 <!-- <li><a href="searchIdView.me">아이디 찾기</a></li> -->
									<li><a href="searchPasswordView.me">비밀번호 찾기</a></li>
									<li><a href="memberJoinView.me">회원가입</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />

</body>
<script>
$(document).ready(function() {
  var placeholderTarget = $('.inputLoginForm input[type="text"], .inputLoginForm input[type="password"]');
  
  //포커스시
  placeholderTarget.on('focus', function(){
    $(this).siblings('label').fadeOut('fast');
  });

  //포커스아웃시
  placeholderTarget.on('focusout', function(){
    if($(this).val() == ''){
      $(this).siblings('label').fadeIn('fast');
    }
  });
});
</script>

<script>

$('#loginBtn').click(function(){
	
	if($('#ex_input').val() == "" || $('#ex_input').val() == null){
		alert('아이디를 입력하세요.');
		$('#ex_input').focus();
		return false;
	}
	if($('#ex_input2').val() == "" || $('#ex_input2').val() == null){
		alert('비밀번호를 입력하세요.');
		$('#ex_input2').focus();
		return false;
	}
})


</script>
 <script type="text/javascript">
  	var naver_id_login = new naver_id_login("jlB_L3BFZdd8giolYl0O", "http://127.0.0.1:8001/travelMate/callback.me");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 3,40);
  	naver_id_login.setDomain("http://127.0.0.1:8001/travelMate/loginView.me");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
  


</html>