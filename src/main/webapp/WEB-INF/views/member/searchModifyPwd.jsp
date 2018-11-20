<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
#searchPwdArea {
	width: 100%;
	height:800px;
	padding: 0 0 200px 0;
	margin: auto;
	background: /* #edefea; */ white;
}

#searchPwdForm {
	margin-left: 30px;
	margin-right: 30px;
}

table, th, td {
	border: none;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

td:first-child {
	font-weight: bold;
}

.btnArea {
	float: right;
}

.goModifyPwd {
	/* 	float:right; */
	background: #6bc6b3;
	border: none;
	color: white;
	padding: 12px 22px;

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

.goModifyPwd:hover {
	color: #6bc6b3;
	background-color: white;
	font-weight: bold;
	border-radius: 4px;
}
</style>


<body>
	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="searchPwdArea">
					<div id="searchPwdForm"> <!-- action="selectSearchPwd.me" -->
						<form  method="post" id="goSearchPwd" action="selectSearchPwd.me">
							<br> <br> <br> <span
								style="text-align: left; font-weight: bold; font-size: 24px; color: black">비밀번호
								변경</span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: #999">지금 임시비밀번호를 새 비밀번호로 수정해주세요.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								이메일로 발급받은 임시 비밀번호를 확인 후 새로운 비밀번호로 설정해주세요. </span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								현재 발급 받으신 임시 비밀번호를 입력해주신 후 새로운 비밀번호를 입력해주세요.</span> <br>
								<span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								비밀번호는 영문자(소문자, 대문자)와 숫자 조합으로 8~16자로 설정해주세요.</span> <br>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 17px; color: black">비밀번호
								변경</span>
							<hr>

							<!-- 테이블 시작 -->
							<div class="inputPwdForm">
								<table style="width: 80%">
									<tr>
										<td style="width: 150px; height:40px;">현재 비밀번호</td>
										<td><input type="password" name="curr_pwd" id="curr_pwd"
											style="width:187px; height: 18px;" maxlength="50" placeholder="현재 비밀번호 입력" oninput="checkPwd()"></td>
											<td><div id="pwd_result" align="left"></div></td>
									</tr>
									<tr>
										<td style="width: 150px; height:50px;">새 비밀번호</td>
										<td style="width: 150px; height:40px;"><input type="password" name="change_pwd" id="change_pwd"
											style="width:187px; height: 18px;" maxlength="50"  placeholder="새 비밀번호 입력" oninput="checkPwd()"></td>
											<td><div id="pwd_result2" align="left"></div></td>

									</tr>
									<tr>
										<td>비밀번호 확인</td>
										<td><input type="password" name="change_pwd2" id="change_pwd2"
											style="width:187px; height: 18px;" maxlength="50"  placeholder="비밀번호 확인 입력" oninput="checkPwd()"></td>

									</tr>
								</table>
							</div>
							<!-- 테이블 끝 -->
							<br>


							<div class="btnArea">

								<button type="button" class="goModifyPwd" id="modifyPwdBtn" onclick="changeModiPwd()" >비밀번호
									수정</button>
								&nbsp;
								<button type="reset" class="goModifyPwd" id="cancelPwd" onclick="location.href='logout2.me'">취소</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
	
	<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
	<script>
/* 	
	$('#searchPwdBtn').click(function(){
		
		if($('#user_name').val() == "" || $('#user_name').val() == null){
				alert('이름을 입력해주십시오.');
				$('#user_name').focus();
				return false;
			}
			if($('#email').val() == "" || $('#email').val() == null){
				alert('아이디를 입력해주십시오.');
				$('#email').focus();
				return false;
			}
		
		})
		
		$('#cancelPwd').click(function(){
			window.location.href = '${contextPath}/loginView.me';
		});	 */

	</script>
	
	
	<script>
	//비밀번호 확인 체크 및 유효성 검사
	
	function checkPwd(){

		var currPwd = $('#curr_pwd').val();
		var chkPwdVal1 = $('#change_pwd').val();
		var chkPwdVal2 = $('#change_pwd2').val();
		var checkNumber = chkPwdVal1.search(/[0-9]/g);
		var checkEnglish = chkPwdVal1.search(/[a-z]/ig);
		var regPwdExp = /^[A-Za-z0-9]{8,16}$/; //비밀번호 영문(소문자와 대문자)과 숫자 8자~16자
		console.log(chkPwdVal1);
		console.log(chkPwdVal2);
		
		
		
		//비밀번호 공백 체크
	
		
		if (chkPwdVal1 == ""
				&& ((chkPwdVal1 == chkPwdVal2) || (chkPwdVal1 != chkPwdVal2))) {

			document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호를 입력해주십시오.</span>";
			pwdCheck = 0;
			$('#modifyPwdBtn').attr('disabled',true);
			return false;
		}
		//비밀번호 유효성 검사
		if (regPwdExp.test(chkPwdVal1) == false) {
			document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호는 영문(소문자와 대문자)과 숫자 조합으로 8자~16자로 입력해주십시오.</span>";
			$('#modifyPwdBtn').attr('disabled',true);
			return false;
		}
		if (checkNumber < 0 || checkEnglish < 0) {
			document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호는 숫자와 영문자를 혼용해서 입력해주십시오.</span>";
			$('#modifyPwdBtn').attr('disabled',true);
			return false;
		}
		if (/(\w)\1\1\1/.test(chkPwdVal1) == true) {
			document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>같은 문자를 4번 이상 사용하실 수 없습니다.</span>";
			$('#modifyPwdBtn').attr('disabled',true);
			return false;
		}

		if (regPwdExp.test(chkPwdVal1) == true) {
			//비밀번호 유효성 검사를 통과하면 확인 체크
			if ((chkPwdVal1 != "" || chkPwdVal1 != null) && (chkPwdVal1 == chkPwdVal2)) {
				document.getElementById('pwd_result2').innerHTML = "<span style='color:blue; font-size:12px'>비밀번호가 일치합니다.</span>";
				$('#modifyPwdBtn').attr('disabled',false);
			} else if ((chkPwdVal1 != "" || chkPwdVal1 != null) && (chkPwdVal1 != chkPwdVal2)) {
				document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호가 일치하지 않습니다.</span>";
				 $('#modifyPwdBtn').attr('disabled',true);
			} else if ((chkPwdVal2 == ""|| chkPwdVal2 == null) && (chkPwdVal1 == chkPwdVal2)){
				document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호가 일치하지 않습니다.</span>";
				 $('#modifyPwdBtn').attr('disabled',true);
			} else if ((chkPwdVal2 == ""|| chkPwdVal2 == null) && (chkPwdVal1 != chkPwdVal2)){
				document.getElementById('pwd_result2').innerHTML = "<span style='color:red; font-size:12px'>비밀번호가 일치하지 않습니다.</span>";
				 $('#modifyPwdBtn').attr('disabled',true);
			}

		}
		
		return true;
		
	}

	
	</script>
	
	<script>
	
	
	function changeModiPwd(){
		
		if($('#curr_pwd').val() == "" || $('#curr_pwd').val() == null){
			alert('현재 비밀번호를 입력해주십시오.');
			$('#curr_pwd').focus();
			return false;
		}
		if($('#change_pwd').val() == "" || $('#change_pwd').val() == null){
			alert('새 비밀번호를 입력해주십시오.');
			$('#change_pwd').focus();
			return false;
		}
		if($('#change_pwd2').val() == "" || $('#change_pwd2').val() == null){
			alert('비밀번호 확인을 입력해주십시오.');
			$('#change_pwd2').focus();
			return false;
		}
	
	/* 	
		 $('#goSearchPwd').submit();
		 */
		$.ajax({
			data : {
				"curr_pwd" : $('#curr_pwd').val(),
				
				
				},
			url : 'selectModifyPwd.me',
			type : 'post',
			success : function(data){
				if(data == "0"){
					alert('현재 비밀번호와 일치하지 않습니다.');
					$('#curr_pwd').focus();
					return false;
				}else if(data == "1"){
					changeModifyPwd();
					console.log('성공인데~');
					
				}
			}
		});
		
		
		
	}
			function changeModifyPwd(){
			
				
				$.ajax({
					data : {
						"change_pwd" : $('#change_pwd').val()
						},
					url : 'changeModifyPwd.me',
					type : 'post',
					success : function(data){
						if(data == "0"){
							console.log('비밀번호 수정 실패')
						}else if(data == "1"){
							alert('비밀번호가 수정되었습니다. 다시 로그인해주시기 바랍니다.')
							location.href="logout2.me";
						}
						
					}
				});
			
		
		
		}
	
	
	
	
	</script>
	

	
	
</body>
</html>