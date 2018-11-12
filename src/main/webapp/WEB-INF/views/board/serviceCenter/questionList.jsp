<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
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
	.question-list>tbody>tr:hover
	{
		cursor:pointer;
		background:lightgray;
	}
</style>
</head>
<body>
	<c:if test="${ !empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="width:960px;margin:auto; background:white;" align="center">
			<div style="margin:auto; width:800px;">
				<table class="question-list" style="width:800px; margin:auto;">
					<thead>
						<tr>
							<th style="width:80px; border-left:2px solid lightgray; border-right:2px solid lightgray; border-top:3px solid violet;">문의</th>
							<th></th>
							<th style="width:30px;"></th>
							<th style="width:70px;"></th>
							<th style="width:150px;"></th>
							<th style="width:80px;"></th>
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
						<c:forEach var="list" items="${ selectList }">
						<tr>
							<input type="hidden" name="boardNo" value="${ list.boardNo }">
							<input type="hidden" name="category" value="${ list.category }">
							<td><c:out value="${ list.rowNum }" escapeXml="false"/></td>
							<td><c:out value="${ list.title }" escapeXml="false"/></td>
							<c:if test="${ list.boardStatus eq 'N' }">
								<td><img src="${ contextPath }/resources/images/go_in_icon.png" style="width:16px; height:16px;"></td>
							</c:if>
							<c:if test="${ list.boardStatus eq 'Y' }">
								<td><img src="${ contextPath }/resources/images/check_icon.png" style="width:16px; height:16px;"></td>
							</c:if>
							<c:if test="${ list.boardStatus eq 'N' }">
								<td>접수</td>
							</c:if>
							<c:if test="${ list.boardStatus eq 'Y' }">
								<td>답변완료</td>
							</c:if>
							<td><c:out value="${ list.nickName }" escapeXml="false"/></td>
							<td><c:out value="${ list.boardDate }" escapeXml="false"/></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div class="page-container" style="margin:auto; width:800px;" align="center">
					<div style="float:right;">
						<button type="button" class="pointer" style="background:skyblue; color:white; border:1px solid skyblue; border-radius:5px; height:30px;" onclick="location.href='goInsertForm.bo'">문의하기</button>
					</div>
					<div>
						<c:if test="${ page.currentPage <= 1 }">
							<button type="button" class="disable-page-button"><</button>
						</c:if>
						<c:if test="${ page.currentPage > 1 }">
							<button type="button" class="page-button" onclick="location.href='selectList.bo?category=2&currentPage=${ page.currentPage - 1 }'"><</button>
						</c:if>
						
						<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }">
							<c:if test="${ p eq page.currentPage }">
								<button type="button" class="disable-page-button"><c:out value="${ p }" escapeXml="false"/></button>
							</c:if>
							<c:if test="${ p ne page.currentPage }">
								<button type="button" class="page-button" onclick="location.href='selectList.bo?category=2&currentPage=${ p }'"><c:out value="${ p }" escapeXml="false"/></button>
							</c:if>
						</c:forEach>
						
						<c:if test="${ page.currentPage >= page.maxPage }">
							<button type="button" class="disable-page-button">></button>
						</c:if>
						<c:if test="${ page.currentPage < page.maxPage }">
							<button type="button" class="page-button" onclick="location.href='selectList.bo?category=2&currentPage=${ page.currentPage + 1}'">></button>
						</c:if>
					
						<!-- <button type="button" class="page-button"><</button>&nbsp;
						<button type="button" class="page-button">1</button>
						&nbsp;<button type="button" class="page-button">></button> -->
					</div>
				</div>
				<br clear="both">
				<div class="search-container" style="margin:auto; width:800px;" align="center">
					<form action="selectSearch.bo?category=2" method="post">
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