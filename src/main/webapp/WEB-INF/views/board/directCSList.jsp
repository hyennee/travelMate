<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/travelMate/resources/css/style.css" type="text/css">
<style>
	.outer{
		width:960px;
		margin:auto;
	}
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../must/header.jsp"/>
<div class="outer">	
	<div id="contents">
			<div id="blogs">
				<ul>
					<li>
						<img src="/test/resources/images/default-pic.png" alt="Img" height="144" width="140">
						<div>
							<span class="time">Posted on 12/12/12</span>
							<h4>요긴 1:1상담쪽으로</h4>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus fermentum elit. Suspendisse potenti. Cras eget nibh lacus. In egestas semper facilisis. Suspendisse placerat venenatis leo, at ornare sem vestibulum a. Aliquam erat volutpat. Praesent varius suscipit quam nec pretium.
							</p>
							<a href="insertDirectForm.me">Read more &gt;&gt;</a>
						</div>
					</li>
					<li>
						<img src="/test/resources/images/default-pic.png" alt="Img" height="144" width="140">
						<div>
							<span class="time">Posted on 12/12/12</span>
							<h4>Blog Title One Example Title</h4>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus fermentum elit. Suspendisse potenti. Cras eget nibh lacus. In egestas semper facilisis. Suspendisse placerat venenatis leo, at ornare sem vestibulum a. Aliquam erat volutpat. Praesent varius suscipit quam nec pretium.
							</p>
							<a href="insertDirectForm.me">Read more &gt;&gt;</a>
						</div>
					</li>
					<li>
						<img src="/test/resources/images/default-pic.png" alt="Img" height="144" width="140">
						<div>
							<span class="time">Posted on 12/12/12</span>
							<h4>Blog Title One Example Title</h4>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus fermentum elit. Suspendisse potenti. Cras eget nibh lacus. In egestas semper facilisis. Suspendisse placerat venenatis leo, at ornare sem vestibulum a. Aliquam erat volutpat. Praesent varius suscipit quam nec pretium.
							</p>
							<a href="insertDirectForm.me">Read more &gt;&gt;</a>
						</div>
					</li>
					<li>
						<img src="/test/resources/images/default-pic.png" alt="Img" height="144" width="140">
						<div>
							<span class="time">Posted on 12/12/12</span>
							<h4>Blog Title One Example Title</h4>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus fermentum elit. Suspendisse potenti. Cras eget nibh lacus. In egestas semper facilisis. Suspendisse placerat venenatis leo, at ornare sem vestibulum a. Aliquam erat volutpat. Praesent varius suscipit quam nec pretium.
							</p>
							<a href="insertDirectForm.me">Read more &gt;&gt;</a>
						</div>
					</li>
				</ul>
				<div class="pagination">
					<ul>
						<li>
							<a href="/test/views/others/blog.jsp" class="prev">&lt;&lt;</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">First</a>
						</li>
						<li class="selected">
							<a href="/test/views/others/blog.jsp">1</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">2</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">3</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">4</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">5</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">6</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">7</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">8</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">9</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">10</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">11</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">12</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">13</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">14</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">15</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">16</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">17</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">18</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">19</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">20</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp">Last</a>
						</li>
						<li>
							<a href="/test/views/others/blog.jsp" class="next">&gt;&gt;</a>
						</li>
					</ul>
				</div>
				<!-- /.pagination -->
			</div>
			<!-- /#blogs -->
			<!-- <ul id="categories">
				<li>
					<img src="/test/resources/images/gear.png" alt="Img" height="53" width="60">
					<h3>Froibrush Title One</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu ante in enim hendrerit lobortis sit amet eget magna. Fusce tincidunt, dolor ut tempor
					</p>
					<a href="/test/index.jsp" class="select">Select</a>
				</li>
				<li>
					<img src="/test/resources/images/graph.png" alt="Img" height="53" width="60">
					<h3>Froibrush Title One</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu ante in enim hendrerit lobortis sit amet eget magna. Fusce tincidunt, dolor ut tempor
					</p>
					<a href="/test/index.jsp" class="select">Select</a>
				</li>
				<li>
					<img src="/test/resources/images/globe.png" alt="Img" height="53" width="60">
					<h3>Froibrush Title One</h3>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu ante in enim hendrerit lobortis sit amet eget magna. Fusce tincidunt, dolor ut tempor
					</p>
					<a href="/test/index.jsp" class="select">Select</a>
				</li>
			</ul> -->
			<!-- /#categories -->
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="../must/footer.jsp"/>


</body>
</html>