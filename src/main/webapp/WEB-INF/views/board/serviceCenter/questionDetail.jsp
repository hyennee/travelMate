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
	.answer-content
	{
		width:800px;
		text-align:left;
		background:#E7E7E7;
		border:none;
		border-radius:5px;
	}
</style>
</head>
<body>
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="width:960px; margin:auto; background:white;" align="center">
			<div style="margin:auto; width:800px;">
				<hr style="border:1.5px solid lightgray;">
				<div class="title" style="height:35px;">
					<span style="font-size:12px; color:darkgray;">[문의]</span>
					<span style="font-size:14px;">폐허 여행도 디자인 되나요?</span>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<span style="font-size:14px;">[이미지] 접수됨</span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-weight:bold; font-size:14px;">TravelMaker</span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:25px; height:25px;">&nbsp; 2018-10-25</span>
				</div>
				<hr>
				<div class="content">
					<span style="font-size:14px;">신비의 땅 아프리카 대륙의 와칸다 지방 3박 4일 여행도 여행 디자인이 되나요?</span>
				</div>
				<br><br>
				<div class="answer-content">
					<span style="font-size:14px;">[관리자가 답변했을 경우에만 표시]</span><br>
					<span style="font-size:14px;">답변 내용입니다.</span>
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