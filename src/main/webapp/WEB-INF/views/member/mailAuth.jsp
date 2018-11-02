<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="mailAuthForm" align="center">
		<br><br>
		<h3>인증번호 6자리를 입력하세요</h3>
		<form method="post" name="authMailForm" onSubmit="return checkMailAuth();">
			<input type="text" id="authMailInputVal" name="authMailInputVal" style="width: 187px; height: 18px;" >
			<input type="submit">
		
		</form>
	
	</div>
</body>

<script>

	document.function(){
		alert('${email}');
	}

	function checkMailAuth(){
		var authMailForm = document.authMailForm; //form 내용
		var authMailNum = ${authMailNum}; //인증코드 값
		var authMailInputVal = $('#authMailInputVal').val(); //입력한 인증코드 값
		if(authMailInputVal == "" || authMailInputVal == null){
			alert('인증번호를 입력하세요.');
			$('#authMailInputVal').focus();
			return false;
		} 
		if(authMailInputVal != authMailNum){
			alert("틀린 인증번호입니다. 인증번호를 다시 입력해주세요");
			authMailInputVal = "";
			$('#authMailInputVal').focus();
			return false;
			
		}
		if(authMailInputVal == authMailNum){
			alert('인증되었습니다.');
			opener.document.user
		}
		
		
	}




</script>
</html>