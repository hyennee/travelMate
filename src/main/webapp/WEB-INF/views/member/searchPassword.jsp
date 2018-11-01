<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
#searchPwdArea {
	width: 100%;
	padding: 0 0 200px 0;
	margin: auto;
	background: /* #edefea; */ white;
}

#searchPwdForm {
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

.btnArea {
	float: right;
}

.goSearchPwd {
	/* 	float:right; */
	background: #6bc6b3;
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
	font-weight: bold;
	border-radius: 4px;
}

.goSearchPwd:hover {
	color: #6bc6b3;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}
</style>


<body>
	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="searchPwdArea">
					<div id="searchPwdForm">
						<form action="selectPwd.me" method="post">
							<br> <br> <br> <span
								style="text-align: left; font-weight: bold; font-size: 24px; color: black">비밀번호
								찾기</span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: #999">비밀번호를
								찾을 수 있습니다.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								이름과 아이디 정보를 입력하신 후, 비밀번호를 요청해주세요. </span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								비밀번호는 암호화 되어 있으므로, 회원님의 이메일 주소로 임시 비밀번호를 발급해드립니다.</span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								임시 비밀번호로 로그인 후, 반드시 새로운 비밀번호를 설정해주세요.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 17px; color: black">비밀번호
								찾기</span>
							<hr>

							<!-- 테이블 시작 -->
							<div class="inputPwdForm">
								<table style="width: 80%">
									<tr>
										<td style="width: 100px;">이름</td>
										<td><input type="text" name="userName" id="userName"
											style="width:187px; height: 18px;"></td>

									</tr>
									<tr>
										<td>아이디</td>
										<td><input type="text" name="email" id="email"
											style="width:187px; height: 18px;"></td>

									</tr>


								</table>
							</div>
							<!-- 테이블 끝 -->
							<br>


							<div class="btnArea">

								<button type="submit" class="goSearchPwd" id="searchPwd">비밀번호
									찾기</button>
								&nbsp;
								<button type="reset" class="goSearchPwd" id="cancelPwd">취소</button>

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
		$('#cancelPwd').click(function(){
			window.location.href = '${contextPath}/loginView.me';
		})
	</script>
</body>
</html>