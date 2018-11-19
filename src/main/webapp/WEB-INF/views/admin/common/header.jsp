<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Page</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.headerArea {
		text-align:inline-block;
		background-color:#4682B4;
	}
	.logoImg {
		width:170px;
		height:auto;
		text-align:left;
	}
	#loginArea{
		padding:5px;
		width:100%;
		text-align:right;
		color:white;
	}
	#menuArea{
		padding:5px;
		width:100%;
		text-align:right;
	}
	#menuBtn{
        background-color: #11264f;
        border: none;
        color: white;
        padding: 15px 30px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;	
	}
	#menuBtn:hover{
		background-color: white;
		color: #11264f;
		font-weight: bold;
	}
	#searchArea{
		white-space:nowrap;
		padding:auto;
		text-align:inline-block;
	}
	
</style>
</head>
<body>
	<c:if test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
	<c:redirect url="../"/>
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
	<div class="headerArea">
		<table id="headerTable">
			<tr>
				<td rowspan="2">
					<a href="${ pageContext.request.contextPath }/admin/admin.main">
					<img class="logoImg" src="${ pageContext.request.contextPath }/resources/images/logo.png"></a>
				</td>
				<td id="loginArea" colspan="2">
					<b>${ sessionScope.loginUser.user_name }(${ sessionScope.loginUser.email })님 환영합니다!</b>
					<button id="chatBtn" class="btn btn-xs btn-success" onclick="window.open('http://192.168.10.51:8008/sel.jsp','window_name','width=430,height=500,location=no,status=no,scrollbars=yes');">상담 창 열기</button>
					<button id="logoutBtn" class="btn btn-xs btn-danger" onclick="location.href='${ pageContext.request.contextPath }/logout.me'">Logout</button>
				</td>
				</tr>
				<tr>
				<td id="menuArea">
					<button id="menuBtn" onclick="location.href='${ pageContext.request.contextPath }/admin/memberManage.admin'">회원관리</button>
					<button id="menuBtn" onclick="location.href='${ pageContext.request.contextPath }/admin/boardManage.admin'">게시물관리</button>
					<button id="menuBtn" onclick="location.href='${ pageContext.request.contextPath }/admin/paymentManage.admin'">결제관리</button>
					<button id="menuBtn" onclick="location.href='${ pageContext.request.contextPath }/admin/statManage.admin'">통계</button>
				</td>
				</tr>
		</table>
	</div>	
	</c:if>
</body>
</html>