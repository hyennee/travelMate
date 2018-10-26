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
	height: 1200px;
	margin: auto;
	background: #edefea;
}

#openQnAForm {
	margin-left: 30px;
	margin-right: 30px;
}

#openQuestion {
	width: 100%;
	height: 400px;
	border: solid 1px #999;
	margin: auto;
	text-indent: 20px;
}

#questionUl>li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 13px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 8px;
	border-height: 1em;

	/* 각 메뉴 간격 */
}

#questionUl>li:first-child {
	border-left: none;
}

#questionUl {
	padding: 0;
}

#questioncon3{
text-align:left;
margin-left:10px;
margin-top: 30px;
}

#questioncon3 p {
font-size:14px;
}
</style>
<body>

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
							</div>


						</div>

						<div id="openAnswer"></div>






























					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>