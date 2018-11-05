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
	.notice-list
	{
		text-align:center;
		font-size:15px;
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
</head>
<body>
	<c:if test="${ !empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="width:960px; margin:auto; background:white;" align="center">
			<div style="margin:auto; width:800px;">
				<table class="notice-list" style="width:800px; margin:auto;">
					<thead>
						<tr>
							<th style="width:80px; border-left:2px solid lightgray; border-right:2px solid lightgray; border-top:3px solid violet;">공지사항</th>
							<th></th>
							<th style="width:150px;"></th>
							<th style="width:80px;"></th>
						</tr>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${ selectList }">
						<tr>
							<input type="hidden" name="boardNo" value="${ list.boardNo }">
							<input type="hidden" name="category" value="${ list.category }">
							<td><c:out value="${ list.rowNum }"/></td>
							<td><c:out value="${ list.title }"/></td>
							<td><c:out value="${ list.nickName }"/></td>
							<td><c:out value="${ list.boardDate }"/></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div class="page-container" style="margin:auto; width:800px;" align="center">
					<div>
						<c:if test="${ page.currentPage <= 1 }">
							<button type="button" class="disable-page-button"><</button>
						</c:if>
						<c:if test="${ page.currentPage > 1 }">
							<button type="button" class="page-button" onclick="location.href='selectList.bo?category=1&currentPage=${ page.currentPage - 1 }'"><</button>
						</c:if>
						
						<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }">
							<c:if test="${ p eq page.currentPage }">
								<button type="button" class="disable-page-button">${ p }</button>
							</c:if>
							<c:if test="${ p ne page.currentPage }">
								<button type="button" class="page-button" onclick="location.href='selectList.bo?category=1&currentPage=${ p }'">${ p }</button>
							</c:if>
						</c:forEach>
						
						<c:if test="${ page.currentPage >= page.maxPage }">
							<button type="button" class="disable-page-button">></button>
						</c:if>
						<c:if test="${ page.currentPage < page.maxPage }">
							<button type="button" class="page-button" onclick="location.href='selectList.bo?category=1&currentPage=${ page.currentPage + 1}'">></button>
						</c:if>
					
						<!-- <button type="button" class="page-button"><</button>&nbsp;
						<button type="button" class="page-button">1</button>
						&nbsp;<button type="button" class="page-button">></button> -->
					</div>
				</div>
				<br>
				<div class="search-container" style="margin:auto; width:800px;" align="center">
					<div>
						<select style="height:25px; border:1px solid lightgray; border-radius:5px;">
							<option>제목</option>
							<option>작성자</option>
							<option>내용</option>
						</select>
						&nbsp;&nbsp;
						<input type="search" style="width:400px; height:25px; border:1px solid lightgray; border-radius:5px;">
						<img src="${ contextPath }/resources/images/search-btn.PNG" style="width:25px; height:25px; border:1px solid lightgray; border-radius:5px;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty loginUser }">
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
		});
	</script>
</body>
</html>