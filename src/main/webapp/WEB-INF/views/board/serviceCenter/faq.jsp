<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make your own travel! - TravelMate</title>
<link rel="icon" type="image/png" href="/travelMate/resources/images/flight.png" />
<link rel="icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<link rel="shortcut icon" type="image/x-icon" href="/travelMate/resources/images/flightIcon.ico" />
<style>
	/* Style the buttons that are used to open and close the accordion panel */
	.accordion
	{
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
	<c:if test="${ !empty sessionScope.loginUser }">
	<jsp:include page="../../must/header.jsp"/>
	<div id="contents" class="full-container">
		<div style="margin:auto; width:960px; background:white;">
			<div style="width:800px; margin:auto;">
				<span style="color:#B4B4FF; font-size:16px; font-weight:bold;">자주 묻는 질문</span>
			</div>
			<hr style="border:2px solid lightgray; width:800px;">
			<div class="page-container" style="margin:auto; width:960px;">
				<div class="FAQ-container" style="margin:auto; width:800px;">
					<button class="accordion">TravelMate는 왜 차별화된 여행사인가요?</button>
					<div class="panel">
					  <p>TravelMate는 몇 명의 상품기획자가 여행상품을 만들지 않습니다. 여행PD, 작가, 기자, 예술가, 사진가 등
					  자신만의 방법으로 세계를 여행한 각 분야의 다양한 전문가들이 자신의 경험과 전문분야를 살려 여행을 디자인합니다.<br>
					 TravelMate는 상업적으로 유명한 관광지에만 집중하지 않습니다. 단체관광이나 개별여행의 틀에 얽매이지도 않습니다.
					 사진 몇 장만 찍고 바삐 돌아서는 '관광'이 아니라 깊이 있는 테마와 이야기의 '여행'을 만들고, 회원컨설턴트와 그들의
					 여행에 가슴 떨리는 여행자들을 잇는 커뮤니티-TravelMate가 특별한 이유입니다.</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">TravelMate 상품에는 쇼핑옵션이 얼마나 포함되어 있나요?</button>
					<div class="panel">
					  <p>지금까지와는 다른 여행을 기획하고 진행하는 TravelMate는 'No 쇼핑 옵션, No 가이트 팁이라는 원칙을 갖고 있습니다.<br>
					  TravelMate가 디자인한 모든 상품은 고객이 원치 않는 쇼핑을 강요하지 않으며 별도의 팁을 추후에 따로 요청하지도 않습니다.</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">영어를 잘 못하는데 자유여행을 할 수 있을까요?</button>
					<div class="panel">
					  <p>TravelMate 자유여행은 영어를 잘 못하시는 분들도 현지에서 숙박만큼은 문제가 없도록 숙소를 미리 예약하고 공항픽업을 지원하는 방식으로 진행하고 있습니다(일부 상품 제외).<br>
					  물론 영어를 잘한다면 더 편리하게 더 풍성한 여행을 할 수 있겠지요. 하지만 여행이 꼭 유창한 영어나 현지어 구사를 요구하는 것은 아닙니다.<br>
					  도전하는 마음, 더 안전하게 더블체크할 각오가 되어있다면 충분히 자유롭고 풍요로운 여행이 될 것입니다.</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">TravelMate 현금결제와 카드결제는 어떻게 하죠? 어떤 혜택이 있죠?</button>
					<div class="panel">
					  <p>예약비의 경우에는 현금결제만이 가능합니다. 잔금의 경우 현금결제와 카드결제가 모두 가능하며, 카드로 잔금 결제를 원하실 경우 TravelMate 사무실을 방문해주시기 바랍니다.<br>
					  방문이 어려울 시 전화문의 해 주시면 이메일을 통해 진행하실 수 있도록 안내해드립니다. TravelMate는 현금할인 프로모션 등 각 상품에 따라 다양한 혜택을 지원하고 있습니다.<br>
					  향후 카드사와의 프로모션과 이벤트는 점진적으로 늘려갈 예정입니다.</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">TravelMate 여행상품의 취소, 환불 규정은 어떻게 되나요?</button>
					<div class="panel">
					  <p>TravelMate 여행상품의 취소시점은 본사 주식회사 TravelMate의 업무시간을 기준으로 합니다. 업무 시간은 주중 오전10시부터 오후 7시까지이며 주말 및 공휴일은 휴무입니다.<br>
					  TravelMate의 모든 여행상품은, 기획여행 상품으로 대한민국 표준약관 외에 특별약관이 적용됩니다. 기획여행의 경우 고객의 예약금 납부 후 요청사항에 맞추어 즉시 전세계의 호텔과 항공예약을 시작합니다.<br>
					  따라서 위 계약사항을 취소할 경우에 발생하는 위약금의 책임은 고객에게 있습니다. 예약금은 입금 날짜를 기준으로 7일 이전까지 100% 환불 가능하며, 이후에는 환불이 불가합니다.<br>
					  총액에 대한 환불규정은 다음과 같습니다. 여행출발 3주 (21일 전까지 모객이 되지 않을 경우, 여행 전체금액 (예약금과 잔금)은 전액 환불 됩니다.<br>
						- 예약금 입금 후 7일 이후 ~ 여행 23일 전까지 취소할 경우 75% 환불<br>
						- 여행 22일 전 ~ 15일 전까지 취소할 경우 50% 환불<br>
						- 여행 14일 전 ~ 1일 전까지 취소할 경우 30% 환불<br>
						- 여행 당일 취소 및 환불 불가</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
					
					<button class="accordion">회원컨설턴트는 무엇이고 어떻게 될 수 있죠?</button>
					<div class="panel">
					  <p>TravelMate 회원컨설턴트는 자신의 풍성하고 풍요로운 여행경험을 바탕으로 TravelMate의 여행상품을 직접 기획하는 사람들입니다. PD, 여행작가, 예술가, 요리사 등 다양한 회원컨설턴트들이 지 금 이 순간 TravelMate와 함께 작업하고 있습니다.<br>
					  자신만의 여행 스토리와 노하우를 가지고 계신가요? 지금 TravelMate에 노크해주세요.<br>
					  메인 상단메뉴 > [회원컨설턴트] 클릭 > 화면 우측 중간에 [회원컨설팅신청]을 통해 지원</p>
					</div>
					<div class="panel-blank" style="height:10px;">
					</div>
				</div>
			</div>
			<br>
<%-- 			<div class="paging-container" style="margin:auto; width:960px;" align="center">
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
			<br> --%>
		</div>
		<br>
	</div>
	<jsp:include page="../../must/footer.jsp"/>
	</c:if>
	<c:if test="${ empty sessionScope.loginUser }">
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