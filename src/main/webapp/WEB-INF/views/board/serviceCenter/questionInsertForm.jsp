<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Include Editor style. -->
<!-- <link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.min.css' rel='stylesheet' type='text/css' />
<link href='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_style.min.css' rel='stylesheet' type='text/css' /> -->
 
<!-- Include JS file. -->
<!-- <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/js/froala_editor.min.js'></script> -->

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


<style>
	.title
	{
		width:800px;
		display:table-cell;
		vertical-align:middle;
		text-align:left;
	}
	.content
	{
		width:800px;
		text-align:left;
	}
	.answer-content
	{
		width:800px;
		text-align:left;
		background:#E7E7E7;
		border:none;
		border-radius:5px;
	}
</style>
</head>
<body>
	<jsp:include page="../../must/header.jsp"/>
	<div class="full-container">
		<div style="width:960px; margin:auto; background:white;" align="center">
		<br>
			<div style="margin:auto; width:800px;">
				<div class="title" style="height:40px; background:#E7E7E7; border:none; border-radius:5px;">
					<div style="display:inline-block; border:none; border-radius:5px; margin-left:5px;">
						<label style="font-size:14px; height:35px;">img</label>
						<label style="font-size:14px; height:35px;">제    목</label>
					</div>
					<div style="display:inline-block;">
						<input type="text" name="title" style="width:700px; height:25px; border:none; border-radius:5px;">
					</div>
				</div>
				<hr style="border:1px dotted lightgray;">
				<div class="title" style="height:20px;">
					<span style="font-weight:bold; font-size:14px;">TravelMaker</span>
					<span>&nbsp;|&nbsp;</span>
					<span style="font-size:14px;"><img src="${ contextPath }/resources/images/clock.png" style="width:25px; height:25px;">&nbsp; 2018-10-25</span>
				</div>
				<hr>
				<div class="fr-view" style="width:800px; margin:auto;">
					<!-- Create a tag that we will use as the editable area. -->
				    <!-- You can use a div tag as well. -->
				    <textarea>
				    </textarea>
				</div>
				<hr>
				<div>
					<button type="button" style="background:#E7E7E7; border:none; border-radius:5px; height:35px;">취소</button>
					<button type="submit" style="background:skyblue; border:none; border-radius:5px; height:35px; color:white; font-size:16px; font-weight:bold;"><img src="${ contextPath }/resources/images/check.png" style="width:25px; height:25px;">확인</button>
				</div>
				<br>
			</div>
		</div>
		<br>
	</div>
	<br>
	<jsp:include page="../../must/footer.jsp"/>
	
	<!-- Initialize the editor. -->
    <script>
    	$(function() { $('textarea').froalaEditor() });
	</script>
</body>
</html>