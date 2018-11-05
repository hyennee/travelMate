<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>modifyInfo</title>
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
			<h2>정보 수정</h2>
			<hr />
			<div >
						<p>내계정</p>
						
						<img src="" alt="" />
						<form action="">
							<table >
								<tr>
									<td>아이디 </td>
									<td colspan="2"><c:out value="${ sessionScope.loginUser.email }"></c:out></td>
								</tr>
								<tr>
									<td>이름</td>
									<td><c:out value="${ sessionScope.loginUser.user_name }"></c:out></td>
								</tr>
								<tr>
									<td>연락처 <span style="color:red;">*</span></td>
									<td><input type="text" value="<c:out value="${ sessionScope.loginUser.phone }"></c:out>" name="phone"/></td>
								</tr>
								<tr>
									<td>닉네임 <span style="color:red;">*</span></td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.nick_name }"></c:out>" name="nick_name"/></td>
								</tr>
								<tr>
									<td>비밀번호 </td>
									<td><button onclick="modifyPwd()">변경</button></td>
								</tr>
								<tr>
									<td>주소 <span style="color:red;">*</span></td>
									<td><input type="text" name="adress" />&nbsp;</td>
								</tr>
								<tr>
									<td></td>
									<td><input type="button" value="우편" /></td>
								</tr>
							</table>
							</form>
							<input type="submit" value="변경"  />
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>



	<jsp:include page="../must/footer.jsp" />
	<script>
	 	function modifyPwd(){
 		 location.href = "<%=request.getContextPath()%>/modifyPwd.me";
 		 
 	 }
	</script>
</body>
</html>


