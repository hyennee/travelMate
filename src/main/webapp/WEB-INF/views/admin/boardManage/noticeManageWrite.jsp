<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd HH:mm:ss' var="nowDate"/>

<!DOCTYPE html>
<html>
<head>
<!-- Include external CSS. -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
 
<!-- Include Editor style. -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_style.min.css" rel="stylesheet" type="text/css" />

<!-- CSS rules for styling the element inside the editor such as p, h1, h2, etc. -->
<link href="../css/froala_style.min.css" rel="stylesheet" type="text/css" />

<!-- Include external JS libs. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
	 
<!-- Include Editor JS files. -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/js/froala_editor.pkgd.min.js"></script>

<meta charset="UTF-8">
<title></title>
<style>
.headerMenu {
	padding: 20px;
	margin-bottom: 20px;
	border: 0px solid #bcbcbc;
}

.leftMenu {
	padding: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 0px solid #bcbcbc;
}

.lowerPage {
	width: 95%;
	text-align: center;
}

table th {
	text-align: center;
}

#searchCondition {
	text-align: inline-block;
	height: 33px;
	width: 120px;
}
</style>
</head>
<body>
	<c:if
		test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
		<c:redirect url="../" />
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
		<div class="headerMenu">
			<jsp:include page="../../admin/common/header.jsp" />
		</div>
		<div class="leftMenu">
			<jsp:include page="sideMenu.jsp" />
		</div>
		<div class="lowerPage">
			<h2>
				<span class="label label-primary">공지사항작성</span>
			</h2>
		<div class="table-responsive">
		<form action="${ pageContext.request.contextPath }/admin/noticeManageWriteConfirm.admin" method="POST">
				<table class="table table-bordered">
					<tbody>
							<tr>
									<td style="text-align: left;"><b>제목</b> <input type="text" name="title" size="100"/></td>
							</tr>
							<tr>
							<td>		
									<input type="hidden" name="writer" value="${ sessionScope.loginUser.user_no }"/>
									<div class="fr-view" style="margin: auto;">
										<!-- Create a tag that we will use as the editable area. -->
										<!-- You can use a div tag as well. -->
										<textarea name="content"></textarea>
									</div>
									<button type="submit" class="btn btn-sm btn-info">확인</button>
									<button type="button" class="btn btn-sm btn-danger" onclick="location.href='${ pageContext.request.contextPath }/admin/noticeManageMain.admin'">취소</button>
								</td>
							</tr>
					</tbody>
				</table>
						</form>
			</div>
		</div>
				<!-- Initialize the editor. -->
		<script>
			$(function() {
				$('textarea').froalaEditor()
			});

			$('textarea').froalaEditor({
				theme : 'red',
				imageUploadURL : 'http://i.froala.com/upload',
				fileUploadURL : 'http://i.froala.com/upload',
				charCounterMax : 600
			});
		</script>
	</c:if>
</body>
</html>