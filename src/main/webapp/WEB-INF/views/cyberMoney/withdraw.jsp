<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>사이버머니 충전</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
			<jsp:include page="../mypage/sidemenu.jsp" />
		</div>
	<div id="jb-container">
		<div id="jb-content">
			<h2>사이버머니 출금</h2>
			<hr />
			
			<div>
				<form action="insertWithdraw.me" method="post" id="withdraw">
					<input type ="hidden" name="USER_NO" value="${ sessionScope.loginUser.user_no }"><br>
					은행 : <input type ="text" name="BANK"><br>
					예금주 : <input type ="text" name="NAME"><br>
					계좌번호 : <input type ="text" name="BANK_NO"><br>
					금액 : <input type ="text" name="MONEY" id="money"><br>
					<button type="button" onclick="a();">확인	</button>
					<input type ="reset" value="취소">
				</form>
			</div>
			<script type="text/javascript">
				function a() {
					var money = $("#money").val()*1
					if(money <= ${ sessionScope.loginUser.cybermoney }){
						$("#withdraw").submit();
					}else{
						alert("출금하려는 금액보다 보유 사이버머니가 적습니다.");
					};
				}
			</script>
			<br />
		</div>


	</div>

<div id="jb-footer">
		</div>

	</div>


	<jsp:include page="../must/footer.jsp" />
	<script>
	
	</script>
</body>
</html>


