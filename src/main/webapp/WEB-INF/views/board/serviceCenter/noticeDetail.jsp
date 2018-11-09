<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
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
			<div style="margin:auto; width:800px;">
				<hr style="border:1.5px solid lightgray;">
				<div class="title" style="height:35px;">
					<span style="font-size:12px; color:darkgray;">[공지사항]</span>
					<span style="font-size:14px;"><c:out value="${ selectOne.title }"/></span>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<span style="font-weight:bold; font-size:14px;"><c:out value="${ selectOne.nickName }"/></span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:25px; height:25px;">&nbsp; <c:out value="${ selectOne.boardDate }"/></span>
				</div>
				<hr>
				<div class="content">
					<span style="font-size:14px;"><c:out value="${ selectOne.content }"/></span>
				</div>
				<hr>
				<div class="content">
					<button type="button" class="pointer" style="background:lightgray; border:none; border-radius:5px; height:35px;" onclick="location.href='selectList.bo?category=1'">목록으로</button>
				</div>
				<br>
			</div>
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