<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>myInfo</title>
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

tr {
	border: 1px solid #bcbcbc;
}

td {
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

.tdsection {
	width: 49%;
	display: inline-block;
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
			<h2>비밀번호 변경</h2>
			<hr />
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>비밀번호는 가급적 주기적으로 변경해주세요.</span><br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>비밀번호는 잊지 않도록 주의하시기 바랍니다.</span><br />
				<!-- <form action="">
					<table>
						<tr>
							<td>현재 비밀번호 </td>
							<td><input type="password" placeholder="내용을 입력해주세요" oninput="currentPwd()" value="현재 비밀번호를 입력하세요" name="current_pwd" id="current_pwd"/></td>
						</tr>
						<tr>
							<td>새 비밀번호</td>
							<td><input type="password" placeholder="4~12자의 영문과 숫자만 사용가능합니다" name="password" id="password"/></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" placeholder="비밀번호를 한번 더 입력해주세요" name="password2" id="password2"/></td>
						</tr>
					</table>
					<input type="submit" value="변경하기" onclick=""/>
					</form> -->

				<form class="form-horizontal" action="checkPwd.me" method="post">
				
					<div class="form-group">
						<label class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<p class="form-control-static"><c:out value="${ sessionScope.loginUser.email }"></c:out></p>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="pwd" name="pwd" oninput="checkPwd()"
								placeholder="현재 비밀번호를 입력하세요"> 
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="chg_pwd1" name="chg_pwd1" oninput="checkPwd()"
								placeholder="변경할 비밀번호를 입력하세요"> <div id="checkInputPwd"></div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="chg_pwd2" name="chg_pwd2" oninput="checkPwd()"
								placeholder="변경할 비밀번호를 확인해주세요"><div id="checkInputPwd"></div>
						</div>
					</div>
					
					<input type="submit" value="변경하기" class="btn btn-default" />
				</form>

			</div>
			<br />
		</div>

		<div id="jb-footer"></div>

	</div>

	<script>


		//비밀번호 확인 체크 및 유효성 검사
		function checkPwd() {
			var chkPwdVal1 = $('#chg_pwd1').val();
			var chkPwdVal2 = $('#chg_pwd2').val();
			var checkNumber = chkPwdVal1.search(/[0-9]/g);
			var checkEnglish = chkPwdVal1.search(/[a-z]/ig);
			var regPwdExp = /^[A-Za-z0-9]{8,16}$/; //비밀번호 영문(소문자와 대문자)과 숫자 8자~16자
			console.log(chkPwdVal1);
			console.log(chkPwdVal2);

			//비밀번호 공백 체크
			if (chkPwdVal1 == "" && ((chkPwdVal1 == chkPwdVal2) || (chkPwdVal1 != chkPwdVal2))) {

				document.getElementById('checkInputPwd').innerHTML = "<span style='color:red; font-size:12px'>비밀번호를 입력해주십시오.</span>";
				pwdCheck = 0;
				return false;
			}

			//비밀번호 유효성 검사
			if (regPwdExp.test(chkPwdVal1) == false) {
				document.getElementById('checkInputPwd').innerHTML = "<span style='color:red; font-size:12px'>비밀번호는 영문(소문자와 대문자)과 숫자 조합으로 8자~16자로 입력해주십시오.</span>";
				return false;
			}
			if (checkNumber < 0 || checkEnglish < 0) {
				document.getElementById('checkInputPwd').innerHTML = "<span style='color:red; font-size:12px'>비밀번호는 숫자와 영문자를 혼용해서 입력해주십시오.</span>";
				return false;
			}
			if (/(\w)\1\1\1/.test(chkPwdVal1) == true) {
				document.getElementById('checkInputPwd').innerHTML = "<span style='color:red; font-size:12px'>같은 문자를 4번 이상 사용하실 수 없습니다.</span>";
				return false;
			}

			if (regPwdExp.test(chkPwdVal1) == true) {
				//비밀번호 유효성 검사를 통과하면 확인 체크
			if ( chkPwdVal1 != "" && (chkPwdVal1 == chkPwdVal2) ) {
				document.getElementById('checkInputPwd').innerHTML = "<span style='color:blue; font-size:12px'>비밀번호가 일치합니다.</span>";

			} else if (chkPwdVal1 != "" && (chkPwdVal1 != chkPwdVal2)) {
				document.getElementById('checkInputPwd').innerHTML = "<span style='color:red; font-size:12px'>비밀번호가 일치하지 않습니다.</span>";

				}

			}

			return true;

		}
	</script>

	<jsp:include page="../must/footer.jsp" />
</body>
</html>


