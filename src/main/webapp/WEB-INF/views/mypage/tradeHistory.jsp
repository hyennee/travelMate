<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>거래내역</title>

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
			<h2>거래내역</h2>
			<hr />
			<div >
						<p>거래내역리스트</p>
						<table id="example-table-1" width="100%" class="table table-bordered table-hover text-center" >
								<tr >
									<th class="thstyle">no</th>
									<th style="background-color:lightgray;">컨설팅제목</th>
									<th class="thstyle">컨설턴트</th>
									<th class="thstyle">여행시작일자</th>
									<th class="thstyle">여행종료일자</th>
								</tr>
								<c:forEach var="size" items="${ tradeInfo }" >
									<tr style="cursor:pointer;"  onclick="detail('${ size.CONSULT_REQUEST_NO}')" >
										
										<td>${ size.CONSULT_REQUEST_NO }</td>
										<td>${ size.TRAVEL_PURPOSE }</td>
										<td>${ size.CONSULT_USER_NO }</td>
										<td>${ size.TRAVEL_START_DATE}</td>
										<td>${ size.TRAVEL_END_DATE }</td>
										
									</tr>
								</c:forEach>
							</table>
							<!-- 
							<div class="col-lg-12" id="ex1_Result1" ></div> 
							<div class="col-lg-12" id="ex1_Result2" ></div>  
							-->
					
					
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>

	
	<jsp:include page="../must/footer.jsp" />
	
	<script>
		function detail(CONSULT_REQUEST_NO){
			location.href="selectOneTrade.others?CONSULT_REQUEST_NO=" + CONSULT_REQUEST_NO;
		}
	</script>

<!-- 	<script>
	$("#example-table-1 tr").click(function(){ 	

		var str = ""
		var tdArr = new Array();	// 배열 선언
		
		// 현재 클릭된 Row(<tr>)
		var tr = $(this);
		var td = tr.children();
		
		// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
		console.log("클릭한 Row의 모든 데이터 : "+tr.text());
		
		// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
		td.each(function(i){
			tdArr.push(td.eq(i).text());
		});
		
		console.log("배열에 담긴 값 : "+tdArr);
		
		// td.eq(index)를 통해 값을 가져올 수도 있다.
		var no = td.eq(0).text();
		var userid = td.eq(1).text();
		var name = td.eq(2).text();
		var email = td.eq(3).text();
		
		
		str +=	"  No. : <font color='red'>" + no + "</font>" +
				", 컨설팅제목 : <font color='red'>" + userid + "</font>" +
				", 이름 : <font color='red'>" + name + "</font>" +
				", 이메일 : <font color='red'>" + email + "</font>";		
		
		$("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());		
		$("#ex1_Result2").html(str);
	});
	</script> -->
</body>
</html>


