<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.image-div
	{
		background-image:url("${ contextPath }/resources/images/sunnyshoers.jpg");
		background-repeat:no-repeat;
		background-size:cover;
		opacity:0.75;
		display:table-cell;
		vertical-align:middle;
	}
	
	/* 공지사항 */
	.notice-list
	{
		text-align:center;
		font-size:14px;
		border-collapse:collapse;
	}
	.notice-list>thead>tr:nth-child(2)>th
	{
		border-top:2px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.notice-list>thead>tr:nth-child(2)>th:nth-child(1)
	{
		border-top:none;
	}
	.notice-list>tbody>tr>td
	{
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.notice-list th
	{
		height:40px;
	}
	.notice-list td
	{
		height:40px;
	}
	.notice-list>tbody>tr:hover
	{
		cursor:pointer;
		background:lightgray;
	}
	
	/* 문의 */
	.question-list
	{
		text-align:center;
		font-size:14px;
		border-collapse:collapse;
	}
	.question-list>thead>tr:nth-child(2)>th
	{
		border-top:2px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.question-list>thead>tr:nth-child(2)>th:nth-child(1)
	{
		border-top:none;
	}
	.question-list>tbody>tr>td
	{
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.question-list th
	{
		height:40px;
	}
	.question-list td
	{
		height:40px;
	}
	.question-list>tbody>tr:hover
	{
		cursor:pointer;
		background:lightgray;
	}
	.pointer:hover
	{
		cursor:pointer;
	}
</style>
</head>
<body>
	<c:if test="${ !empty sessionScope.loginUser }">
		<jsp:include page="../../must/header.jsp"/>
		<div id="contents" class="full-container" align="center">
			<div style="width:960px; margin:auto; background:white;">
				<div class="image-div" style="width:960px; height:200px;">
					<span style="opacity:1; font-size:20px; font-weight:bold; color:orangered;">트래블메이트 고객센터는<br>여행자님의 아름다운 하루를 위해 최선을 다하겠습니다.</span>
				</div>
			</div>
			<div style="width:960px; height:50px; margin:auto; background:#E7E7E7; display:table-cell; vertical-align:middle;">
				<span style="color:#646464; font-size:14px;">여행자 여러분께서 자주 물어보시는 질문에 대한 답변을 보고 싶으신가요?</span>&nbsp;&nbsp;&nbsp;
				<button type="button" class="pointer" style="height:30px; background:white; border:1px solid violet; border-radius:5px; color:violet;" onclick="location.href='selectFAQ.bo';">자주 묻는 질문 보기</button>
			</div>
			<br clear="both">
			<div style="width:960px; height:50px; margin:auto; display:table-cell; vertical-align:middel;">
				<button type="button" class="pointer" style="height:30px; background:white; border:1px solid violet; border-radius:5px; color:violet;" onclick="window.open('http://192.168.10.51:8008/${ sessionScope.loginUser.user_name }', '_blank', 'width=600, height=600, menubar=no, status=no, toolbar=no')">1:1 문의하기</button>
			</div>
			<div style="width:960px; margin:auto; background:white;">
			<br>
				<div style="width:900px;">
					<table class="notice-list" style="width:100%; margin:auto;">
						<thead>
							<tr>
								<th style="width:80px; border-left:2px solid lightgray; border-right:2px solid lightgray; border-top:3px solid violet;">공지사항</th>
								<th></th>
								<th style="width:150px;"></th>
								<th style="width:80px;"><button type="button" class="pointer" style="height:25px; border:1px solid lightgray; border-radius:5px; background:white; color:green;" onclick="location.href='selectList.bo?category=1'">+ 더보기</button></th>
							</tr>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="notice" items="${ noticeList }">
							<tr>
								<input type="hidden" name="boardNo" value="${ notice.boardNo }">
								<input type="hidden" name="category" value="${ notice.category }">
								<td><c:out value="${ notice.rowNum }"/></td>
								<td><c:out value="${ notice.title }"/></td>
								<td><c:out value="${ notice.nickName }"/></td>
								<td><c:out value="${ notice.boardDate }"/></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>			
				</div>
				<br><br>
				<div style="width:900px;">
					<table class="question-list" style="width:100%; margin:auto;">
						<thead>
							<tr>
								<th style="width:80px; border-left:2px solid lightgray; border-right:2px solid lightgray; border-top:3px solid violet;">문의</th>
								<th></th>
								<th style="width:30px;"></th>
								<th style="width:70px;"></th>
								<th style="width:150px;"></th>
								<th style="width:80px;"><button type="button" class="pointer" style="height:25px; border:1px solid lightgray; border-radius:5px; background:white; color:green;" onclick="location.href='selectList.bo?category=2'">+ 더보기</button></th>
							</tr>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th></th>
								<th>상태</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="question" items="${ questionList }">
							<tr>
								<input type="hidden" name="boardNo" value="${ question.boardNo }">
								<input type="hidden" name="category" value="${ question.category }">
								<td><c:out value="${ question.rowNum }"/></td>
								<td><c:out value="${ question.title }"/></td>
								<c:if test="${ question.boardStatus eq 'N' }">
									<td><img src="${ contextPath }/resources/images/go_in_icon.png" style="width:16px; height:16px;"></td>
								</c:if>
								<c:if test="${ question.boardStatus eq 'Y' }">
									<td><img src="${ contextPath }/resources/images/check_icon.png" style="width:16px; height:16px;"></td>
								</c:if>
								<c:if test="${ question.boardStatus eq 'N' }">
									<td>접수</td>
								</c:if>
								<c:if test="${ question.boardStatus eq 'Y' }">
									<td>답변완료</td>
								</c:if>
								<td><c:out value="${ question.nickName }"/></td>
								<td><c:out value="${ question.boardDate }"/></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<br>
			</div>
		</div>
		<br>
		<div align="center">
			<button type="button" onclick="location.href='goMapView.map'">지도</button>
		</div>
		<br>
		<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
	
	<script>
		$(function()
		{
			$(".notice-list td").click(function()
			{
				var boardNo = $(this).parent().children("input[name='boardNo']").val();
				var category = $(this).parent().children("input[name='category']").val();
				
				location.href="selectOne.bo?boardNo=" + boardNo + "&category=" + category;
			});
			
			$(".question-list td").click(function()
			{
				var boardNo = $(this).parent().children("input[name='boardNo']").val();
				var category = $(this).parent().children("input[name='category']").val();
				
				location.href="selectOne.bo?boardNo=" + boardNo + "&category=" + category; 
			});
		});
	</script>
</body>
</html>