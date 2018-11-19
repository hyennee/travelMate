<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

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
#openConsulting {
	width: 100%;
	padding: 0 0 200px 0;
	margin: auto;
	background: #edefea;
	background:white; 
}

#openQnAForm {
	margin-left: 30px;
	margin-right: 30px;
	
}

#openQuestion, #openAnswer {
	width: 100%;
	padding: 0 0 20px 0;
	border: solid 1px #999;
	/* margin: auto; */
	text-indent: 30px;
    
}

#questionUl>li, #answerUl>li {
	display: inline; /*  세로나열을 가로나열로 변경 */
	border-left: 1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
	font: bold 13px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
	padding: 0 8px;
	border-height: 1em;

	/* 각 메뉴 간격 */
}

#questionUl>li:first-child, #answerUl>li:first-child {
	border-left: none;
}

#questionUl, #answerUl {
	padding: 0;
}

#questioncon3, #answercon3 {
	text-align: left;
	margin-left: 10px;
	margin-top: 50px;
	margin-bottom: 50px;
}

#questioncon3 p, #answercon3 p {
	font-size: 14px;
}

#questioncon4 {
	float: right;
	margin-right: 30px;
	margin-bottom: 40px;
}

#qBottom {
	/* display:inline; */
	position: relative;
	margin: auto;
	border-top: 1px solid #999;
	width: 100%;
}

.btnAnswer {
	float: right;
	margin-right: 40px;
	background-color: #ec983e;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
}

.btnAnswer:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnList {
	float: right;
	margin-right: 40px;
	margin-top: 25px; background-color : #ec983e;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
	background-color: #ec983e;
}

#btnList:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnAdd {
	float: right;
	margin-right: 74%;
	background-color: #ec983e;
	border: none;
	color: white;
	padding: 4px 8px;
	text-align: center;
	text-decoration: none;
	position: relative;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
}

#btnAdd:hover {
	color: #ec983e;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

#btnSelect {
	float: right;
	margin-right: 40px;
	border: none;
	color: white;
	padding: 12px 22px;
	text-align: center;
	text-decoration: none;
	display: inline;
	font-size: 14px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	background-color: #ff6666;
	position:relative;
	border-radius: 4px;


}

#btnSelect:hover{
	color: #ff6666;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}
.pointer:hover
{
	cursor:pointer;
}

</style>
<body>
	<c:if test="${!empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="openConsulting">
					<div id="openQnAForm">
						<span style="text-align: left; font-weight: bold; font-size: 24px; color: black">오픈컨설팅</span><br>
						<span style="text-align: left; font-weight: bold; font-size: 12px; color: #999">오픈 컨설팅을 의뢰하고 답할 수 있습니다.</span>
						<hr>
						<!-- 오픈컨설팅 QnA div -->
						<div id="openQuestion">
							<!-- 오픈컨설팅 질문 제목 div -->
							<div id="questioncon1">
								<h3><c:out value="${ selectOne.title }" escapeXml="false"/></h3>
							</div>
							<!-- 오픈컨설팅 질문 작성자 관련 정보 div -->
							<div id="questioncon2">
								<ul id="questionUl">
									<li><img src="/travelMate/resources/images/flag/member.png" width="20px;" style="border-radius: 100%; vertical-align: bottom;" />&nbsp;&nbsp;<span><c:out value="${ selectOne.nickName }" escapeXml="false"/></span></li>
									<li><span><c:out value="${ selectOne.boardDate }" escapeXml="false"/></span></li>
								</ul>
							</div>
							<hr style="width: 95%">
							<!-- 오픈컨설팅 질문 내용 div -->
							<div id="questioncon3">
								<c:out value="${ selectOne.content }" escapeXml="false"/>
							</div>
						</div>
						<br>
						<span style="text-align:left; font-weight: bold; font-size: 24px; color: black">답변하기</span><br>
						<span style="text-align: left; font-weight: bold; font-size: 12px; color: #999">작성하신 답변은 200글자까지만 미리보기로서 표시됩니다.</span><hr>
						<form action="insertAnswer.bo" method="post">
							<input type="hidden" name="boardNo" value="${ selectOne.boardNo }">
							<input type="hidden" name="category" value="${ selectOne.category }">
							<input type="hidden" name="writer" value="${ sessionScope.loginUser.getUser_no() }">
							<input type="hidden" name="title" value="${ sessionScope.loginUser.getNick_name() }님 답변">
							<input type="hidden" name="refNo" value="${ selectOne.boardNo }">
							<div class="fr-view" style="width:900px; margin:auto;">
							    <textarea name="content"></textarea>
							</div>
							<hr>
							<div align="center">
								<button type="button" class="pointer" style="background:#E7E7E7; border:none; border-radius:5px; height:35px;" onclick="location.href='selectOne.bo?boardNo=${ selectOne.boardNo }&category=${ selectOne.category }'">취소</button>
								<button type="submit" class="pointer" style="background:skyblue; border:none; border-radius:5px; height:35px; color:white; font-size:16px; font-weight:bold;"><img src="${ contextPath }/resources/images/check.png" style="width:25px; height:25px;">확인</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../must/footer.jsp" />
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다."/>
		<jsp:forward page="../../must/errorPage"/>
	</c:if>
	
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