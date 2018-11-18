<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	<c:if test="${!empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="openConsulting">
					<div id="openQnAForm">
						<span style="text-align: left; font-weight: bold; font-size: 24px; color: black">오픈컨설팅</span><br>
						<span style="text-align: left; font-weight: bold; font-size: 12px; color: #999">오픈 컨설팅을 의뢰하고 답할 수 있습니다.</span>
						<hr>
						<!-- 오픈컨설팅 QnA div -->
						<form action="goAnswerInsertForm.bo" method="post">
							<input type="hidden" name="boardNo" value="${ selectOne.boardNo }">
							<input type="hidden" name="category" value="${ selectOne.category }">
							<div id="openQuestion">
								<!-- 오픈컨설팅 질문 제목 div -->
								<div id="questioncon1">
									<h3><c:out value="${ selectOne.title }" escapeXml="false"/></h3>
								</div>
								<!-- 오픈컨설팅 질문 작성자 관련 정보 div -->
								<div id="questioncon2">
									<ul id="questionUl">
										<li><img src="/travelMate/resources/images/flag/member.png" width="20px;" style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span><c:out value="${ selectOne.nickName }" escapeXml="false"/></span></li>
										<input type="hidden" name="nickName" value="${ selectOne.nickName }">
										<li><span><c:out value="${ selectOne.boardDate }" escapeXml="false"/></span></li>
										<input type="hidden" name="boardDate" value="${ selectOne.boardDate }">
									</ul>
								</div>
								<hr style="width: 95%">
								<!-- 오픈컨설팅 질문 내용 div -->
								<div id="questioncon3">
									<c:out value="${ selectOne.content }" escapeXml="false"/>
								</div>
								<textarea style="display:none;" name="content"><c:out value="${ selectOne.content }" escapeXml="false"/></textarea>
								<!-- 질문 버튼 부분 div -->
								<c:if test="${ selectOne.nickName ne sessionScope.loginUser.getNick_name() }">
									<c:if test="${ selectOne.refNo eq 0 }">
										<div id="qBottom">
											<p style="margin-top:20px;">
												답변을 하실 수 있습니다.
												<button class="btnAnswer" type="submit">답변하기</button>
											</p>
										</div>
									</c:if>
									<c:if test="${ selectOne.refNo ne 0 }">
										<div id="qBottom">
											<p style="margin-top:20px;">채택이 완료되어 답변하실 수 없습니다.</p>
										</div>
									</c:if>
								</c:if>
							</div>
						</form>
						<br>
						<div class="AnswerArea">
							<c:forEach var="answer" items="${ answerList }">
							<form action="goAnswerUpdateForm.bo" method="post">
								<div id="openAnswer">
									<div id="answercon1">
										<h3>
											<c:out value="${ answer.nickName }님 답변" escapeXml="false"/>
										</h3>
									</div>
									<!-- 오픈컨설팅 답변 작성자 관련 정보 div -->
									<div id="answercon2">
										<ul id="answerUl">
											<li><img src="/travelMate/resources/images/flag/member.png" width="20px;" style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span><c:out value="${ answer.nickName }" escapeXml="false"/></span></li>
											<li><span><c:out value="${ answer.boardDate }" escapeXml="false"/></span></li>
										</ul>
									</div>
	
									<hr style="width: 95%">
									<!-- 오픈컨설팅 답변 내용 div -->
									<div id="answercon3" style="font-style: normal">
										<input type="hidden" name="boardNo" value="${ answer.boardNo }">
										<input type="hidden" name="category" value="${ answer.category }">
										<c:if test="${ sessionScope.loginUser.getNick_name() ne answer.nickName }">
											<c:if test="${ selectOne.refNo ne answer.boardNo }">
												<p><c:out value="${fn:substring(answer.content, 0, 200)}" escapeXml="false"/></p>
											</c:if>
										</c:if>
										<c:if test="${ sessionScope.loginUser.getNick_name() eq selectOne.nickName }">
											<c:if test="${ selectOne.refNo eq answer.boardNo }">
												<p><c:out value="${ answer.content }" escapeXml="false"/></p>
											</c:if>
										</c:if>
										<c:if test="${ sessionScope.loginUser.getNick_name() eq answer.nickName }">
											<p><c:out value="${ answer.content }" escapeXml="false"/></p>
										</c:if>
										<c:if test="${ sessionScope.loginUser.getNick_name() eq selectOne.nickName }">
											<c:if test="${ selectOne.refNo ne answer.boardNo }">
												<button id="btnSelect" type="button" onclick="location.href='updateContent.bo?boardNo=${ selectOne.boardNo }&refNo=${ answer.boardNo }&category=${ selectOne.category }'">내용 더보기</button>
											</c:if>
										</c:if>
										<c:if test="${ sessionScope.loginUser.getNick_name() eq answer.nickName }">
											<c:if test="${ selectOne.refNo eq 0 }">
												<div style="float:right;">
													<button type="button" id="btnList" onclick="boardDelete(${answer.boardNo}, ${answer.category});">답변 삭제</button>
													<button type="submit" id="btnList">답변 수정</button>
												</div>
											</c:if>
										</c:if>
									</div>
								</div>
							</form>
							<br>
							</c:forEach>
						</div>
						<!-- 목록버튼 -->
						<button id="btnList" type="button" onclick="location.href='selectList.bo?category=3'">목록</button>
						<c:if test="${ sessionScope.loginUser.getNick_name() eq selectOne.nickName }">
							<button id="btnList" type="button" onclick="boardDelete(${selectOne.boardNo}, ${selectOne.category});">삭제</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../must/footer.jsp" />
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
	<%-- 	</c:if> --%>


	<!-- 로그인 권한 설정 -->

	<%-- 	<c:if test="${empty sessionScope.loginUser }">
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<script>
		alert('로그인한 회원만 이용 가능합니다.')
		window.location.href = '${contextPath}/loginView.me';
	</script>
	</c:if> --%>
	
	<script>
		function boardDelete(boardNo, category)
		{
			if(confirm("삭제하시겠습니까?"))
			{
				location.href="delete.bo?boardNo=" + boardNo + "&category=" + category;
			}
		}
	</script>
</body>
</html>