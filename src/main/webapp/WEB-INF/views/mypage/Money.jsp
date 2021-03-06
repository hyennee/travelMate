<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="icon" type="image/png" href="/travelMate/resources/images/logo.png" />
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
.my{
	width: 51px;
}
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
td{
	border-bottom: 1px solid lightgray;
}

.thstyle{
	width : 200px;
	background-color : lightgray;
	text-align:center;
}
</style>
</head>
<body>
<script type="text/javascript">
$(document).ready(function() { 
	var msg = null;
	msg = '${msg}';
	if(msg!=''){	
		alert('${msg}'); 
	}
	});
	
	
	function a(){
		window.open("charge.mp","w","width=800, height=700, left=100, top=100, scrollbars=yes, resizable=yes, location=yes");
	}
	
	function b(){
		if(${ sessionScope.loginUser.cybermoney } > 0){
			window.open("withdraw.mp","w","width=800, height=700, left=100, top=100, scrollbars=yes, resizable=yes, location=yes");
		}else{
			alert("출금 가능한 사이버머니가 없습니다.");
		}
	}
	
	function test(id,money){
 		if(${ sessionScope.loginUser.cybermoney } >= money){
			location.href="insertCyberMoney2.me?money="+money+"&imp_uid="+id;
		}else{
			alert("환불하려는 사이버머니보다 보유 사이버머니가 부족합니다.");
		} 
 	}

</script>
	<jsp:include page="../must/header.jsp" />
	<div id="jb-container">
		<div id="jb-header">
			<h1></h1>
		</div>
		<div id="jb-sidebar-left">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div id="jb-content">
			<h2>사이버머니</h2>
			<hr />
			<div >
						<span>-&nbsp;&nbsp;${ sessionScope.loginUser.user_name }님의 보유적립금은 ${ sessionScope.loginUser.cybermoney }원입니다. 
						<button type="button" onclick="a()"> 충전 </button>
						<button type="button" onclick="location.href='withdraw.mp'"> 출금 </button></span><br />
						<span>-&nbsp;&nbsp;적립금은 컨설트 요청할 시에 사용하실 수 있습니다.</span><br /><br /><br />
						<form action="">
						<table id="example-table-1" width="100%" class="table table-bordered table-hover text-center">
								<tr>
									<th class="thstyle">구분</th>
									<th class="thstyle">금액</th>
									<th class="thstyle">내역일시</th>
								</tr>
								
								<c:forEach var="size" items="${ cyberMoney }" >
									
								
									<tr>
										<td>${ size.CHANGE_REASON }</td>
										<td>${ size.CHANGE_MONEY }원</td>
										<td>${ size.RECORD_DATE }</td>
									</tr>
								
								</c:forEach>
							</table>
							</form>

			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>


	<jsp:include page="../must/footer.jsp" />
	<script>
	
	</script>
</body>
</html>


