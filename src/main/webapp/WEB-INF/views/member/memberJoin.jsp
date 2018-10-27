<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	padding: 0 0 200px 0;
	margin: auto;
	background: #edefea;
}

#joinForm {
	margin-left: 30px;
	margin-right: 30px;
}

table, th, td {
	border: none;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

td:first-child {
	font-weight: bold;
}

.scroll {
	border: 1px solid #b3b3b3;
	padding: 15px 20px;
	height: 90px;
	overflow: auto;
	font-size: 11px;
	line-height: 17px;
}

.check {
	padding: 10px 0 27px;
}

.btnArea{
	float:right;
}
.goJoinBtn{
/* 	float:right; */
 	background-color: #ec983e; /* Green */
    border: none;
    color: white;
    padding: 14px 28px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    font-weight:bold;
    border-radius:4px;
}

.goJoinBtn:hover{
	color:#ec983e;
	background-color:white;
	font-weight:bold;
	border-radius:4px;
}
</style>
<body>

	<jsp:include page="../must/header.jsp" />
	<div class="outer">
		<div id="page" class="page">
			<div id="contents">
				<div id="joinArea">
					<div id="joinForm">
						<form action="insertMember.me" method="post">
							<br> <br> <br> <span
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
							
							<!-- 테이블 시작 -->
							<div class="inputJoinForm">
								<table style="width: 80%">
									<tr>
										<td>이름<span style="color: red">*</span></td>
										<td colspan="2"><input type="text" name="userName"
											id="userName"></td>

									</tr>
									<tr>
										<td>아이디<span style="color: red">*</span></td>
										<td><input type="text" name="email" id="email"><br><span
											style="font-size: 12px; font-weight: lighter; color: #999">※아이디는
												이메일 주소로 입력해주시기 바랍니다.</span></td>
										<td><span>ajax로 실시간 중복확인</span></td>
									</tr>
									
									<tr>
										<td>닉네임<span style="color: red">*</span></td>
										<td><input type="text" name="nickName" id="nickName"></td>
										<td><span>ajax로 실시간 중복확인</span></td>
									</tr>
									<!-- <tr>
										<td colspan="2">중복확인 후 결과 입력창</td>
									</tr> -->
									<tr>
										<td rowspan="2">비밀번호<span style="color: red">*</span></td>
										<td><input type="password" name="userPwd"
											placeholder="비밀번호" style="height: 20px;"><br><span
											style="font-size: 12px; font-weight: lighter; color: #999">※8~16자의
												영문(소문자)과 숫자만 사용할 수 있습니다.</span></td>
										<td><input type="password" name="userPwd2"
											placeholder="비밀번호 확인" style="height: 20px;"><br>&nbsp;</td>
									</tr>
									<tr>
										<td colspan="2">OK</td>
									</tr>
									<tr>
										<td>생년월일<span style="color: red">*</span></td>
										<td colspan="2"><select name="birth1"
											style="height: 22px; width: 60px;">
												<c:forEach var="i" begin="0" end="${2018-1900 }">
													<c:set var="yearOption" value="${2018-i}" />
													<option value="${yearOption }">${yearOption }</option>
												</c:forEach>
										</select> <select name="birth2" style="height: 22px; width: 60px;">
												<c:forEach var="i" begin="1" end="12">
													<c:set var="monthOption" value="${i}" />
													<option value="${monthOption}">${monthOption}</option>
												</c:forEach>
										</select> <select name="birth3" style="height: 22px; width: 60px;">
												<c:forEach var="i" begin="1" end="31">
													<c:set var="dayOption" value="${i}" />
													<option value="${dayOption}">${dayOption}</option>
												</c:forEach>
										</select></td>
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
										<td colspan="2"><select name="phoneNum1"
											style="height: 22px; width: 60px;">
												<option value="010" selected>010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> <input type="text" name="phoneNum2" placeholder=""
											style="width: 60px"> <input type="text"
											name="phoneNum3" placeholder="" style="width: 60px;">
										</td>
									</tr>
								</table>
								<!-- 테이블 끝 -->
								<br>
								<hr>
							</div>
							<br> <span
								style="text-align: left; font-weight: bold; font-size: 15px; color: gray">개인정보관련안내</span>
							<br> <br>
							<div class="scroll">
								‘트레블 메이트’는(이하 '회사'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한
								법률을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로
								이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br> 회사는
								개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다. <br> ο
								본 방침은 : 2018 년 11 월 22 일 부터 시행됩니다.<br> <br> 트래블 메이트의
								개인정보 취급방침은 다음과 같은 내용을 담고 있습니다.<br> <br> 1. 수집하는 개인정보
								항목<br> 회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
								<br> ο 수집항목<br> 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 주소
								, 휴대전화번호 , 이메일 , 주민등록번호, 접속로그, 쿠키, 결제기록, 영문명, 여권/비자 소지유무, 여권/비자
								번호,-여권/비자 만료일<br> <br> ο 수집이유<br> 이름, 로그인ID, 비밀번호
								: 서비스 이용에 따른 민원사항의 처리와 여행서비스 제공을 위한 본인 식별의 목적<br> <br>
								이름,주민등록번호,주소 : 여행서비스 제공을 위한 본인 식별의 목적 및 여행자보험 가입의 목적<br> <br>
								이메일, 자택 주소, 휴대전화번호 : 고지사항 전달, 여행서비스 상담, 불만처리, 문의처리, 예약내역의 확인 및
								상담과 배송의 목적<br> <br> 영문명, 여권/비자 소지여부, 여권/비자 번호, 여권/비자
								만료일 : 국내외항공권, 해외호텔, 국내외여행상품의 예약과 출국가능여부 파악 목적<br> <br>
								그외 선택항목(결제기록) : 결재확인 목적<br> <br> ο 개인정보 수집방법 : <br>
								홈페이지(회원가입,상품예약,메일링서비스), 경품 행사 응모 , 배송 요청 , 제휴사로부터의 제공<br> <br>
								<br> 2. 개인정보의 수집 및 이용목적<br> 회사는 수집한 개인정보를 다음의 목적을 위해
								활용합니다. <br> <br> ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>
								콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 ,
								요금추심<br> <br> ο 회원 관리<br> 회원제 서비스 이용에 따른 본인확인 ,
								개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 불만처리 등
								민원처리 , 고지사항 전달<br> <br> ο 마케팅 및 광고에 활용<br> 신규
								서비스(제품) 개발 및 특화 , 이벤트 등 광고성 정보 전달 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재
								, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계<br> <br> 3. 개인정보의 보유 및
								이용기간<br> 회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이
								파기합니다.<br> <br> 4. 개인정보의 파기절차 및 방법<br> 회사는 원칙적으로
								개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br>
								<br> ο 파기절차<br> 회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의
								DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및
								이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는
								보유되어지는 이외의 다른 목적으로 이용되지 않습니다.<br> <br> ο 파기방법 <br>
								전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br>
								종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다. <br> <br> <br>
								5. 개인정보 제공 및 공유<br> 가.회사는 회원의 「개인정보 수집 및 이용목적」을 통해 고지한 범위
								내에서 회원의 개인정보를 이용하며, 이 범위를 초과하여 이용하지 않습니다. 다만, 다음 각호의 경우에는 회사가
								각별한 주의를 기울여 회원의 개인정보를 이용하고 있습니다.<br> <br> 나.회사는 제휴사와의
								서비스 목적을 달성하기 위하여 회원의 사전동의 하에 필요한 최소한의 회원정보를 제휴사에게 제공할 수 있습니다.
								회사의 웹 페이지에 포함된 링크 또는 배너를 클릭하여 다른 사이트나 웹 페이지로 옮겨갈 경우 개인정보 취급방침은 그
								사이트 운영기관이 게시(揭示)한 방침이 적용되오니 새로 방문한 사이트의 개인정보 취급방침을 반드시 확인하시기
								바랍니다.<br> <br> 다.회사가 제휴사에게 개인정보를 제공하는 내용은 아래와 같습니다.<br>
								(1)제공받는자 : 회사와 제휴되어 있는 업체<br> (2)이용목적 : 여행예약시 본인 확인 및
								예약확인/취소등 여행상담을 위한 목적<br> (3)제공항목 : 이름, 주민번호, 연락처, 메일주소, 주소,
								출발일, 인원<br> <br> 회사는 서비스의 제공과 관련하여 취득한 회원의 신상 정보를 본인의
								동의 없이 제3자에게 누설 또는 배포하지 않으며, 상업적인 목적으로 사용하지 않습니다. 다만, 다음 각호의 경우에는
								예외로 합니다.<br> (1) 이용자들이 사전에 동의한 경우<br> (2) 서비스 제공에 따른
								요금 정산을 위하여 필요한 경우<br> (3) 통계작성ㆍ학술연구 또는 시장조사를 위하여 필요한 경우로서
								특정 개인을 알아볼 수 없는 형태로 재가공한 경우<br> (4) 법령의 규정에 의거하거나, 수사 목적으로
								법령에 정해진 절차와 방법에 따라 수사기관의요구가 있는 경우<br> <br> 6. 이용자 및
								법정대리인의 권리와 그 행사방법<br> 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할
								수 있으며 가입해지를 요청할 수도 있습니다. <br> 이용자들의 개인정보 조회,수정을 위해서는
								‘개인정보변경’(또는 ‘회원정보수정’ 등)을 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를
								거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.<br> 혹은 개인정보관리책임자에게 서면, 전화 또는
								이메일로 연락하신 후 개인확인 서류(주민등록증사본, 이메일 주소, 회원정보상의 주소 및 연락처)를 보내주시면
								지체없이 조치하겠습니다. <br> 귀하가 개인정보의 오류에대한 정정을 요청하신 경우에는 정정을 완료하기
								전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정
								처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다. <br> 회사는 이용자의 요청에
								의해 해지 또는 삭제된 개인정보는 “회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그
								외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br> <br> 7. 개인정보
								자동수집 장치의 설치, 운영 및 그 거부에 관한 사항<br> 회사는 귀하의 정보를 수시로 저장하고 찾아내는
								‘쿠키(cookie)’ 등을 운용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주
								작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 회사은(는) 다음과 같은 목적을 위해 쿠키를
								사용합니다. <br> ▶ 쿠키 등 사용 목적 <br> - 회원과 비회원의 접속 빈도나 방문 시간
								등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한
								타겟 마케팅 및 개인 맞춤 서비스 제공 <br> 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다.
								따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나,
								아니면 모든 쿠키의 저장을 거부할 수도 있습니다. <br> ▶ 쿠키 설정 거부 방법 <br> 예:
								쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를
								저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. <br> 설정방법 예(인터넷
								익스플로어의 경우) <br> : 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보 <br>
								단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.<br> <br>
								8. 개인정보에 관한 민원서비스<br> 회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기
								위하여 아래와 같이 개인정보관리책임자를 지정하고 있습니다.<br> <br> 전화번호 :
								070-123-1234<br> 이메일 : help@travelmaker.kr<br> 귀하께서는
								회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수
								있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br> <br>
								기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>
								1.개인분쟁조정위원회 (www.1336.or.kr/1336)<br> 2.정보보호마크인증위원회
								(www.eprivacy.or.kr/02-580-0533~4)<br> 3.대검찰청 인터넷범죄수사센터
								(http://icic.sppo.go.kr/02-3480-3600)<br> 4.경찰청 사이버테러대응센터
								(www.ctrc.go.kr/02-392-0330)<br>
							</div>

							<p class="check">
								<small>+ 개인정보 취급방침에 동의 하십니까?</small> <input type="checkbox"
									class="checkbox" id="privacy_ok" name="privacy_ok"><small>동의함</small>
							</p>
							<br> <span
								style="text-align: left; font-weight: bold; font-size: 15px; color: gray">이용약관</span>
								<br> <br>
							<div class="scroll">
								제 1 장 총 칙<br> 여행사 트래블 메이트 회원에 가입하시려면 다음 약관을 읽고 동의하셔야 합니다.<br>
								<br> 제 1 조 목적<br> 이 약관은 트래블 메이트(영문명 Travel Mate 이하
								"회사"라 함)이 운영하는 사이트에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 함)를 이용함에 있어 회사와
								이용자의 권리.의무, 이용조건 및 절차, 기타 필요한 책임사항을 규정함을 목적으로 합니다.<br> <br>
								제2조 약관의 명시와 개정<br> <br> 1.이 약관은 내용과 상호, 영업소 소재지, 대표자의
								성명, 사업자등록번호, 연락처 (전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 서비스를 통하여
								공시함으로써 효력이 발생합니다.<br> 2.회사는 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법,
								정보통신망이용촉진 등에 관한 법률, 방문판매 등에 관한 법률, 소비자보호법등 관련법을 위배하지 않는 범위에서 이
								약관을 개정할 수 있습니다.<br> 3.회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여
								현행약관과 함께 서비스를 통해 공지합니다.<br> 4.이 약관에서 정하지 아니한 사항과 이 약관의 해석에
								관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br> <br>
								제 3 조 용어의 정의<br> <br> 1.이용자란 트래블 메이트에 접속하여 이 약관에 따라
								트래블 레시피에서 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br> 2.회원이란 회사와 서비스
								이용계약을 체결하여 트래블 레시피에서 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br>
								3.비회원이란 회원에 가입하지 않고 서비스를 이용하는 자를 말합니다.<br> 4.운영자란 서비스의 전반적인
								관리와 원활한 운영을 위하여 회사에서 선정한 사람을 말합니다.<br> 5.본 약관에서 정의하지 않은 용어는
								개별서비스에 대한 별도 약관 및 이용규정에서 정의 합니다.<br> <br> <br> 제
								2 장 회원 가입<br> <br> 제1조 회원가입계약의 성립<br> (1)회원가입 계약은
								이용자의 회원등록 신청에 대한 회사의 이용 승낙과 이용자의 약관 내용에 대한 동의로 성립됩니다.<br>
								(2)회원에 가입하여 서비스를 이용하고자 하는 희망자는 회사에서 요청하는 개인 신상정보를 제공해야 합니다.<br>
								(3)이용자의 이용신청에 대하여 회사가 이를 승낙한 경우, 회사는 회원 ID와 기타 회사가 필요하다고 인정하는
								내용을 이용자에게 통지합니다.<br> (4)회사는 다음 각 호에 해당하는 이용계약 신청에 대하여는 이를
								승낙하지 아니 합니다.<br> 가. 다른 사람의 명의를 사용하여 신청하였을 때<br> 나. 본인의
								실명으로 신청하지 않았을 때<br> 다. 이용 계약 신청서의 내용을 허위로 기재하였을 때<br>
								라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때<br> <br> 제2조
								회원자격 탈퇴, 제한, 정지<br> <br> ①회사는 제1조의 규정에 의하여 회원자격을 탈퇴,
								제한 또는 정지하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 전자우편, 서면 또는 전화 등의 방법에 의하여
								해당 회원 또는 대리인에게 통지합니다. 다만, 회사가 긴급하게 회원의 서비스 이용을 정지할 필요가 있다고 인정하는
								경우에는 그러하지 아니합니다.<br> ②제1항에 의하여 이용제한의 통지를 받은 회원 또는 그 대리인이
								이용제한 통지에 대하여 이의가 있는 경우에는 이의신청을 할 수 있습니다.<br> ③회사는 제2항의 규정에
								의한 이의신청에 대하여 그 확인을 위한 기간까지 이용 제한을 일시 연기 할 수 있으며, 그 결과를 이용자 또는 그
								대리인에게 통지합니다.<br> ④회사는 이용제한기간 중에 그 사유가 해소된 것이 확인된 경우에는 이용제한
								조치를 즉시 해제합니다.<br> <br> <br> 제3장 서비스제공 및 이용<br>
								<br> 제1조 서비스 이용시간<br> <br> 1.서비스는 회사의 업무상 또는 기술상
								장애, 기타 특별한 사유가 없는 한 연중무휴, 1일 24시간 이용할 수 있습니다. 다만 설비의 점검 등 회사가
								필요한 경우 또는 설비의 장애, 서비스 이용의 폭주 등 불가항력 사항으로 인하여 서비스 이용에 지장이 있는 경우
								예외적으로 서비스 이용의 전부 또는 일부에 대하여 제한할 수 있습니다.<br> 2.회사는 제공하는 서비스중
								일부에 대한 서비스 이용시간을 별도로 정할 수 있으며, 이 경우 그 이용시간을 사전에 회원에게 공지 또는
								통지합니다.<br> <br> 제2조 정보의 제공 및 광고의 게재<br> <br>
								①회사는 서비스를 운용함에 있어서 \ 각종 정보를 서비스화면(홈페이지),전자우편,D/M 등에 게재하는 방법 등으로
								회원에게 제공할 수 있습니다.<br> ②회사는 서비스의 운용과 관련하여 서비스화면(홈페이지), 전자우편,
								D/M 등에 광고 등을 게재할 수 있습니다.<br> <br> 제2조 (서비스의 중단)<br>
								<br> ①.회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.<br>
								1)서비스용 설비의 보수 등 공사로 인한 부득이한 경우<br> 2)전기통신사업법에 규정된 기간통신사업자가
								전기통신서비스를 중지했을 경우<br> ②.회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스
								이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수
								있습니다.<br> <br> <br> 제3조 게시물 또는 내용물의 삭제<br> <br>
								회사는 서비스의 게시물 또는 내용물이 제4장 제1조의 규정에 위반되거나 회사 소정의 게시기간을 초과하는 경우 사전
								통지나 동의없이 이를 삭제할 수 있다.<br> <br> 제 4 장 책임<br> <br>
								제1조 회원의 의무<br> <br> 1.회원에게 부여된 아이디, 비밀번호에 관한 관리책임은
								회원에게 있습니다.<br> 2.회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br>
								3.회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 회사에 통보하고
								회사의 안내가 있는 경우에는 그에 따라야 합니다.<br> 이용자는 이 약관 및 관계법령에서 규정한 사항을
								준수하여야 합니다.<br> <br> 제2조 회사의 의무<br> <br>
								1.회사는 제3장 제1조 및 제2조에서 정한 경우를 제외하고 이 약관에서 정한 바에 따라 회원이 신청한 서비스 제공
								개시일에 서비스를 이용할 수 있도록 한다.<br> 2.회사는 이 약관에서 정한 바에 따라 계속적,
								안정적으로 서비스를 제공할 의무가 있다. 단, 부득이한 경우로 회원 개인정보의 손실이 발생했을 지라도 회사는 전혀
								책임지지 않는다.<br> 3.회사는 회원의 개인신상정보를 본인의 승낙 없이 타인에게 누설, 배포하지
								않는다. 단, 전기통신관련법령 등 관계법령에 의해 국가기관 등의 요구가 있는 경우에는 그러하지 않는다.<br>
								4.회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정되는 경우에는 즉시 처리해야 한다. 다만 즉시 처리가
								곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 한다.<br> <br> 제 5 장 계약
								탈퇴 및 서비스 이용제한<br> <br> 제 1 조 (계약탈퇴 및 서비스 이용제한)<br>
								<br> 1.회원이 이용계약을 탈퇴하고자 하는 때에는 회원 본인이 온라인을 통해 회사에 탈퇴신청을 하여야
								합니다.<br> 2.회사는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전통지없이 이용계약을
								탈퇴하거나 또는 기간을 정하여 서비스이용을 중지할 수 있습니다.<br> - 타인의 서비스 아이디(ID),
								이메일(e-mail) 및 비밀번호를 도용한 경우<br> - 서비스 운영을 고의로 방해한 경우<br>
								- 가입한 이름이 실명이 아닌 경우<br> - 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우<br>
								- 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행하는 경우<br> -
								타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우<br> - 기타 회사가 정한 이용조건에 위배되는
								경우<br> <br> 제 2 조 (이용 제한 및 해제 절차)<br> <br>
								1.회사는 제 1 조의 규정에 의하여 이용제한을 하고자 하는 경우에는 그 사유, 일시 및 기타사항을 정하여
								이메일(e-mail) 또는 기타 방법에 의하여 해당 이용자 또는 대리인에게 통지합니다. 다만, 회사가 긴급하게
								이용을 정지할 필요가 있다고 인정하는 경우에는 그러하지 아니합니다.<br> 2.제1항의 규정에 의하여
								이용정지의 통지를 받은 이용자 또는 그 대리인은 그 이용정지의 통지에 대하여 이의가 있을 때에는 이의신청을 할 수
								있습니다.<br> 3.회사는 제2항의 규정에 의한 이의신청에 대하여 그 확인을 위한 기간까지 이용정지를
								일시 연기할 수 있으며, 그 결과를 이용자 또는 그 대리인에게 통지합니다.<br> 4.회사는 이용정지 기간
								중에 그 이용정지 사유가 해소된 것이 확인된 경우에는 이용정지조치를 즉시 해제합니다.<br> <br>
								<br> <br> 제 6 장 손해배상 및 면책조항<br> <br> 제1조
								손해배상에 관한 사항<br> <br> 1.회사는 무료로 제공되는 서비스의 이용과 관련하여
								이용자에게 발생한 어떠한 손해에 관하여도 책임지지 않습니다.<br> 2.회사는 회사가 유료로 제공하는
								서비스와 관련되어 회사의 귀책사유로 발생하는 모든 손해에 관하여 관계법률이 정하는 손해배상을 해당회원에게 하여야
								합니다.<br> <br> 제2조 면책조항<br> <br> 1.회사는 천재지변
								또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br>
								2.회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.<br> 3.회사는
								회원이 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br>
								4.회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.<br>
								<br> 제3조 (분쟁해결)<br> <br> 1.회사는 이용자가 제기하는 정당한 의견이나
								불만을 반영하고 그 피해를 보상처리하기 위하여 필요한 모든 노력을 하여야 합니다.<br> 2.회사는
								이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는
								이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br> 3.회사와 이용자간에 발생한 분쟁은
								전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.<br>
								<br> 제 4 조 (관할법원)<br> 1.서비스의 이용으로 발생한 분쟁에 대해 소송이 제기될
								경우 회사의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.<br> <br> [부칙]<br>
								<br> (시행일) 본 약관은 2018년 11월 22일부터 시행합니다.<br>
							</div>
							<p class="check"><small>+ 이용약관에 동의 하십니까?</small> <input type="checkbox" class="checkbox" id="agree_ok" name="agree_ok"><small>동의함</small></p>
							<br>
							<br>

							<div class="btnArea">

							<button type="submit" class="goJoinBtn" id="joinBtn">회원가입</button>
							&nbsp;&nbsp;
							<button type="reset" class="goJoinBtn" id="cancelJoinBtn">가입취소</button>
							
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../must/footer.jsp" />
</body>
</html>