<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>상세거래내역</title>
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
						
						<label for="">no</label><input type="text" class="form-control no"  value="${ trade.CONSULT_REQUEST_NO}" readonly/><br />
						<label for="">컨설턴트</label><input type="text" class="form-control writer" value="${ trade.consultNickName}" readonly/><br />
						<label for="">여행시작일자</label><input type="text" class="form-control date" value="${ trade.TRAVEL_START_DATE}" readonly/><br />
						<label for="">여행종료일자</label><input type="text" class="form-control date" value="${ trade.TRAVEL_END_DATE}" readonly/><br />
						<label for="">여행목적</label><input type="text" class="form-control oboTitle" value="${ trade.TRAVEL_PURPOSE}"/><br />
						<label for="">어른</label><input type="text" class="form-control" width="100px" value="${ trade.ADULT_NUM}"/>&nbsp;명 &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp; 
						<label for="">아이</label><input type="text" class="form-control " width="100px" value="${ trade.CHILD_NUM}"/>&nbsp;명<br />
						<label for="">특이사항</label><input type="text" class="form-control " width="100px" value="${ trade.ETC}"/><br />
						<label for="">1인당 예산</label><input type="text" class="form-control " width="100px" value="${ trade.BUDGET}"/>&nbsp;만원<br />
						<label for="">여행지역</label><input type="text" class="form-control " width="100px" value="${ trade.TRAVEL_AREA}"/>&nbsp;<br />
						
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


