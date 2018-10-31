<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="width:960px;margin:auto; background:white;" align="center">
			<div style="margin:auto; width:800px;">
				<table class="list-list" style="width:800px; margin:auto;">
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
							<td><c:out value="${ list.rowNum }"/></td>
							<td><c:out value="${ list.title }"/></td>
							<td>이미지</td>
							<%-- <c:if test="${ list.상태 eq '접수' }">
								<td><img src="${ contextPath }/resources/images/이미지"></td>
							</c:if>
							<c:if test="${ list.상태 eq '답변완료' }">
								<td><img src="${ contextPath }/resources/images/이미지"></td>
							</c:if> --%>
							<td>상태</td>
							<td><c:out value="${ list.nickName }"/></td>
							<td><c:out value="${ list.boardDate }"/></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<br>
				<div class="page-container" style="margin:auto; width:800px;" align="center">
					<div style="float:right;">
						<button type="button" class="pointer" style="background:skyblue; color:white; border:1px solid skyblue; border-radius:5px; height:30px;">문의하기</button>
					</div>
					<div>
						<button type="button" class="page-button"><</button>&nbsp;
						<button type="button" class="page-button">1</button>
						&nbsp;<button type="button" class="page-button">></button>
					</div>
				</div>
				<br clear="both">
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
</body>
</html>