<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="icon" type="image/png" href="/travelMate/resources/images/logo.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<title>Make your own travel! - TravelMate</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#jb-container {
	width: 90%;
	margin: 0px auto;
	padding: 20px;
	border: 0px solid #bcbcbc;
}

#jb-header {
	padding: 20px;
	margin-bottom: 20px;
	border: 0px solid #bcbcbc;
}

#jb-sidebar-left {
	padding: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 0px solid #bcbcbc;
}

#jb-content {
	width: 73%;
	padding: 50px;
	margin: 0px auto;
	float: left;
	border: 0px solid #bcbcbc;
}
/* 
      #jb-sidebar-right {
        width: 160px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
       */
#jb-footer {
	clear: both;
	padding: 20px;
	border: 0px solid #bcbcbc;
}

tr {
	border: 1px solid #bcbcbc;
}



.section {
	border: 1px solid #bcbcbc;
	width: 100%;
	display: inline-block;
}

a {
	text-decoration: none;
	color: black;
}
.tdsection{
	width:49%;
	display:inline-block;
}
td{
	border-bottom: 1px solid lightgray;
}

.thstyle{
	width : 200px;
	background-color : lightgray;
}
</style>
</head>
<body>
	<jsp:include page="../must/header.jsp" />
	<div id="jb-container">
		<div id="jb-header">
			<h1></h1>
		</div>
		<div id="jb-sidebar-left">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div id="jb-content">
			<h2>오픈컨설팅</h2>
			<hr />
			<div >
						<p> 오픈컨설팅 내역</p>
						
<%-- 						
						<label for="">작성자</label><input type="text" class="form-control writer" value="${ openConsulting.WRITER }" readonly/><br />
					<label for="">답변여부</label><input type="text" class="form-control" value="<c:if test="${ board.status eq 'Y'}">답변있음</c:if><c:if test="${ board.status eq 'N' }">준비중</c:if>" />
						<label for="">날짜</label><input type="text" class="form-control date" value="${ openConsulting.BOARD_DATE }" readonly/><br />
						<label for="">제목</label><input type="text" class="form-control oboTitle" value="${ openConsulting.TITLE }" readonly/><br />
						<label for="">내용</label><br />
						
						<div contentEditable="true" style="border: 1px solid #ccc; border-radius: 4px; width: 100%; height:30% font-family: inherit;" >
							<span>
								<c:out value="${ openConsulting.CONTENT }" escapeXml="false"/>
							</span>
						</div> --%>
						
						<label for="">작성자 : </label>
						<c:out  value="${ sessionScope.loginUser.nick_name}"/><br />
						<label for="">날짜 : </label>
						<c:out  value="${ openConsulting.BOARD_DATE }"/><br />
						<label for="">제목 : </label>
						<c:out  value="${ openConsulting.TITLE }"/><br />
						<label for="">질문내용 : </label>
						<c:out value="${ openConsulting.CONTENT }" escapeXml="false"/><br />
						
						

			</div>
			<div>
				
									
						<c:if test="${!empty openConsulting2}">
						<br />
						<h1>답변이 도착했습니다</h1>
						<br />
						<table class="table">
							<tr >
								<td class="thstyle">
									작성자 닉네임
								</td>
								<td>
									<c:out value="${ openConsulting2.NICK_NAME }" escapeXml="false"/>
								</td>
							</tr>
							<tr>
								<td class="thstyle">
									답변내용
								</td>
								<td>
								<c:out value="${ openConsulting2.CONTENT }" escapeXml="false"/>
								</td>
							</tr>
							<tr>
								<td  class="thstyle">
									작성일자
								</td>
								<td>
									<c:out value="${ openConsulting2.BOARD_DATE }" escapeXml="false"/>
								</td>
							</tr>
						</table>
						</c:if>
						<c:if test="${empty openConsulting2}">
							<h1>
								답변 준비중입니다. 문의는 고객센터에 해주세요 .
							</h1>
						</c:if>
												
										
				
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>


	<jsp:include page="../must/footer.jsp" />

</body>
</html>


