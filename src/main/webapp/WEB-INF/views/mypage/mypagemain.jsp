<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="/travelMate/resources/images/logo.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/logoIcon.ico" />
<title>Make your own travel! - TravelMate</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
	border: 0px solid #bcbcbc;
}

td {
	border: 0px solid #bcbcbc;
}

.section {
	border: 0px solid #bcbcbc;
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
.thstyle{
	background-color : lightgray;
}
</style>

<script>
  $('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
</script>
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
			<h2>나의 페이지</h2>
			<hr />
			<div class="section">
			
			<div role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
    <li role="presentation"><a href="#money" aria-controls="money" role="tab" data-toggle="tab">Money</a></li>
    <li role="presentation"><a href="#qna" aria-controls="qna" role="tab" data-toggle="tab">Q&A</a></li>
    <li role="presentation"><a href="#consulting" aria-controls="consulting" role="tab" data-toggle="tab">Consulting</a></li>
    <li role="presentation"><a href="#openconsulting" aria-controls="openconsulting" role="tab" data-toggle="tab">Open Consulting</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="profile">
    <p>내계정</p>
    <p> - 더 보시려면 좌측메뉴에서 서비스관리를 이용해주세요.</p>
							<table class="table">
								<tr>
									<td class="thstyle">이름</td>
									<td colspan="2">
									<c:out value="${ sessionScope.loginUser.user_name }"></c:out></td>
								</tr>
								<tr>
									<td class="thstyle">닉네임</td>
									<td colspan="2">
										<c:out value="${ sessionScope.loginUser.nick_name }"></c:out>
									</td>
								</tr>
								<tr>
									<td class="thstyle">연락처</td>
									<td><c:out value="${ sessionScope.loginUser.phone }"></c:out></td>
									<td><input type="button" value="정보수정" /></td>
								</tr>
								<tr>
									<td class="thstyle">가입일</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.enroll_date }"></c:out></td>
								</tr>

								<tr>
									<td class="thstyle">보유 적립금</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.cybermoney }"></c:out>원</td>
								</tr>
		
							</table>
    </div>
    
    
    <div role="tabpanel" class="tab-pane" id="money">
    <p>사이버머니 내역</p>
    <p> - 더 보시려면 좌측메뉴에서 서비스관리를 이용해주세요.</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">구분</th>
									<th class="thstyle">금액</th>
									<th class="thstyle">내역일시</th>
								</tr>
								
								<c:forEach var="size" items="${ cyberMoney }" >
									
								
									<tr>
										<td>${ size.CYBERMONEY_RECORD_NO }</td>
										<td>${ size.CHANGE_REASON }</td>
										<td>${ size.CHANGE_MONEY }원</td>
										<td>${ size.RECORD_DATE }</td>

								</tr>
								</c:forEach>
							</table>
    </div>
    
    <div role="tabpanel" class="tab-pane" id="qna">
    <p>상담문의내역</p>
    <p> - 더 보시려면 좌측메뉴에서 서비스관리를 이용해주세요.</p><p> - 문의하시려면 상단바의 고객센터를 이용해주세요.</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">제목</th>
									<th class="thstyle">작성일시</th>
								</tr>
								<c:forEach var="size" items="${ oneByOne }" >
								<tr>
									<td>${ size.BOARD_NO}</td>
									<td>${ size.TITLE}</td>
									<td>${ size.BOARD_DATE}</td>
									
								</tr>
								</c:forEach>
							</table>
    </div>
    
    <div role="tabpanel" class="tab-pane" id="consulting">
    <p>다이렉트컨설팅</p>
    <p> - 더 보시려면 좌측메뉴에서 서비스관리를 이용해주세요.</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">컨설팅제목</th>
<!-- 									<th class="thstyle">컨설턴트</th> -->
									<th class="thstyle">여행시작일자</th>
									<th class="thstyle">여행종료일자</th>
								</tr>
								<c:forEach var="size" items="${ tradeInfo }" >
									<tr>
										
										<td>${ size.CONSULT_REQUEST_NO }</td>
										<td>${ size.TRAVEL_PURPOSE }</td>
<%-- 										<td>${ size.CONSULT_USER_NO }</td> --%>
										<td>${ size.TRAVEL_START_DATE}</td>
										<td>${ size.TRAVEL_END_DATE }</td>
									</tr>
								</c:forEach>
							</table>
    </div>
    
    <div role="tabpanel" class="tab-pane" id="openconsulting">
    <p>오픈컨설팅</p>
    <p> - 더 보시려면 좌측메뉴에서 서비스관리를 이용해주세요.</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">오픈컨설팅신청제목</th>
									<th class="thstyle">작성자</th>
<!-- 									<th class="thstyle">카테고리</th> -->
<!-- 									<th class="thstyle">상태</th> -->
								</tr>
								<c:forEach var="size" items="${ openConsulting }" >
									<tr>
										
										<td>${ size.BOARD_NO }</td>
										<td>${ size.TITLE }</td>
										<td>${ size.NICK_NAME }</td>
<%-- 										<td>${ size.CATEGORY}</td> --%>
<%-- 										<td>${ size.STATUS }</td> --%>
									</tr>
								</c:forEach>
							</table>
						
    </div>
  </div>

</div>


<!-- 				tab말고 기본으로 보여주려면 아래 소스 쓰셈 -->
			<%-- 
				<table class="table">
					<tr>
						<td class="tdsection" style="vertical-align:top; ">
						<p>내계정</p>
							<table class="table">
								<tr>
									<td class="thstyle">이름</td>
									<td colspan="2">
									<c:out value="${ sessionScope.loginUser.user_name }"></c:out></td>
								</tr>
								<tr>
									<td class="thstyle">닉네임</td>
									<td colspan="2">
										<c:out value="${ sessionScope.loginUser.nick_name }"></c:out>
									</td>
								</tr>
								<tr>
									<td class="thstyle">연락처</td>
									<td><c:out value="${ sessionScope.loginUser.phone }"></c:out></td>
									<td><input type="button" value="정보수정" /></td>
								</tr>
								<tr>
									<td class="thstyle">가입일</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.enroll_date }"></c:out></td>
								</tr>

								<tr>
									<td class="thstyle">보유 적립금</td>
									<td colspan="2"><c:out
											value="${ sessionScope.loginUser.cybermoney }"></c:out>원</td>
								</tr>
		
							</table>
						</td>
						<td class="tdsection">
							<p>사이버머니 내역</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">구분</th>
									<th class="thstyle">금액</th>
									<th class="thstyle">내역일시</th>
								</tr>
								
								<c:forEach var="size" items="${ cyberMoney }" >
									
								
									<tr>
										<td>${ size.CYBERMONEY_RECORD_NO }</td>
										<td>${ size.CHANGE_REASON }</td>
										<td>${ size.CHANGE_MONEY }원</td>
										<td>${ size.RECORD_DATE }</td>

								</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
					<tr>
						<td class="tdsection">
							<p>1:1문의내역</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">제목</th>
									<th class="thstyle">작성일시</th>
								</tr>
								<c:forEach var="size" items="${ oneByOne }" >
								<tr>
									<td>${ size.BOARD_NO}</td>
									<td>${ size.TITLE}</td>
									<td>${ size.BOARD_DATE}</td>
									
								</tr>
								</c:forEach>
							</table>
						</td>
						<td class="tdsection">
							<p>다이렉트컨설팅</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">컨설팅제목</th>
									<th class="thstyle">컨설턴트</th>
									<th class="thstyle">여행시작일자</th>
									<th class="thstyle">여행종료일자</th>
								</tr>
								<c:forEach var="size" items="${ tradeInfo }" >
									<tr>
										
										<td>${ size.CONSULT_REQUEST_NO }</td>
										<td>${ size.TRAVEL_PURPOSE }</td>
										<td>${ size.CONSULT_USER_NO }</td>
										<td>${ size.TRAVEL_START_DATE}</td>
										<td>${ size.TRAVEL_END_DATE }</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
					<tr>
						<td class="tdsection">
						<p>오픈컨설팅</p>
							<table class="table">
								<tr>
									<th class="thstyle">no</th>
									<th class="thstyle">오픈컨설팅신청제목</th>
									<th class="thstyle">작성자</th>
									<th class="thstyle">카테고리</th>
									<th class="thstyle">상태</th>
								</tr>
								<c:forEach var="size" items="${ openConsulting }" >
									<tr>
										
										<td>${ size.BOARD_NO }</td>
										<td>${ size.TITLE }</td>
										<td>${ size.NICK_NAME }</td>
										<td>${ size.CATEGORY}</td>
										<td>${ size.STATUS }</td>
									</tr>
								</c:forEach>
							</table>
						
						</td>
					</tr>
				</table>
				
				 --%>
			</div>
			<br />
		</div>

		<div id="jb-footer">
		</div>

	</div>



	<jsp:include page="../must/footer.jsp" />
</body>
</html>


