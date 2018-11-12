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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
#searchIdArea {
	width: 100%;
	padding: 0 0 200px 0;
	margin: auto;
	background: /* #edefea; */ white;
}

#searchIdForm {
	margin-left: 30px;
	margin-right: 30px;
}

table, th, td {
	border: none;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

td:first-child {
	font-weight: bold;
}

.scroll {
	border: 1px solid #b3b3b3;
	padding: 15px 20px;
	height: 90px;
	overflow: auto;
	font-size: 11px;
	line-height: 17px;
}

.check {
	padding: 10px 0 27px;
}

.btnArea{
	float:right;
}
.goSearchId{
/* 	float:right; */
 	background-color: #6bc6b3;
    border: none;
    color: white;
    padding: 12px 22px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    font-weight:bold;
    border-radius:4px;
}

.goSearchId:hover{
	color:#6bc6b3;
	background-color:white;
	font-weight:bold;
	border-radius:4px;
}
</style>


<body>
	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="searchIdArea">
					<div id="searchIdForm">
						<form action="selectId.me" method="post">
							<br> <br> <br> <span
								style="text-align: left; font-weight: bold; font-size: 24px; color: black">아이디 찾기</span>
							<br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: #999">아이디를 찾을 수 있습니다.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								이름과 생년월일, 휴대전화 정보를 입력하신 후 아이디를 확인해주세요
							</span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								아이디는 이메일 주소의 앞 세 글자까지 확인 가능합니다.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 17px; color: black">아이디 찾기</span>
							<hr>
							
							<!-- 테이블 시작 -->
							<div class="inputIdForm">	
								<table style="width: 80%">
									<tr>
										<td style="width: 100px;">이름</td>
										<td colspan="2"><input type="text" name="userName"
											id="userName" style="width:187px; height: 18px;"></td>

									</tr>
									<tr>
										<td>생년월일</td>
										<td colspan="2"><select name="birth1"
											style="height: 24px; width: 60px;">
												<c:forEach var="i" begin="0" end="${2018-1900 }">
													<c:set var="yearOption" value="${2018-i}" />
													<option value="${yearOption }">${yearOption }</option>
												</c:forEach>
										</select> <select name="birth2" style="height: 24px; width: 60px;">
												<c:forEach var="i" begin="1" end="12">
													<c:set var="monthOption" value="${i}" />
													<option value="${monthOption}">${monthOption}</option>
												</c:forEach>
										</select> <select name="birth3" style="height: 24px; width: 60px;">
												<c:forEach var="i" begin="1" end="31">
													<c:set var="dayOption" value="${i}" />
													<option value="${dayOption}">${dayOption}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<td>휴대전화</td>
										<td colspan="2"><select name="phoneNum1"
											style="height: 24px; width: 60px;">
												<option value="010" selected>010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> <input type="text" name="phoneNum2" placeholder=""
											style="width: 56px; height:18px;"> <input type="text"
											name="phoneNum3" placeholder="" style="width: 56px; height:18px;">
										</td>
									</tr>
									
								
								</table>
								</div>
								<!-- 테이블 끝 -->
								<br>
								

							<div class="btnArea">

							<button type="submit" class="goSearchId" id="searchId">아이디 찾기</button>
							&nbsp;
							<button type="reset" class="goSearchId" id="cancelId">취소</button>
							
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
	
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
	<script>
		$('#cancelId').click(function(){
			window.location.href = '${contextPath}/loginView.me';
		})
	</script>
	
</body>
</html>