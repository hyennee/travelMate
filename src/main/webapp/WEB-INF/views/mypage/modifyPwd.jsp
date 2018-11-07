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
			<h1>헤더</h1>
		</div>
		<div id="jb-sidebar-left">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div id="jb-content">
			<h2>비밀번호 변경</h2>
			<hr />
			<div >
					<p>비밀번호는 가급적 주기적으로 변경해주세요.</p>
					<p>비밀번호는 잊지 않도록 주의하시기 바랍니다.</p>
					<form action="">
					<table>
						<tr>
							<td>현재 비밀번호 </td>
							<td><input type="password" placeholder="내용을 입력해주세요" oninput="currentPwd()" value="현재 비밀번호를 입력하세요" name="current_pwd" id="current_pwd"/></td>
						</tr>
						<tr>
							<td>새 비밀번호</td>
							<td><input type="password" placeholder="4~12자의 영문과 숫자만 사용가능합니다" name="pwd"/></td>
						</tr>
						<tr>
							<td>비밀번호 확인</td>
							<td><input type="password" placeholder="비밀번호를 한번 더 입력해주세요" name="pwd2"/></td>
						</tr>
					</table>
					<input type="submit" value="변경하기" onclick=""/>
					</form>
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>

	<script>
	function currentPwd() {
		console.log();
		var current_pwd = $('#current_pwd').val();
		$.ajax({
			data : {
				"current_pwd" : current_pwd
			},
			url :  'post',
			success : function(data) {
				
				if (data == "0") {
					document.getElementById('current_pwd').innerHTML = "<span style='color:blue; font-size:12px'>사용할 수 있는 닉네임입니다.</span>";
					$('#submit').attr('disabled',false);					
				} else if (data == "1") {
					
				}
			}
		})
	}
	
	</script>

	<jsp:include page="../must/footer.jsp" />
</body>
</html>


