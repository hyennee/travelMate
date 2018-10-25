<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/w3.css" >
<!-- #EC983E -->
<style>
.outer {
	width: 960px;
	margin: auto;
}

.mySlides {
	display: none;
}

.photoZone{
	max-width:800px; 
	position:relative; 
	text-align:center; 
	display: inline-block;
}

.w3-btn-floating:hover{
	cursor:pointer;
}

.mainboard{
	overflow:hidden;
	text-align:center;
}

.mainboardbox{
    float: left;
    width: 295px;
    margin: 12px;
    margin-bottom: 50px;

}

.mainboardbox-title{
    text-align: center;
    font-size: 22px;
    margin-bottom: 12px;
    letter-spacing: -1px;
}

a{
	text-decoration:none;
}
</style>
</head>
<body>

		<jsp:include page="header.jsp"/>
	<div class="outer">
		<div id="page" class="page">
			<div id="contents" style="text-align:center;">
				<div id="adbox">
					<div class="w3-content" >
						<div class="w3-display-container mySlides">
							<img src="/travelMate/resources/images/1.jpg" style="width: 100%;">
							<div
								class="w3-display-topright w3-large w3-container w3-padding-hor-16 w3-black">
								Trolltunga, Norway</div>
						</div>

						<div class="w3-display-container mySlides">
							<img src="/travelMate/resources/images/2.jpg" style="width: 100%;">
							<div
								class="w3-display-topright w3-large w3-container w3-padding-hor-16 w3-black">
								Northern Lights, Norway</div>
						</div>

						<div class="w3-display-container mySlides">
							<img src="/travelMate/resources/images/3.jpg" style="width: 100%;">
							<div
								class="w3-display-topright w3-large w3-container w3-padding-hor-16 w3-black">
								Beautiful Mountains</div>
						</div>

						<div class="w3-display-container mySlides">
							<img src="/travelMate/resources/images/4.jpg" style="width: 100%;">
							<div
								class="w3-display-topright w3-large w3-container w3-padding-hor-16 w3-black">
								The Rain Forest</div>
						</div>

						<div class="w3-display-container mySlides">
							<img src="/travelMate/resources/images/5.jpg" style="width: 100%;">
							<div
								class="w3-display-topright w3-large w3-container w3-padding-hor-16 w3-black">
								Mountains!</div>
						</div>

						<a class="w3-btn-floating w3-hover-dark-grey" style="position: absolute; top: 66%; left: 0; font-size:30px;"
							onclick="plusDivs(-1)">❮</a> 
							<a class="w3-btn-floating w3-hover-dark-grey" style="position: absolute; top: 66%; right: 0; font-size:30px;"
							onclick="plusDivs(1)">❯</a>

					</div>
				</div>


			</div>
			<br><br><br><br><br><br><br><br>

			<div class="traveltheme">
				<div class="mainboard">
					<h1>추천테마여행</h1>
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">컨설팅 후기</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/4.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">트래블레시피에서 미팅 컨설팅을 진행했습니다. 너무나도 깔끔한 미팅룸에서 컨설턴트님과 진행된 맞춤형 ...</a>
						</div>
					</div>
					
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">여행후기</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/5.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">트래블레시피에서 미팅 컨설팅을 진행했습니다. 너무나도 깔끔한 미팅룸에서 컨설턴트님과 진행된 맞춤형 ...</a>
						</div>
					</div>
					
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">공지사항</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/2.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">금요일 업무 종료시간이 오후 5시로 변경됩니다.</a>
						</div>
					</div>
				</div>

			</div>
			
			<div class="section">
				<div class="mainboard">
					<h1>트레블메이트</h1>
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">컨설팅 후기</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/1.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">트래블레시피에서 미팅 컨설팅을 진행했습니다. 너무나도 깔끔한 미팅룸에서 컨설턴트님과 진행된 맞춤형 ...</a>
						</div>
					</div>
					
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">여행후기</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/2.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">트래블레시피에서 미팅 컨설팅을 진행했습니다. 너무나도 깔끔한 미팅룸에서 컨설턴트님과 진행된 맞춤형 ...</a>
						</div>
					</div>
					
					<div class="mainboardbox">
						<div class="mainboardbox-title">
							<a href="#" target="_blank">공지사항</a>
						</div>
						
						<div class="mainboardbox-img">
							<a href="#" target="_blank"><img src="/travelMate/resources/images/3.jpg" width="280px;" height="200px;"></a>
						</div>
						<div class="mainboardbox-subtitle">
							<a href="#" target="_blank">금요일 업무 종료시간이 오후 5시로 변경됩니다.</a>
						</div>
					</div>
				</div>

			</div>
	</div>

		<jsp:include page="footer.jsp"/>


	<script>
		//이동용
		var slideIndex = 1;
		showDivs(slideIndex);
		//자동변환용
		var myIndex = 0;
		carousel();
		
		//이동용1
		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		//이동용2
		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			if (n > x.length) {
				slideIndex = 1;
			}
			if (n < 1) {
				slideIndex = x.length;
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
				
			}
			x[slideIndex - 1].style.display = "block";
		}
		
		//자동변환용1
		function carousel() {
		    var i;
		    var x = document.getElementsByClassName("mySlides");
		    for (i = 0; i < x.length; i++) {
		       x[i].style.display = "none";  
		    }
		    myIndex++;
		    if (myIndex > x.length) {myIndex = 1}    
		    x[myIndex-1].style.display = "block";  
		    setTimeout(carousel, 5000); // 5초당

		}

	</script>
</body>
</html>