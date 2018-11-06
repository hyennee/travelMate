<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	.pointer:hover
	{
		cursor:pointer;
	}
</style>
</head>
<body>
	<c:if test="${ !empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="width:960px; margin:auto; background:white;" align="center">
		<form action="goUpdateForm.bo" method="post">
			<div style="margin:auto; width:800px;">
				<hr style="border:1.5px solid lightgray;">
				<input type="hidden" name="boardNo" value="${ selectOne.boardNo }">
				<input type="hidden" name="category" value="${ selectOne.category }">
				<div class="title" style="height:35px;">
					<span style="font-size:12px; color:darkgray;">[문의]</span>
					<span style="font-size:14px;">${ selectOne.title }</span>
					<%-- <input type="hidden" name="title" value="${ selectOne.title }"> --%>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<span style="font-size:14px;">[이미지] 접수됨</span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-weight:bold; font-size:14px;">${ selectOne.nickName }</span>
					<%-- <input type="hidden" name="nickName" value="${ selectOne.nickName }"> --%>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:14px; height:14px;">&nbsp; ${ selectOne.boardDate }</span>
				</div>
				<hr>
				<div class="content">
					<span style="font-size:14px;">${ selectOne.content }</span>
					<%-- <input type="hidden" name="content" value="${ selectOne.content }"> --%>
				</div>
				<%-- <br><br>
				<c:if test="${ selectOne.boardStatus eq 'Y' }">
				<div class="answer-content">
					<span style="font-size:14px;">[관리자가 답변했을 경우에만 표시]</span><br>
					<span style="font-size:14px;">답변 내용입니다.</span>
				</div>
				</c:if> --%>
				<hr>
				<div class="content">
					<button type="button" class="pointer" style="background:lightgray; border:none; border-radius:5px; height:35px;" onclick="location.href='selectList.bo?category=2'">목록으로</button>
					<button type="button" class="pointer" style="float:right; background:lightgray; border:none; border-radius:5px; height:35px;" onclick="location.href='delete.bo?boardNo=${ selectOne.boardNo }&category=${ selectOne.category }'">삭제</button>
					<button type="submit" class="pointer" style="float:right; background:lightgray; border:none; border-radius:5px; height:35px; margin-right:5px;">수정</button>
				</div>
				<br>
			</div>
		</form>
		</div>
		<br>
	</div>
	<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
</body>
</html>