<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<style>
	.input
	{
		width:900px;
		margin-top:10px;
		border:1px solid lightgray;
		border-radius:5px;
		height:30px;
	}
	input[type=number]::-webkit-inner-spin-button, 
	input[type=number]::-webkit-outer-spin-button {
	
	-webkit-appearance: none;
	
	margin: 0;
	
	}
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function check(){
		var money = ${ sessionScope.loginUser.cybermoney };
		
		if(money<2000){
			alert("사이버머니 잔액이 부족합니다");
		}else{
			$('#myFrom') 
			.attr('action','insertConsultRequest.others') 
			.submit();
		}
	}

</script>
</head>
<body>
	<jsp:include page="../must/header.jsp" />
	
	<form action="insertConsultRequest.others" method="post" id="myFrom">
	<input type="hidden" name="REQUEST_USER_NO" value="${ sessionScope.loginUser.user_no}"">
	<input type="hidden" name="CONSULT_USER_NO" value="${user_no}"">
	<div id="contents" class="full-container">
		<div style="width: 960px; margin: auto; background: white;">
			<br>
			<div style="width: 900px; margin: auto;">
				<div>
					<h1 style="text-align:left;">다이렉트 컨설팅 신청</h1><hr>
				</div>
				<div>
					<span>> 이름</span><br>
					<input type="text" class="input" value="${ sessionScope.loginUser.user_name}" readonly>
					<br><br>
					<span>> 연락처</span><br>
					<input type="text" class="input" value="${ sessionScope.loginUser.phone }" readonly>
					<br><br>
					<span>> 이메일</span><br>
					<input type="email" class="input" value="${ sessionScope.loginUser.email }" readonly>
				</div>
				<br><hr>
				<div>
					<span>> 여행목적</span>
					<input type="text" class="input" name="TRAVEL_PURPOSE" placeholder="(개인여행), (가족여행), (허니문)">
					<br><br>
					<span>> 여행인원</span>
				</div>
				<div style="margin-top:10px;">
					<div style="width:170px; display:inline-block;">
						<span>성인</span>
						<br>
						<select name="ADULT_NUM" style="margin-top:10px; width:130px; height:30px; border:1px solid lightgray; border-radius:5px;">
							<option value="0">0명</option>
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
							<option value="10">10명 이상</option>
						</select>
					</div>
					<div style="width:170px; display:inline-block;">
						<span>어린이(만 12세 미만)</span>
						<br>
						<select name="CHILD_NUM" style="margin-top:10px; width:130px; height:30px; border:1px solid lightgray; border-radius:5px;">
							<option value="0">0명</option>
							<option value="1">1명</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
							<option value="9">9명</option>
							<option value="10">10명 이상</option>
						</select>
					</div>
					<br><br>
					<div>
						<span>> 여행지역</span><br>
						<input type="text" class="input" name="TRAVEL_AREA" placeholder="(북유럽), (아프리카), (와칸다)">
						<br><br>
						<span>> 여행일자</span><br>
						<input type="date" name="TRAVEL_START_DATE" style="height:30px; border:1px solid lightgray; border-radius:5px; margin-top:10px;">&nbsp;~&nbsp;
						<input type="date" name="TRAVEL_END_DATE" style="height:30px; border:1px solid lightgray; border-radius:5px; margin-top:10px;">
						<br><br>
						<span>> 1인당 예산 규모</span><br>
						<input type="number"  style="width: 170px;"autocomplete="off" class="input" name="BUDGET" placeholder="만원 단위로 입력해주세요">
						
						<br><br>
						<span>> 기타 특이사항</span><br>
						<textarea name="ETC" style="border:1px solid lightgray; border-radius:5px; margin-top:10px;" placeholder="하고 싶은 말을 적어주세요.
ex) 오로라 여행 테마를 원해요." cols="126" rows="20"></textarea>
					</div>
				</div>
			</div>
			<br>
			<div style="width:960px; margin:auto;" align="center">
				<button type="button" onclick="check();" style="background:skyblue; border:none; border-radius:5px; height:45px; color:white; font-size:16px; font-weight:bold;cursor: pointer;"><img src="${ contextPath }/resources/images/check.png" style="width:15px; height:15px;">&nbsp;접수하기</button>
			</div>
			<br>
		</div>
	</div>
	</form>
	<jsp:include page="../must/footer.jsp" />
	
</body>
</html>