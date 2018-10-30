<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	.notice-list>tbody>tr>th
	{
		border-top:2px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.notice-list>tbody>tr>th:nth-child(1)
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
	
	/* 문의 */
	.question-list
	{
		text-align:center;
		font-size:14px;
		border-collapse:collapse;
	}
	.question-list>tbody>tr>th
	{
		border-top:2px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.question-list>tbody>tr>th:nth-child(1)
	{
		border-top:none;
	}
	.question-list>tbody>tr>td
	{
		border-top:1px solid lightgray;
		border-bottom:1px solid lightgray;
	}
	.question-list>tbody>tr:nth-child(2)
	{
		border-top:2px solid lightgray;
	}
	.question-list th
	{
		height:40px;
	}
	.question-list td
	{
		height:40px;
	}
	.pointer:hover
	{
		cursor:pointer;
	}
</style>
</head>
<body>
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container" align="center">
		<div style="width:960px; margin:auto; background:white;">
			<div class="image-div" style="width:960px; height:200px;">
				<span style="opacity:1; font-size:20px; font-weight:bold; color:orangered;">트래블메이트 고객센터는<br>여행자님의 아름다운 하루를 위해 최선을 다하겠습니다.</span>
			</div>
		</div>
		<div style="width:960px; height:50px; margin:auto; background:#E7E7E7; display:table-cell; vertical-align:middle;">
			<span style="color:#646464; font-size:14px;">여행자 여러분께서 자주 물어보시는 질문에 대한 답변을 보고 싶으신가요?</span>&nbsp;&nbsp;&nbsp;
			<button type="button" class="pointer" style="height:30px; background:white; border:1px solid violet; border-radius:5px; color:violet;" onclick="location.href='selectList.bo';">자주 묻는 질문 보기</button>
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
							<th style="width:80px;"><button type="button" class="pointer" style="height:25px; border:1px solid lightgray; border-radius:5px; background:white; color:green;" onclick="location.href='selectList.bo'">+ 더보기</button></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
						<c:forEach var="notice" items="${ noticeList }">
						<tr>
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
							<th style="width:80px;"><button type="button" class="pointer" style="height:25px; border:1px solid lightgray; border-radius:5px; background:white; color:green;" onclick="location.href='selectList.bo'">+ 더보기</button></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th></th>
							<th>상태</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
						<c:forEach var="question" items="${ questionList }">
						<tr>
							<td><c:out value="${ question.rowNum }"/></td>
							<td><c:out value="${ question.title }"/></td>
							<td>이미지</td>
							<%-- <c:if test="${ questionList.상태 eq '접수' }">
								<td><img src="${ contextPath }/resources/images/이미지"></td>
							</c:if>
							<c:if test="${ questionList.상태 eq '답변완료' }">
								<td><img src="${ contextPath }/resources/images/이미지"></td>
							</c:if> --%>
							<td>상태</td>
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
</body>
</html>