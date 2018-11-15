<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd HH:mm:ss' var="nowDate"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<title>Make your own travel! - TravelMate</title>
<!-- Include Editor style. -->
<!-- <link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.min.css' rel='stylesheet' type='text/css' />
<link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_style.min.css' rel='stylesheet' type='text/css' /> -->
 
<!-- Include JS file. -->
<!-- <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/js/froala_editor.min.js'></script> -->

<!-- Include external CSS. -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
 
<!-- Include Editor style. -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_style.min.css" rel="stylesheet" type="text/css" />

<!-- CSS rules for styling the element inside the editor such as p, h1, h2, etc. -->
<link href="../css/froala_style.min.css" rel="stylesheet" type="text/css" />

<!-- Include external JS libs. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
	 
<!-- Include Editor JS files. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/js/froala_editor.pkgd.min.js"></script>


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
		<form action="updateAnswer.bo" method="post">
			<div style="margin:auto; width:800px;">
				<input type="hidden" name="boardNo" value="${ selectOneAnswer.boardNo }">
				<input type="hidden" name="category" value="${ selectOneAnswer.category }">
				<input type="hidden" name="refNo" value="${ selectOneAnswer.refNo }">
				<div class="title" style="height:40px; background:#E7E7E7; border:none; border-radius:5px;">
					<div style="display:inline-block; border:none; border-radius:5px; margin-left:5px;">
						<label style="font-size:14px; height:35px;"><img src="${ contextPath }/resources/images/gear.png" style="width:16px; height:16px;"></label>
						<label style="font-size:14px; height:35px;">제    목</label>
					</div>
					<div style="display:inline-block;">
						<input type="text" name="title" style="width:700px; height:25px; border:none; border-radius:5px;" value="${ selectOneAnswer.title }" readonly>
					</div>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<input type="hidden" name="writer" value="${ sessionScope.loginUser.getUser_no() }">
					<span style="font-weight:bold; font-size:14px;"><c:out value="${ sessionScope.loginUser.getNick_name() }" escapeXml="false"/></span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:14px; height:14px;">&nbsp; <c:out value="${ nowDate }" escapeXml="false"/></span>
				</div>
				<hr>
				<div class="fr-view" style="width:800px; margin:auto;">
					<!-- Create a tag that we will use as the editable area. -->
				    <!-- You can use a div tag as well. -->
				    <textarea name="content"><c:out value="${ selectOneAnswer.content }" escapeXml="false"/></textarea>
				</div>
				<hr>
				<div>
					<button type="button" class="pointer" style="background:#E7E7E7; border:none; border-radius:5px; height:35px;" onclick="location.href='selectOneAnswer.bo?boardNo=${ selectOneAnswer.boardNo }&category=${ selectOneAnswer.category }'">취소</button>
					<button type="submit" class="pointer" style="background:skyblue; border:none; border-radius:5px; height:35px; color:white; font-size:16px; font-weight:bold;"><img src="${ contextPath }/resources/images/check.png" style="width:25px; height:25px;">확인</button>
				</div>
				<br>
			</div>
		</form>
		</div>
		<br>
	</div>
	<br>
	<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
	
	<!-- Initialize the editor. -->
    <script>
	    $(function() { $('textarea').froalaEditor() });
		
		$('textarea').froalaEditor(
		{   
			theme : 'red',
			imageUploadURL:'http://i.froala.com/upload',
    		fileUploadURL:'http://i.froala.com/upload',
    		charCounterMax : 600
		});
	</script>
</body>
</html>