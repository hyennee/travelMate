<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%HttpSession session = request.getSession(false);  
		
		if(session != null) {
		
			session.invalidate();
	
		}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script>
		alert('이미 탈퇴한 회원의 아이디입니다. 확인 후 다시 로그인해주십시오.')
		
		location.href="loginView.me";
	</script>
</body>
</html>