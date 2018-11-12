<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<style>
.goAuthBtn {
	/* 	float:right; */
	background-color: #6bc6b3;
	border: none;
	color: white;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	font-weight: bold;
	border-radius: 4px;
}

.goAuthBtn:hover {
	color: #6bc6b3;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}

</style>
</head>
<body>
	<div class="mailAuthForm"  align="center">
		<br><br><br><br>
		<span style="font-size:12px;">회원님이 입력하신 이메일로 인증번호를 발송하였습니다.</span>
		<br><br>
		<span style="font-size:12px;">인증번호를 입력해주세요.</span>
		<br><br>
		<form method="post" name="authMailForm" onSubmit="return checkMailAuth();">
			<input type="text" id="authCodeInputVal" name="authCodeInputVal" maxlength="7"
										style="width: 220px; height: 25px;" />
			<br><br>
			<input type="submit" value="인증하기" class="goAuthBtn"/>
		</form>
	
	</div>
</body>

<script>
		
	function checkMailAuth(){
		
		
	    var authMailForm = document.authMailForm;  //form 내용
		var joinCode = ${joinCode}; //인증코드 값
		
		if(!authMailForm.authCodeInputVal.value){
			alert("인증번호를 입력하세요");
			return false;
		}
		if(authMailForm.authCodeInputVal.value != joinCode){
			alert("틀린 인증번호 입니다. 인증번호를 다시 입력해주세요")
			authMailForm.authCodeInputVal.value="";
			return false;
		}
		
		if(authMailForm.authCodeInputVal.value == joinCode){
			alert("인증되었습니다.");
			opener.document.getElementById('authId').value = "1";
			opener.document.getElementById('authId').innerHTML = "<span style='color:blue; font-size:12px'>이메일 인증 완료"
			opener.document.getElementById('authMail').disabled = true;
			
			self.close();
			
		}
		
		
		
		
	}




</script>
</html>