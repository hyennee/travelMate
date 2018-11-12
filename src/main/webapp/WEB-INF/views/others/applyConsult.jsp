<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/travelMate/resources/css/bootstrap.min.css" type="text/css">
<style>
.outer {
	width: 960px;
	margin: auto;
}
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../must/header.jsp" />
	<div align="center" id="contents">
	<form action="insertConsultApply.others" method="post" encType="multipart/form-data">
		<input type="hidden" name="USER_NO"
			value="${ sessionScope.loginUser.user_no }">
		<div class="outer" style="margin:auto;">
			<br>
			<br> <img src="/travelMate/resources/images/consult.jpg"
				style="width: 700px; height: 260px;">
			<div class="row">

				<div class="col-sm-6 designer-text">
					<br class="visible-xs"> <br>
					<br>
					<br> 트레블메이트의 여행디자이너는<br> 자기만의 관심사와 특색을 가진 각 분야의 전문가입니다. <br>
					<br> 와인, 골프, 미술 등 여행의 테마가 될 수 있는 어떤 분야라도<br> 경험이 풍부한
					사람이라면<br> 자신의 재능을 살려 여행을 디자인할 수 있습니다.<br> <br>
					<br> 디자인한 여행은 트레블메이트의 특색 있는 여행상품이 되어<br> 함께 여행을 떠날 수 있는
					기회를 만들고<br> 공동의 수익 모델이 됩니다.<br> <br>
					<br> <strong>이제, 여행 디자이너는 1인 브랜드입니다.</strong>
				</div>

			</div>
			<hr>


			<div
				style="background-color: #f5f5f5; padding-top: 30px; padding-left: 15px;">
				<div id="st-write" class="container">

					<div class="row">
						<div class="col-sm-4 col-xs-5 col-xs-v12">
							<div class="form-group" style="text-align:left">
								<label for="form_email">이메일(아이디)</label> <input type="text"
									name="form_email" id="form_email"
									value="${ sessionScope.loginUser.email }" class="form-control"
									readonly>
							</div>
							<div class="form-group" style="text-align:left">
								<label for="name">성함</label> <input type="text" name="name"
									id="name" value="${ sessionScope.loginUser.user_name }"
									class="form-control" readonly>
							</div>
							<div class="form-group" style="text-align:left">
								<label for="form_phone">휴대전화</label> <input type="text"
									name="form_phone" id="form_phone"
									value="${ sessionScope.loginUser.phone }" class="form-control"
									placeholder="상담받으실 수 있는 전화번호">
							</div>


							<hr class="visible-xs-v">
						</div>

						<div class="col-sm-8 col-xs-7 col-xs-v12" style="width: 525px;">
							<div class="form-group" style="text-align:left">
								<label for="form_job">직업</label> <input type="text" name="JOB"
									id="form_job" value="" class="form-control"
									placeholder="(건축가), (여행작가), (대학생), (프랑스 파리에서 예술 전공 중) 등">
							</div>
							<div class="form-group" style="text-align:left">
								<label for="form_intro">자기소개</label>
								<textarea name="INFO" id="form_intro" class="form-control"
									style="height: 120px;"
									placeholder="(여행디자이너 활동에 직간접적으로 관련된 활동 중심)"></textarea>
							</div>
							<div class="form-group" style="text-align:left">
								<label for="form_exp">주요 여행경험</label>
								<textarea name="TRAVEL_EXP" id="form_exp" class="form-control"
									style="height: 120px;"
									placeholder="(2013년 3개월간 유럽 무전여행), (2011-2012년 아르헨티나 거주 및 여행) 등"></textarea>
							</div>
							<div class="form-group" style="text-align:left">
								<label for="content">여행상품 아이디어</label>
								<textarea name="IDEA" id="content" class="form-control"
									style="height: 250px;"
									placeholder="(여행 컨셉, 여행 제목, 주요 타겟, 주요 일정) 등"></textarea>
								<input type="hidden" name="html" value="TEXT">
							</div>
							<div class="form-group" style="text-align:left">
								<label for="form_etc">특이사항</label> <input type="text" name="ETC"
									id="form_etc" value="" class="form-control" placeholder="">
							</div>
							<div class="form-group" style="text-align:left">
								<label for="form_file">증빙자료</label>
								<input type="file" name="FILE" id="form_file" class="form-control">
							</div>
						</div>
					</div>


				</div>
				<div class="bottombox" style="text-align: center;">
					<button id="submitPost" type="submit"
						class="btn btn-lg btn-squared btn-contrast" onclick=""
						style="background: #eb983e;">신청하기</button>
					<button id="cancel" type="reset"
						class="btn btn-lg btn-squared btn-contrast"
						style="background: #eb983e;">취소하기</button>
				</div>
			</div>
		</div>
		</form>
	</div>
		<!-- Footer -->
		<jsp:include page="../must/footer.jsp" />
</body>
</html>