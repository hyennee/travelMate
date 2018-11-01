<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* Style the buttons that are used to open and close the accordion panel */
	.accordion
	{
	    background-color: #eee;
	    color: #444;
	    cursor: pointer;
	    padding: 18px;
	    width: 100%;
	    text-align: left;
	    border: none;
	    border-radius:5px;
	    outline: none;
	    transition: max-height 0.2s ease-out;
	}
	
	/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
	.active, .accordion:hover
	{
	    background-color: skyblue;
	}
	
	/* Style the accordion panel. Note: hidden by default */
	.panel
	{
	    padding: 0 18px;
	    background-color: white;
	    max-height: 0;
	    overflow: hidden;
	    transition: max-height 0.2s ease-out;
	    border:none;
	    border-radius:5px;
	}
	.accordion:after
	{
	    content: '\02795'; /* Unicode character for "plus" sign (+) */
	    font-size: 13px;
	    color: #777;
	    float: right;
	    margin-left: 5px;
	}
	
	.active:after
	{
	    content: "\2796"; /* Unicode character for "minus" sign (-) */
	}
	.page-button
	{
		background:white;
		border:1px solid #E6E6E6;
		border-radius:5px;
		width:25px;
		height:25px;
	}
	.page-button:hover
	{
		cursor:pointer;
	}
</style>
</head>
<body class="body">
	<c:if test="${ !empty loginUser }">
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container" style="background:#EC983E;">
		<div style="margin:auto; width:960px; background:white;">
			<div style="width:800px; margin:auto;">
				<span style="color:#B4B4FF; font-size:16px; font-weight:bold;">자주 묻는 질문</span>
			</div>
			<hr style="border:2px solid lightgray; width:800px;">
			<div class="page-container" style="margin:auto; width:960px;">
				<div class="FAQ-container" style="margin:auto; width:800px;">
					<button class="accordion">Section 1</button>
					<div class="panel">
					  <p>Lorem ipsum...</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">Section 2</button>
					<div class="panel">
					  <p>Lorem ipsum...</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">Section 3</button>
					<div class="panel">
					  <p>Lorem ipsum...</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
				</div>
			</div>
			<br>
			<div class="paging-container" style="margin:auto; width:960px;" align="center">
				<div>
					<button type="button" class="page-button"><</button>&nbsp;
					<button type="button" class="page-button">1</button>
					&nbsp;<button type="button" class="page-button">></button>
				</div>
			</div>
			<br>
			<div class="search-container" style="margin:auto; width:960px;" align="center">
				<div>
					<select style="height:25px; border:1px solid lightgray; border-radius:5px;">
						<option>제목</option>
						<option>작성자</option>
						<option>내용</option>
					</select>
					&nbsp;&nbsp;
					<input type="search" style="width:400px; height:25px; border:1px solid lightgray; border-radius:5px;">
					<img src="${ contextPath }/resources/images/search-btn.PNG" style="width:25px; height:25px; border:1px solid lightgray; border-radius:5px;">
				</div>
			</div>
			<br>
		</div>
		<br>
	</div>
	<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty loginUser }">
		<c:set var="msg" value="로그인이 필요한 서비스입니다." scope="request"/>
		<jsp:forward page="../../must/errorPage.jsp"/>
	</c:if>
	
	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++)
		{
			acc[i].addEventListener("click", function()
			{
				this.classList.toggle("active");
				
				var panel = this.nextElementSibling;
				
				if (panel.style.maxHeight)
				{
					panel.style.maxHeight = null;
				}
				else
				{
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			});
		}
	</script>
</body>
</html>