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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
		<c:if test="${ sessionScope.loginUser.getNick_name() eq selectOne.nickName }">
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
							<span style="font-size:14px;"><c:out value="${ selectOne.title }" escapeXml="false"/></span>
							<%-- <input type="hidden" name="title" value="${ selectOne.title }"> --%>
						</div>
						<hr style="border:1px dotted lightgray;">
						<div class="title" style="height:20px;">
							<c:if test="${ selectOne.boardStatus eq 'N' }">
								<span style="font-size:14px;"><img src="/travelMate/resources/images/go_in_icon.png" style="width:16px; height:16px;">&nbsp; 접수</span>
							</c:if>
							<c:if test="${ selectOne.boardStatus eq 'Y' }">
								<span style="font-size:14px;"><img src="/travelMate/resources/images/check_icon.png" style="width:16px; height:16px;">&nbsp; 답변완료</span>
							</c:if>
							<span>&nbsp;|&nbsp;</span>
							<span style="font-weight:bold; font-size:14px;"><c:out value="${ selectOne.nickName }" escapeXml="false"/></span>
							<%-- <input type="hidden" name="nickName" value="${ selectOne.nickName }"> --%>
							<span>&nbsp;|&nbsp;</span>
							<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:14px; height:14px;">&nbsp; <c:out value="${ selectOne.boardDate }" escapeXml="false"/></span>
						</div>
						<hr>
						<div class="content">
							<span style="font-size:14px;"><c:out value="${ selectOne.content }" escapeXml="false"/></span>
							<%-- <input type="hidden" name="content" value="${ selectOne.content }"> --%>
						</div>
						<c:if test="${ selectOne.boardStatus eq 'Y' }">
							<br><br>
							<c:if test="${ selectOne.boardNo eq answerBoard.refNo }">
							<div class="answer-content">
								<c:out value="${ answerBoard.content }" escapeXml="false"/>
							</div>
							</c:if>
						</c:if>
						<hr>
						<div class="content">
							<button type="button" class="pointer" style="background:lightgray; border:none; border-radius:5px; height:35px;" onclick="location.href='selectList.bo?category=2'">목록으로</button>
							<button type="button" class="pointer" style="float:right; background:lightgray; border:none; border-radius:5px; height:35px;" onclick="boardDelete(${selectOne.boardNo}, ${selectOne.category});">삭제</button>
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
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
	
	<script>
		function boardDelete(boardNo, category)
		{
			if(confirm("삭제하시겠습니까?"))
			{
				location.href="delete.bo?boardNo=" + boardNo + "&category=" + category;
			}
		}
		
		$(function()
		{
			if("${sessionScope.loginUser.getNick_name()}" != "${selectOne.nickName}")
			{
				alert("작성한 회원 외에는 볼 수 없는 글입니다.");
				
				location.href="selectList.bo?category=2";
			}
		});
	</script>
</body>
</html>