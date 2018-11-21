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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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


.thstyle{
	width : 200px;
	background-color : lightgray;
}

.section {
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
			<h2>정보 수정</h2>
			<hr />
			<div >
						<p>내계정</p>		
						<img src="" alt="" />
						<form action="modifyMyInfo.me" method="post">
						<span style="color: #6c6e69; font: 12px/24px 'OpenSans';  margin: 0;">비밀번호 / 아이디 찾기에서 필요하므로 정확하게 입력 및 사용하는 이메일 주소는 반드시 기억해주십시요.</span>
							<table class="table">
								<tr>
									<td class="thstyle">아이디 </td>
									<td colspan="3"><input type="text" value="<c:out value="${ sessionScope.loginUser.email }"></c:out>" name="email"  readonly/></td>
								</tr>
								<tr>
									<td class="thstyle">이름</td>
									<td colspan="3"><input type="text" value="<c:out value="${ sessionScope.loginUser.user_name }"></c:out>" name="user_name"  readonly/></td>
								</tr>
								<tr>
									<td class="thstyle">생년월일<span style="color:red;">*</span></td>
									<td colspan="3"><input type="text" oninput="checkBirthday()" value="<c:out value="${ sessionScope.loginUser.birthday }"></c:out>" name="birthday" id="birthday" /></td>
									<td><div id="checkBirthday"></div></td>
								</tr>
								
								<tr>
									<td class="thstyle">연락처 <span style="color:red;">*</span></td>
									<td colspan="3"><input type="text" oninput="checkPhone()" value="<c:out value="${ sessionScope.loginUser.phone }"></c:out>" name="phone" id="phone" /></td>
									<td><div id="checkPhone"></div></td>
								</tr>
 
								<tr>
									<td class="thstyle">닉네임 <span style="color:red;">*</span></td>
									<td colspan="3"><input type="text" oninput="checkNick()" value="<c:out value="${ sessionScope.loginUser.nick_name }"></c:out>" id="nick_name" name="nick_name"/></td>
									<td><div id="nick_name_check"></div></td>
								</tr>
								
							</table>
							<input type="submit" value="변경"  id="submit" class="btn btn-default"/>
							<input type="hidden" value="${ sessionScope.loginUser.user_no }" name="user_no">
							</form>
							
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>



	<jsp:include page="../must/footer.jsp" />
	<script>
	
	//닉네임 중복검사
	function checkNick() {
		console.log();
		var nick_name = $('#nick_name').val();
		
		$.ajax({
					data : {
						"nick_name" : nick_name
					},
					url : 'nickNameCheck.me',
					type : 'post',
					success : function(data) {
						if (data == "0" ) {
							document.getElementById('nick_name_check').innerHTML = "<span style='color:blue; font-size:12px'>사용할 수 있는 닉네임입니다.</span>";
							$('#submit').attr('disabled',false);
						} else if (data == "1") {
							document.getElementById('nick_name_check').innerHTML = "<span style='color:red; font-size:12px'>사용할 수 없는 닉네임입니다. 다른 닉네임을 입력해주세요. </span>";
							$('#submit').attr('disabled',true);
						}

					}
				})

	}
	 
	 function checkBirthday(){
			var birthdayVal = $('#birthday').val();
			
			var regBirthdayExp = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/
			
			if(regBirthdayExp.test(birthdayVal) == false){
				//ㅅ입력한 생년월일이 이 정규식에 맞지 않으면 
				document.getElementById('checkBirthday').innerHTML = "<span style='color:red; font-size:12px'>생년월일이 형식에 맞지 않습니다.</span>";
				$('#submit').attr('disabled',true);
				return false;
				
			}else{
				document.getElementById('checkBirthday').innerHTML = "<span style='color:blue; font-size:12px'>정상으로 입력되었습니다. </span>";
				$('#submit').attr('disabled',false);
				return true;
			}
			
			
		} 
	//휴대폰 번호 유효성 검사
	function checkPhone(){
		var chkPhoneVal = $('#phone').val();
		var regPhoneExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		
		if(regPhoneExp.test(chkPhoneVal) == false ){
			document.getElementById('checkPhone').innerHTML = "<span style='color:red; font-size:12px'>휴대폰 번호 형식에 맞지 않습니다.</span>";
			$('#submit').attr('disabled',true);
			return false;
		}else{
			document.getElementById('checkPhone').innerHTML = "<span style='color:blue; font-size:12px'>정상으로 입력되었습니다.　</span>";
			$('#submit').attr('disabled',false);
			checkPhone(chkPhoneVal);
			return true;
		}
		
	}
	

	
	</script>
</body>
</html>


