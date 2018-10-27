<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
#openConsulting {
	width: 100%;
	padding: 0 0 200px 0;
	margin: auto;
	background: #edefea;
	background:white; 
}

#openQnAForm {
	margin-left: 30px;
	margin-right: 30px;
	
}

#openQuestion, #openAnswer {
	width: 100%;
	padding: 0 0 20px 0;
	border: solid 1px #999;
	/* margin: auto; */
	text-indent: 30px;
    
}

#questionUl>li, #answerUl>li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 13px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 8px;
	border-height: 1em;

	/* 각 메뉴 간격 */
}

#questionUl>li:first-child, #answerUl>li:first-child {
	border-left: none;
}

#questionUl, #answerUl {
	padding: 0;
}

#questioncon3, #answercon3 {
	text-align: left;
	margin-left: 10px;
	margin-top: 50px;
	margin-bottom: 50px;
}

#questioncon3 p, #answercon3 p {
	font-size: 14px;
}

#questioncon4 {
	float: right;
	margin-right: 30px;
	margin-bottom: 40px;
}

#qBottom {
	/* display:inline; */
	position: relative;
	margin: auto;
	border-top: 1px solid #999;
	width: 100%;
}

.btnAnswer {
	float: right;
	margin-right: 40px;
	background-color: #ec983e;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
}

.btnAnswer:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnList {
	float: right;
	margin-right: 40px;
	margin-top: 25px; background-color : #ec983e;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
	background-color: #ec983e;
}

#btnList:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnAdd {
	float: right;
	margin-right: 74%;
	background-color: #ec983e;
	border: none;
	color: white;
	padding: 4px 8px;
	text-align: center;
	text-decoration: none;
	position: relative;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
}

#btnAdd:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnSelect {
	float: right;
	margin-right: 40px;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	background-color: #ff6666;
	position:relative;
	border-radius: 4px;


}

#btnSelect:hover{
	color: #ff6666;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}


</style>
<body>
	<%-- <c:if test="${!empty sessionScope.loginUser }"> --%>
	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">

				<div id="openConsulting">
					<div id="openQnAForm">
						<br> <br> <br> <span
							style="text-align: left; font-weight: bold; font-size: 24px; color: black">오픈
							컨설팅</span> <br> <span
							style="text-align: left; font-weight: bold; font-size: 12px; color: #999">오픈
							컨설팅을 의뢰하고 답할 수 있습니다.</span>
						<hr>
						<br>

						<!-- 오픈컨설팅 QnA div -->
						<div id="openQuestion">

							<!-- 오픈컨설팅 질문 제목 div -->
							<div id="questioncon1">
								<h3>안녕하세요, 남미여행 관련 컨설팅 의뢰합니다.</h3>
							</div>
							<!-- 오픈컨설팅 질문 작성자 관련 정보 div -->
							<div id="questioncon2">
								<ul id="questionUl">
									<li><img
										src="/travelMate/resources/images/flag/member.png"
										width="20px;"
										style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span>감자</span></li>
									<li><span>일반회원</span></li>
									<li><span>2018.11.22</span></li>
									<li><span>77</span></li>
								</ul>
							</div>

							<hr style="width: 95%">

							<!-- 오픈컨설팅 질문 내용 div -->
							<div id="questioncon3">
								<p>안녕하세요 , 남미여행 관련 지식인 검색하다가 여쭤보고 싶은게 있어서 문의 드립니다 ^^</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>
								<p>인천뉴욕보고타 가실때 어떤 항공사 이용하셨는지 티켓은어디서 구매 하셨는지 여쭤봐도 될까요?</p>

							</div>


							<!-- 질문 버튼 부분 div -->
							<div id="qBottom">

								<!-- 답변 불가능일 경우 -->
								<!-- <p style="margin-top:43px;">
									<span></span>
									<span> 답변이 완료된 컨설팅입니다. </span>
							</p> -->

								<!-- 답변 가능한 경우 -->
								<p style="margin-top: 20px;">
									답변을 하실 수 있습니다.
									<button class="btnAnswer" onclick="#">답변하기</button>
								</p>

							</div>
						</div>

						<br>
						<!-- 오픈컨설팅 답변 div 1 -->
						<div class="AnswerArea">
							<div id="openAnswer">

								<div id="answercon1">
									<h3>
										고구마님 답변
										<button id="btnAdd" style="font-size: 12px;">+관심추가</button>
									</h3>
								</div>
								<!-- 오픈컨설팅 답변 작성자 관련 정보 div -->
								<div id="answercon2">
									<ul id="answerUl">
										<li><img
											src="/travelMate/resources/images/flag/member.png"
											width="20px;"
											style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span>고구마</span></li>
										<li><span>컨설턴트</span></li>
										<li><span>2018.11.24 13:00</span></li>

									</ul>
								</div>

								<hr style="width: 95%">
								<!-- 오픈컨설팅 답변 내용 div -->
								<div id="answercon3" style="font-style: normal">
									<p>인천-뉴욕-보고타 로 발권했구요</p>
									<p>인천-뉴욕JFK 구간은 아시아나항공 뉴욕JFK-보고타 구간은 델타항공을 탑승했습니다.</p>
									<p>이 구간은 비싼편이고 좀 더 저렴하게 가고 싶다면 미국 본토까지 중국경유하는 항공편으로 들어가서</p>
									<p>마이애미에서 보고타까지 스피릿항공을 이용하는게 좀 더 저렴할거라 생각됩니다.</p>
								
								<button id="btnSelect">채택하기</button>
								</div>
								
							</div>


							<br>
							<!-- 오픈컨설팅 답변 div 2 -for문으로 반복시킴 -->
							<div id="openAnswer">

								<div id="answercon1">
									<h3>
										옥수수님 답변
										<button id="btnAdd" style="font-size: 12px;">+관심추가</button>
									</h3>
								</div>
								<!-- 오픈컨설팅 답변 작성자 관련 정보 div -->
								<div id="answercon2">
									<ul id="answerUl">
										<li><img
											src="/travelMate/resources/images/flag/member.png"
											width="20px;"
											style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span>옥수수</span></li>
										<li><span>컨설턴트</span></li>
										<li><span>2018.11.22 13:06</span></li>

									</ul>
								</div>

								<hr style="width: 95%">
								<!-- 오픈컨설팅 답변 내용 div -->
								<div id="answercon3" style="font-style: normal">
									<p>인천-뉴욕-보고타 로 발권했구요</p>
									<p>인천-뉴욕JFK 구간은 아시아나항공 뉴욕JFK-보고타 구간은 델타항공을 탑승했습니다.</p>
									<p>이 구간은 비싼편이고 좀 더 저렴하게 가고 싶다면 미국 본토까지 중국경유하는 항공편으로 들어가서</p>
									<p>마이애미에서 보고타까지 스피릿항공을 이용하는게 좀 더 저렴할거라 생각됩니다.</p>
								
								<button id="btnSelect">채택하기</button>
								</div>

								

							</div>
						</div>
						<!-- 목록버튼 -->
						<button id="btnList">목록</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../must/footer.jsp" />
	<%-- 	</c:if> --%>


	<!-- 로그인 권한 설정 -->

	<%-- 	<c:if test="${empty sessionScope.loginUser }">
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<script>
		alert('로그인한 회원만 이용 가능합니다.')
		window.location.href = '${contextPath}/loginView.me';
	</script>
	</c:if> --%>


</body>
</html>