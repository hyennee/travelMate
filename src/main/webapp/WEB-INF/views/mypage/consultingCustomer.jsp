<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>컨설턴트페이지</title>
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
			<h2>나의 컨설팅 메뉴얼</h2>
			<hr />
			<div >
			
			<p>고객관리리스트</p>
						<table id="example-table-1" class="table table-bordered table-hover text-center">
								<tr>
									<th  class="thstyle">컨설팅번호</th>
									<th  class="thstyle">여행목적</th>
									<th  class="thstyle">여행지역</th>
									<th  class="thstyle">여행시작일자</th>
									<th  class="thstyle">여행종료일자</th>
									<th  class="thstyle">요청자 이름</th>
								</tr>
								
								<c:forEach var="size" items="${ consultingCustomer }" >
									
								
									<tr onclick="location.href='consultingCustomerAnswer.me?cr=${ size.CONSULT_REQUEST_NO }'" style="cursor: pointer;">
										<td>${ size.CONSULT_REQUEST_NO }</td>
										<td>${ size.TRAVEL_PURPOSE }</td>
										<td>${ size.TRAVEL_AREA }</td>
										<td>${ size.TRAVEL_START_DATE }</td>
										<td>${ size.TRAVEL_END_DATE }</td>
										<td>${ size.USER_NAME }</td>	
									</tr>
								
								</c:forEach>
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


