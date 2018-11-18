<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>상세거래내역</title>
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
			<h1>헤더</h1>
		</div>
		<div id="jb-sidebar-left">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div id="jb-content">
			<h2>상세 거래내역</h2>
			<hr />
			<div >
						<p>상세 거래 내역</p>
						
						<label for="">작성자</label><input type="text" value="${ trade.TRAVEL_PURPOSE}" readonly/><br />
						<label for="">컨설턴트</label><input type="text" value="컨설턴트" readonly /><br />
						<label for="">거래일시</label><input type="text" value="2018.01.11" readonly/><br />
						<label for="">거래한 상품</label><input type="text" value="신혼여행으로 몰디브, 예산 1인 300으로 짜주세요"/><br />
						<label for="">내용</label><br />
						
						<label for="">no</label><input type="text" class="form-control no"  value="고쳐" readonly/><br />
						<label for="">작성자</label><input type="text" class="form-control writer" value="고쳐" readonly/><br />
						<label for="">답변여부</label><input type="text" class="form-control" />
						<label for="">날짜</label><input type="text" class="form-control date" value="고쳥" readonly/><br />
						<label for="">제목</label><input type="text" class="form-control oboTitle" value="고쳥"/><br />
						<label for="">내용</label><br />
						<textarea contentEditable="true" class="form-control" name="" id="" cols="30" rows="10" readonly style="cursor:default"></textarea>
						
						
												
												

			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>


	<jsp:include page="../must/footer.jsp" />

</body>
</html>


