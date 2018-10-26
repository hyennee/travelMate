<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.question-list
	{
		text-align:center;
		font-size:15px;
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
	<div class="full-container">
		<div style="width:960px;margin:auto; background:white;" align="center">
		<br>
			<div style="margin:auto; width:800px;">
				<table class="question-list" style="width:800px; margin:auto;">
					<thead>
						<tr>
							<th style="border-left:2px solid lightgray; border-right:2px solid lightgray; border-top:3px solid violet;">문의</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
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
						<tr>
							<td>1</td>
							<td>문의1</td>
							<td>X</td>
							<td>접수</td>
							<td>와칸다포에버</td>
							<td>2018.10.22</td>
						</tr>
						<tr>
							<td>2</td>
							<td>문의2</td>
							<td>O</td>
							<td>답변완료</td>
							<td>신비의 땅 아프리카</td>
							<td>2018.10.22</td>
						</tr>
						<tr>
							<td>3</td>
							<td>문의3</td>
							<td>O</td>
							<td>답변완료</td>
							<td>성지 전북 익산</td>
							<td>2018.10.22</td>
						</tr>
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