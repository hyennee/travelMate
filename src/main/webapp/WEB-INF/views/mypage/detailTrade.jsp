<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"><link rel="icon" type="image/png" href="/travelMate/resources/images/logo.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<title>Make your own travel! - TravelMate</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
			<h2>상세 거래내역</h2>
			<hr />
			<div >
						<p>상세 거래 내역</p>
						
						
						
						<label for="">여행목적 : </label>
						<c:out  value="${ trade.TRAVEL_PURPOSE}"/><br />
						<label for="">여행지역 : </label>
						<c:out  value="${ trade.TRAVEL_AREA}"/><br />
						<label for="">내가 신청한 컨설턴트 : </label>
						<c:out  value="${ trade.CONSULT_REQUEST_NO}"/><br />
						<label for="">여행시작일자 : </label>
						<c:out  value="${ trade.TRAVEL_START_DATE}"/><br />
						<label for="">여행종료일자 : </label>
						<c:out  value="${ trade.TRAVEL_END_DATE}"/><br />
						<label for="">여행목적 : </label>
						<c:out  value="${ trade.TRAVEL_PURPOSE}"/><br />
						<label for="">어른 일행 : </label>
						<c:out  value="${ trade.ADULT_NUM}"/>명<br />
						<label for="">아이 일행 : </label>
						<c:out  value="${ trade.CHILD_NUM}"/>명<br />
						<label for="">특이사항 : </label>
						<c:out  value="${ trade.ETC}"/><br />
						<label for="">1인당 예산 : </label>
						<c:out  value="${ trade.BUDGET}"/>만원<br /><br />
						
					
						<c:if test="${!empty response}">
						<br />
						<h1>답변이 도착했습니다</h1>
						<br />
						<table class="table">
							<tr >
								<td class="thstyle">
									컨설턴트 닉네임
								</td>
								<td>
									<c:out value="${ response.NICK_NAME }"></c:out>
								</td>
							</tr>
							<tr>
								<td class="thstyle">
									작성일자
								</td>
								<td>
									<c:out value="${ response.RESPONSE_DATE }"></c:out>
								</td>
							</tr>
							<tr>
								<td  class="thstyle">
									여행 개요
								</td>
								<td>
									<c:out value="${ response.SUMMARY }"></c:out>
								</td>
							</tr>
						</table>
						</c:if>
						<c:if test="${empty response}">
							<h1>
								답변 준비중입니다. 문의는 고객센터에 해주세요 
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


