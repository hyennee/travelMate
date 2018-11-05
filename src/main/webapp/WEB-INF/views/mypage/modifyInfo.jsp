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


.thstyle{
	width : 200px;
	background-color : lightgray;
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
						<form action="modifyInfo.me" method="post">
							<table >
								<tr>
									<td class="thstyle">아이디 </td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.email }"></c:out>" name="email"/></td>
								</tr>
								<tr>
									<td colspan="3"><span style="color: #6c6e69; font: 12px/24px 'OpenSans';  margin: 0;">비밀번호 / 아이디 찾기에서 필요하므로 정확하게 입력 및 사용하는 이메일 주소는 반드시 기억해주십시요.</span></td>
								</tr>
								<tr>
									<td class="thstyle">이름</td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.user_name }"></c:out>" name="user_name" /></td>
								</tr>
								<tr>
									<td class="thstyle">생년월일</td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.birthday }"></c:out>" name="birthday" /></td>
								</tr>
								<tr>
									<td class="thstyle">연락처 <span style="color:red;">*</span></td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.phone }"></c:out>" name="phone"/></td>
								</tr>
								<tr>
									<td class="thstyle">닉네임 <span style="color:red;">*</span></td>
									<td colspan="2"><input type="text" value="<c:out value="${ sessionScope.loginUser.nick_name }"></c:out>" name="nick_name"/></td>
								</tr>
								
								<tr>
									<td class="thstyle">주소 <span style="color:red;">*</span></td>
									<td><input type="text" name="adress" style=" width: 300px;"/>&nbsp;<input type="button" value="우편" /></td>
								</tr>
							
							</table>
							<input type="submit" value="변경"  />
							</form>
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>



	<jsp:include page="../must/footer.jsp" />

</body>
</html>


