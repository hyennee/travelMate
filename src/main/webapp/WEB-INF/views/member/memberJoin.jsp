<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
#joinArea {
	width: 100%;
	height: 1000px;
	margin: auto;
	background: #edefea;
}

#joinForm {
	margin-left: 30px;
	margin-right: 30px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

td:first-child {
	font-weight: bold
}
;
</style>
<body>

	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="joinArea">
					<div id="joinForm">
						<form action="insertMember.me" method="post">
							<br> <br> <span
								style="text-align: left; font-weight: bold; font-size: 24px; color: black">회원가입</span>
							<br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: #999">회원가입을
								위한 페이지입니다.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								입력항목 중에 <span style="color: red">*</span> 표시가 있는 것은 반드시 입력해주십시오.
							</span> <br> <span
								style="text-align: left; font-weight: bold; font-size: 12px; color: black">·
								허위로 작성된 정보일 경우 승인이 보류되거나 계정의 임의로 삭제처리 될 수 있습니다.</span>
							<hr>
							<span
								style="text-align: left; font-weight: bold; font-size: 17px; color: black">기본정보</span>
							<hr>
							<div class="inputJoinForm">
								<table style="width: 80%">
									<tr>
										<td>이름<span style="color: red">*</span></td>
										<td colspan="2"><input type="text" name="userName"
											id="userName"></td>

									</tr>
									<tr>
										<td rowspan="2">아이디<span style="color: red">*</span></td>
										<td><input type="text" name="userId" id="userId"></td>
										<td><button>중복확인</button></td>
									</tr>
									<tr>
										<td colspan="2">중복확인 후 입력창</td>
									</tr>
									<tr>
										<td rowspan="2">닉네임<span style="color: red">*</span></td>
										<td><input type="text" name="nickName" id="nickName"></td>
										<td><button>중복확인</button></td>
									</tr>
									<tr>
										<td colspan="2">중복확인 후 결과 입력창</td>
									</tr>
									<tr>
										<td rowspan="2">비밀번호<span style="color: red">*</span></td>
										<td><input type="password" name="userPwd"
											placeholder="비밀번호"></td>
										<td><input type="password" name="userPwd2"
											placeholder="비밀번호 확인"></td>
									</tr>
									<tr>
										<td colspan="2">일치하는 지 비교 후 결과 입력창</td>
									</tr>
									<tr>
										<td>생년월일<span style="color: red">*</span></td>
										<td colspan="2">입력 안했을 시 각각은 alert창으로</td>
									</tr>
									<tr>
										<td>성별<span style="color: red">*</span></td>
										<td colspan="2"><input type="radio" name="gender"
											value="M" id="male"><label for="male"> 남성 </label> <input
											type="radio" name="gender" value="F" id="female"><label
											for="female"> 여성 </label></td>
									</tr>
									<tr>
										<td>휴대전화<span style="color: red">*</span></td>
										<td colspan="2">
										<select name="phoneNum1" style="height:22px; width:60px;">
												<option value="---">---</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>
										<input type="text" name="phoneNum2" placeholder="" style="width:60px">
											<input type="text" name="phoneNum3" placeholder="" style="width:60px;">
									 </td>
									</tr>
								</table>
							</div>
							<br>
							
							<br>
							<button id="joinBtn">회원가입</button> &nbsp;<button id="cancelJoinBtn">가입취소</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>