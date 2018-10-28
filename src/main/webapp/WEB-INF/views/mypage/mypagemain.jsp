<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.default{
		position : relative ;
	}
	.header{
	}
	.side{
		position:relative;
	
	}
</style>
</head>
<body>
	<div class="default">
		<div class="header">
			<jsp:include page="../must/header.jsp" />			
		</div>
		<div class="side">
			<jsp:include page="sidemenu.jsp" />
		</div>
		<div class="footer">
			<jsp:include page="../must/footer.jsp" />
		</div>
	</div>
</body>
</html>