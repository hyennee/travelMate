<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.input
	{
		width:900px;
		margin-top:10px;
		border:1px solid lightgray;
		border-radius:5px;
		height:30px;
	}
</style>
</head>
<body>
	<jsp:include page="../must/header.jsp" />
	<br><br><br>
	<div class="full-container">
		<div style="width: 960px; margin: auto; background: white;">
			<br>
			<div style="width: 900px; margin: auto;">
				<div>
					<h1 style="text-align:left;">다이렉트 컨설팅 신청</h1><hr>
				</div>
				<div>
					<span>> 이름</span><br>
					<input type="text" class="input" name="userName" value="홍길동" readonly>
					<br><br>
					<span>> 연락처</span><br>
					<input type="text" class="input" name="phone" value="010-0000-0000" readonly>
					<br><br>
					<span>> 이메일</span><br>
					<input type="email" class="input" name="email" value="hong123@kh.or.kr" readonly>
				</div>
				<br><hr>
				<div>
					<span>> 여행목적</span>
					<input type="text" class="input" name="purpose" placeholder="(개인여행), (가족여행), (허니문)">
					<br><br>
					<span>> 여행인원</span>
				</div>
				<div style="margin-top:10px;">
					<div style="width:170px; display:inline-block;">
						<span>성인</span>
						<br>
						<select style="margin-top:10px; width:130px; height:30px; border:1px solid lightgray; border-radius:5px;">
							<option>0명</option>
							<option>1명</option>
							<option>2명</option>
							<option>3명</option>
							<option>4명</option>
							<option>5명</option>
							<option>6명</option>
							<option>7명</option>
							<option>8명</option>
							<option>9명</option>
							<option>10명 이상</option>
						</select>
					</div>
					<div style="width:170px; display:inline-block;">
						<span>청소년</span>
						<br>
						<select style="margin-top:10px; width:130px; height:30px; border:1px solid lightgray; border-radius:5px;">
							<option>0명</option>
							<option>1명</option>
							<option>2명</option>
							<option>3명</option>
							<option>4명</option>
							<option>5명</option>
							<option>6명</option>
							<option>7명</option>
							<option>8명</option>
							<option>9명</option>
							<option>10명 이상</option>
						</select>
					</div>
					<div style="width:170px; display:inline-block;">
						<span>어린이(만 12세 미만)</span>
						<br>
						<select style="margin-top:10px; width:130px; height:30px; border:1px solid lightgray; border-radius:5px;">
							<option>0명</option>
							<option>1명</option>
							<option>2명</option>
							<option>3명</option>
							<option>4명</option>
							<option>5명</option>
							<option>6명</option>
							<option>7명</option>
							<option>8명</option>
							<option>9명</option>
							<option>10명 이상</option>
						</select>
					</div>
					<br clear="both"><br>
					<div>
						<span>> 여행지역</span><br>
						<input type="text" class="input" name="location" placeholder="(북유럽), (아프리카), (와칸다)">
						<br><br>
						<span>> 여행일자</span><br>
						<input type="date" name="startDate" style="height:30px; border:1px solid lightgray; border-radius:5px; margin-top:10px;">&nbsp;~&nbsp;
						<input type="date" name="endDate" style="height:30px; border:1px solid lightgray; border-radius:5px; margin-top:10px;">
						<br><br>
						<span>> 1인당 예산 규모</span><br>
						<input type="text" class="input" name="budget" placeholder="(180만원 이하), (항공료 제외 100~120만원)">
						<br><br>
						<span>> 기타 특이사항</span><br>
						<textarea style="border:1px solid lightgray; border-radius:5px; margin-top:10px;" placeholder="하고 싶은 말을 적어주세요.
ex) 오로라 여행 테마를 원해요." cols="126" rows="20"></textarea>
					</div>
				</div>
			</div>
			<br>
			<div style="width:960px; margin:auto;" align="center">
				<button type="submit" style="background:skyblue; border:none; border-radius:5px; height:45px; color:white; font-size:16px; font-weight:bold;"><img src="${ contextPath }/resources/images/check.png" style="width:15px; height:15px;">&nbsp;접수하기</button>
			</div>
			<br>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>