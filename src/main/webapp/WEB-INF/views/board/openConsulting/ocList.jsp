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

/* ========================================= */

	.open-list
	{
		text-align:center;
		font-size:15px;
		border-collapse:collapse;
	}
	.open-list>thead>tr:nth-child(2)>th
	{
		border-top:2px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.open-list>thead>tr:nth-child(2)>th:nth-child(1)
	{
		border-top:none;
	}
	.open-list>tbody>tr>td
	{
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.open-list th
	{
		height:40px;
	}
	.open-list td
	{
		height:40px;
	}
	.open-list>tbody>tr:hover
	{
		cursor:pointer;
		background:lightgray;
	}
	.page-button
	{
		background:white;
		border:1px solid #E6E6E6;
		border-radius:5px;
		width:25px;
		height:25px;
	}
	.page-button:hover
	{
		cursor:pointer;
	}
	.pointer:hover
	{
		cursor:pointer;
	}
	.disable-page-button
	{
		background:white;
		border:1px solid #E6E6E6;
		border-radius:5px;
		width:25px;
		height:25px;
		opacity:0.5;
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
						<span style="text-align: left; font-weight: bold; font-size: 24px; color: black">오픈 컨설팅</span><br>
						<span style="text-align: left; font-weight: bold; font-size: 12px; color: #999">오픈 컨설팅을 의뢰하고 답할 수 있습니다.</span><br>
						<table class="open-list" style="width:900px; margin:auto;">
							<thead>
								<tr style="border-top:2px solid lightgray;">
									<th style="width:80px;">번호</th>
									<th>제목</th>
									<th style="width:150px;">작성자</th>
									<th style="width:80px;">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${ selectList }">
								<tr>
									<input type="hidden" name="boardNo" value="${ list.boardNo }">
									<input type="hidden" name="category" value="${ list.category }">
									<td><c:out value="${ list.rowNum }" escapeXml="false"/></td>
									<td><c:out value="${ list.title }" escapeXml="false"/></td>
									<td style="width:150px;"><c:out value="${ list.nickName }" escapeXml="false"/></td>
									<td style="width:80px;"><c:out value="${ list.boardDate }" escapeXml="false"/></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						<br>
						<div class="page-container" style="margin:auto; width:900px;" align="center">
							<div style="float:right;">
								<button type="button" class="pointer" style="background:skyblue; color:white; border:1px solid skyblue; border-radius:5px; height:30px;" onclick="location.href='goOCInsertForm.bo'">의뢰하기</button>
							</div>
							<div>
								<c:if test="${ page.currentPage <= 1 }">
									<button type="button" class="disable-page-button"><</button>
								</c:if>
								<c:if test="${ page.currentPage > 1 }">
									<button type="button" class="page-button" onclick="location.href='selectList.bo?category=3&currentPage=${ page.currentPage - 1 }'"><</button>
								</c:if>
								
								<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }">
									<c:if test="${ p eq page.currentPage }">
										<button type="button" class="disable-page-button"><c:out value="${ p }" escapeXml="false"/></button>
									</c:if>
									<c:if test="${ p ne page.currentPage }">
										<button type="button" class="page-button" onclick="location.href='selectList.bo?category=3&currentPage=${ p }'"><c:out value="${ p }" escapeXml="false"/></button>
									</c:if>
								</c:forEach>
								
								<c:if test="${ page.currentPage >= page.maxPage }">
									<button type="button" class="disable-page-button">></button>
								</c:if>
								<c:if test="${ page.currentPage < page.maxPage }">
									<button type="button" class="page-button" onclick="location.href='selectList.bo?category=3&currentPage=${ page.currentPage + 1}'">></button>
								</c:if>
							
								<!-- <button type="button" class="page-button"><</button>&nbsp;
								<button type="button" class="page-button">1</button>
								&nbsp;<button type="button" class="page-button">></button> -->
							</div>
						</div>
						<br clear="both">
						<div class="search-container" style="margin:auto; width:900px;" align="center">
							<form action="selectSearch.bo?category=3" method="post">
								<div>
									<select style="height:30px; border:1px solid lightgray; border-radius:5px;" name="searchCategory">
										<option value="title">제목</option>
										<option value="nick_name">작성자</option>
										<option value="content">내용</option>
									</select>
									&nbsp;&nbsp;
									<input type="search" name="searchValue" style="width:400px; height:30px; border:1px solid lightgray; border-radius:5px; padding-top:4px;">
									<button type="submit" class="pointer" style="width:30px; height:30px; background:white; border:none;"><img src="${ contextPath }/resources/images/search-btn.PNG" style="width:28px; height:28px; border:1px solid lightgray; border-radius:5px; vertical-align:middle;"></button>
								</div>
							</form>
						</div>
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
		$(function()
		{
			$(".open-list td").click(function()
			{
			var boardNo = $(this).parent().children("input[name='boardNo']").val();
				var category = $(this).parent().children("input[name='category']").val();
				
				location.href="selectOne.bo?boardNo=" + boardNo + "&category=" + category;
			});
		});
	</script>
</body>
</html>