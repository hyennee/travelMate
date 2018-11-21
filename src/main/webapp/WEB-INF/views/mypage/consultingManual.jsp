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
#image_section{
	width:200px;
	height: 200px;
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
			<h2>나의 컨설팅 메뉴얼</h2>
			<hr />
			<div >
			<script type="text/javascript">
				function readURL(input) {
				    if (input.files && input.files[0]) {
				        var reader = new FileReader();
				 
				        reader.onload = function (e) {
				            $('#image_section').attr('src', e.target.result);
				        }
				 
				        reader.readAsDataURL(input.files[0]);
				    }
				}
			</script>
			<form action="insertProfile.me" method="post" encType="multipart/form-data">
				<label>제목</label><input type="text" value="${ result.TITLE }" name = "title"><br>
				<label>내용</label><input type="text" value="${ result.CONTENT }" name = "content"><br>
				<label>프로필사진</label><br>
				<img alt="" src="${contextPath}/resources/images/profile/${result.fileName}.png" id="image_section"><br>
				<input type="file" name="FILE_PATH" id="form_file" class="form-control" onchange="readURL(this);"><br><br>
				<input type="submit" value="수정">
				<input type="reset" value="취소">
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


