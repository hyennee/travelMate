<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>mypageMain</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

td {
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
</style>
</head>
<body>
	<jsp:include page="../must/header.jsp" />
	<div id="jb-container">
		<div id="jb-header">
			<h1>헤더</h1>
		</div>
		<div id="jb-sidebar-left">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div id="jb-content">
			<h2>나의 페이지</h2>
			<hr />
			<div class="section">
				<table align="center">
					<tr>
						<td class="tdsection" style="vertical-align:top; ">
						<p>내계정</p>
							<table align="center">
								<tr>
									<td>이름</td>
									<td colspan="2">
									<c:out value="${ sessionScope.loginUser.user_name }"></c:out></td>
								</tr>
								<tr>
									<td>연락처</td>
									<td><c:out value="${ sessionScope.loginUser.phone }"></c:out></td>
									<td><input type="button" value="정보수정" /></td>
								</tr>
								<tr>
									<td>가입일</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.enroll_date }"></c:out></td>
								</tr>

								<tr>
									<td>보유 적립금</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.cybermoney }"></c:out>원</td>
								</tr>

							</table>
						</td>
						<td class="tdsection">
							<p>사이버머니 내역</p>
							<table align="center">
								<tr>
									<th>no</th>
									<th>구분</th>
									<th>금액</th>
									<th>내역일시</th>
								</tr>
								
								<c:forEach var="size" items="${ cyberMoney }" >
									
								
									<tr>
										<td>${ size.CYBERMONEY_RECORD_NO }</td>
										<td>${ size.CHANGE_REASON }</td>
										<td>${ size.CHANGE_MONEY }원</td>
										<td>${ size.RECORD_DATE }</td>

								</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
					<tr>
						<td class="tdsection">
							<p>1:1문의내역</p>
							<table align="center">
								<tr>
									<th>no</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일시</th>
								</tr>
								<tr>
									<td>1</td>
									<td>왜 결제 안됨?</td>
									<td>신혜원</td>
									<td>18/10/22</td>
								</tr>
							</table>
						</td>
						<td class="tdsection">
							<p>거래내역</p>
							<table align="center">
								<tr>
									<th>no</th>
									<th>컨설팅제목</th>
									<th>컨설턴트</th>
									<th>작성일시</th>
								</tr>
								<tr>
									<td>1</td>
									<td>뉴질랜드 남섬 캠퍼밴 여행 13박 14일</td>
									<td>야반도주(김멋지,신혜원)</td>
									<td>18/10/28</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<br />
		</div>

		<div id="jb-footer">
			<p>Copyright</p>
		</div>

	</div>

	<script>
		$(function() {
			showPersonalInfo1()
			showPersonalInfo2();
			showPersonalInfo3();
			 

		});

		function showPersonalInfo1() {
			$.ajax({
				url : "selectMyInfoMain1.mp",
				data : {
					loginUser : sessionScope.loginUser					
				},
				type : "post",

				success : function(data) {

				},
				error : function() {
					console.log("서버 전송 실패");
				}
			})
		}
		
		function showPersonalInfo2() {
			$.ajax({
				url : "selectMyInfoMain2.mp",
				data : {
					loginUser : sessionScope.loginUser					
				},
				type : "post",

				success : function(data) {

				},
				error : function() {
					console.log("서버 전송 실패");
				}
			})
		}
		
		function showPersonalInfo3() {
			$.ajax({
				url : "selectMyInfoMain3.mp",
				data : {
					loginUser : sessionScope.loginUser					
				},
				type : "post",

				success : function(data) {

				},
				error : function() {
					console.log("서버 전송 실패");
				}
			})
		}
	</script>

	<jsp:include page="../must/footer.jsp" />
</body>
</html>


