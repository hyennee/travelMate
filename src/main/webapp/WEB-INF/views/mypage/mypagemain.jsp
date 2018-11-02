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
								<c:forEach var="size" items="${ oneByOne }" >
								<tr>
									<td>${ size.BOARD_NO}</td>
									<td>${ size.TITLE}</td>
									<td>${ size.WRITE}</td>
									<td>${ size.BOARD_DATE}</td>
									
								</tr>
								</c:forEach>
							</table>
						</td>
						<td class="tdsection">
							<p>거래내역</p>
							<table align="center">
								<tr>
									<th>no</th>
									<th>컨설팅제목</th>
									<th>컨설턴트</th>
									<th>여행시작일자</th>
									<th>여행종료일자</th>
								</tr>
								<c:forEach var="size" items="${ tradeInfo }" >
									<tr>
										
										<td>${ size.CONSULT_REQUEST_NO }</td>
										<td>${ size.TRAVEL_PURPOSE }</td>
										<td>${ size.CONSULT_USER_NO }</td>
										<td>${ size.TRAVEL_START_DATE}</td>
										<td>${ size.TRAVEL_END_DATE }</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>



	<jsp:include page="../must/footer.jsp" />
</body>
</html>


