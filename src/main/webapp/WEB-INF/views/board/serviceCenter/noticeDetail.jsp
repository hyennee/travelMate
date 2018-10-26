<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.title
	{
		width:800px;
		display:table-cell;
		vertical-align:middle;
		text-align:left;
	}
	.content
	{
		width:800px;
		text-align:left;
	}
</style>
</head>
<body>
	<jsp:include page="../../must/header.jsp"/>
	<div class="full-container">
		<div style="width:960px; margin:auto; background:white;" align="center">
		<br>
			<div style="margin:auto; width:800px;">
				<hr style="border:1.5px solid lightgray;">
				<div class="title" style="height:35px;">
					<span style="font-size:12px; color:darkgray;">[공지사항]</span>
					<span style="font-size:14px;">TravelMate가 오픈했습니다!</span>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<span style="font-weight:bold; font-size:14px;">TravelMaker</span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:25px; height:25px;">&nbsp; 2018-10-25</span>
				</div>
				<hr>
				<div class="content">
					<span style="font-size:14px;">본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>
					본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>
					본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>
					본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>
					본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>
					본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br>본문 내용<br></span>
				</div>
				<hr>
				<div class="content">
					<button type="button" style="background:lightgray; border:none; border-radius:5px; height:35px;">목록으로</button>
				</div>
				<br>
			</div>
		</div>
		<br>
	</div>
	<jsp:include page="../../must/footer.jsp"/>
</body>
</html>