<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="icon" type="image/png" href="/travelMate/resources/images/logo.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<title>Make your own travel! - TravelMate</title>
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
td{
	border-bottom: 1px solid lightgray;
}

.thstyle{
	width : 200px;
	background-color : lightgray;
	text-align:center;
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
			<h2>문의내역</h2>
			<hr />
			<div >
						<p>문의내역리스트</p>
						<p> - 문의하시려면 상단바의 고객센터를 이용해주세요.</p>
						<form action="selectOneByOneBoard.bo" method="post">
						<table id="QnAList" width="100%" class="table table-bordered table-hover text-center">
								<tr >
									<th class="thstyle">no</th>
									<th class="thstyle">제목</th>
									<th class="thstyle">작성자</th>
									<!-- <th class="thstyle">답변여부</th> -->
									<th class="thstyle">작성일시</th>
								</tr>
								<c:forEach var="size" items="${ oneByOne }" >
								<tr style="cursor:pointer;" onclick="detail('${ size.BOARD_NO}')" >
									<td>
										${ size.BOARD_NO}
										<input type="hidden" name="boardNo" value="${ size.BOARD_NO}" />
									</td>
									<td>${ size.TITLE}</td>
									<td>${ size.NICK_NAME}</td>
									<%-- <td><c:if test="${ size.STATUS eq 'Y'}" >답변</c:if>
									<c:if test="${ size.STATUS eq 'N'}" >미응답</c:if></td> --%>
									<td>${ size.BOARD_DATE}</td>
								</tr>
								</c:forEach>
							</table>
						</form>
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>


	<jsp:include page="../must/footer.jsp" />
	<script>
	
	function detail(boardNo){
		
		
		location.href="selectOneByOneBoard.bo?boardNo=" + boardNo;
		
		
	}
		
	/* 
	
	$(function()
		{
			$("#QnAList").children().click(function(){
						
							var boardNo = $(this).children("input[name='boardNo']").val();
							
							
							location.href="selectOneByOneBoard.bo?boardNo=" + boardNo;
				
// 				location.href =  "selectOneByOneBoard.bo?boardNo="+${size.board}
				
			})
		}); */
	
	</script>
</body>
</html>


