<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.w{
		
		margin:auto;
		width:960px;
	}
</style>
</head>
<body>
	
	
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>CSS</title>
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
	width: 400px;
	display: inline-block;
}
a{
	text-decoration:none;
	color:black;
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
			<h2>나의 계정</h2>
			<hr />
			<div class="section">
				<table align="center">
					<tr>
						<td>이름</td>
						<td colspan="2">입력란</td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>loginUser.phone</td>
						<td><input type="button" value="정보수정" /></td>
					</tr>
					<tr>
						<td>가입일</td>
						<td colspan="2">loginUser.enrollDate</td>
					</tr>

					<tr>
						<td>보유 적립금</td>
						<td colspan="2">loginUser.cybermoney</td>
					</tr>
					<tr>
						<td>거래 내역</td>
						<td colspan="2"><a href="#">7건</a></td>

					</tr>
					<tr>
						<td>1:1문의</td>
						<td colspan="2"><a href="#">22건</a></td>
					</tr>
				</table>
			</div>
			
			<div class="section">
				<p>사이버머니 내역</p>
				<table>
					<tr>
						<th>no</th>
						<th>구분</th>
						<th>금액</th>
						<th>내역일시</th>
						<th>잔여액</th>
					</tr>
					<tr>
						<td>1</td>
					
					</tr>
				</table>
			</div>
			
			<br />
			
			<div class="section">
				<p>1:1문의내역</p>
				<table>
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
			</div>
			<div class="section">
				<p>거래내역</p>
				<table>
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
			</div>
		</div>

		<div id="jb-footer">
			<p>Copyright</p>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>


