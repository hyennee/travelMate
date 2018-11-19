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
<body onUnload="x()">
<script type="text/javascript">

function test(sel){
	if(sel==1){
		$("#cash").css("visibility","visible");
	}else{
		$("#cash").css("visibility","hidden");
	}
}

 var IMP = window.IMP; // 생략해도 괜찮습니다.
IMP.init("imp10977160"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다
function pay(){
	if($('input[name="sel"]:checked').val() == "카드"){
		IMP.request_pay({ // param
		    pg: "html5_inicis",
		    pay_method: "card",
		    name: $(":radio:checked").val()+"원",
		    amount: 10,
		    buyer_email: "${ sessionScope.loginUser.email }",
		    buyer_name: "${ sessionScope.loginUser.user_name }",
		    buyer_tel: "{ sessionScope.loginUser.phone }"
		}, function (rsp) { // callback
		    if (rsp.success) {
		    	aj(rsp.imp_uid);	 
		    }else{
		    	alert("결제를 실패하였습니다.");
		    	parent.opener.location.reload();
		    	parent.window.close();
		    }
		}); 
	}else{
		aj2();
	}
} 
function aj(id){
	 $.ajax({
			data : {
				"imp_uid": id,
				"money" : $('input[name="money"]:checked').val()
			},
			url : 'insertCyberMoney.me', 
			success : function(data) {
				alert("결제가 완료되었습니다..");
				parent.opener.location.reload();
		    	parent.window.close();
			},
			error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
         	}
		}); 
}
function aj2(){
	 $.ajax({
			data : {
				"account_name": $('input[name="account_name"]').val(),
				"account_no": $('input[name="account_no"]').val(),
				"money" : $('input[name="money"]:checked').val()
			},
			url : 'insertCyberMoney3.me', 
			success : function(data) {
				alert("결제가 완료되었습니다..");
				parent.opener.location.reload();
		    	parent.window.close();
			},
			error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        	}
		}); 
}
function x(){
	parent.opener.location.reload();
}
</script>
	<div id="jb-container">
		<div id="jb-content">
			<h2>사이버머니</h2>
			<hr />
			<div>
				<div >
					<input type="radio" name="money" value="1000" checked="checked" id="1000"/><label for="1000">1000원</label> 
					<input type="radio" name="money" value="5000" id="5000"/> <label for="5000">5000원</label> 
				</div>
				<div >
					<input type="radio" name="sel" value="카드" checked="checked" id="카드" onclick="test(0)"/><label for="카드">카드</label> 
				</div>
				<button onclick="pay()">확인</button>
			</div>
			<br />
		</div>


	</div>


	<script>
	
	</script>
</body>
</html>


