<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>travelMate Admin Stats Page</title>
<style>
.headerMenu {
	padding: 20px;
	margin-bottom: 20px;
	border: 0px solid #bcbcbc;
}

.leftMenu {
	padding: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	float: left;
	border: 0px solid #bcbcbc;
}

.lowerPage {
	float: left;
	display: inline-block;
	text-align: center;
	padding: 10px;
}

.table {
	text-align: left;
}

.table-responsive {
	text-align: inline-block;
	float: left;
}

#lineOne {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#lineTwo {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#lineThree {
	width: 100%;
	padding: 10px;
	display: inline-block;
}

#recentBoardListDiv {
	width: 80%;
}

.table-responsive th {
	text-align: center;
}
</style>
</head>
<body>
	<c:if
		test="${ empty sessionScope.loginUser or sessionScope.loginUser.user_type ne 'ADMIN'}">
		<c:redirect url="../" />
	</c:if>
	<c:if test="${ sessionScope.loginUser.user_type eq 'ADMIN' }">
		<div class="headerMenu">
			<jsp:include page="../../admin/common/header.jsp" />
		</div>
		<div class="leftMenu" style="width:150px">
			
		</div>
		<div class="lowerPage">
			<h3 style="text-align: left;">
				<b>통계 대시보드</b>
			</h3>
			<hr style="float: left; width: 85%;">
			<div id="lineOne">
    <!--Table and divs that hold the pie charts-->
    <table class="columns">
      <tr>
        <td><div id="Sarah_chart_div" style="border: 1px solid #ccc"></div></td>
        <td><div id="Anthony_chart_div" style="border: 1px solid #ccc; margin-left:10px;"></div></td>
        <td><div id="Anthony_chart_div2" style="border: 1px solid #ccc; margin-left:10px;"></div></td>
      </tr>
    </table>
			</div>
			<div id="lineTwo">
			</div>
			<!-- 차후 기능 추가를 위한 영역 -->
			<div id="lineThree">
			</div>
			<hr style="float: left; width: 85%;">
		</div>
	<!-- 구글 차트 로드용 스크립트 -->	
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load Charts and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Draw the pie chart for Sarah's pizza when Charts is loaded.
      google.charts.setOnLoadCallback(drawSarahChart);

      // Draw the pie chart for the Anthony's pizza when Charts is loaded.
      google.charts.setOnLoadCallback(drawAnthonyChart);
      google.charts.setOnLoadCallback(drawAnthonyChart2);
      // Callback that draws the pie chart for Sarah's pizza.
      function drawSarahChart() {

        // Create the data table for Sarah's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['${memberRatio[0].TYPE}', ${memberRatio[0].COUNT}],
          ['${memberRatio[1].TYPE}', ${memberRatio[1].COUNT}],
        ]);

        // Set options for Sarah's pie chart.
        var options = {title:'회원 비율',
                       width:400,
                       height:300};

        // Instantiate and draw the chart for Sarah's pizza.
        var chart = new google.visualization.PieChart(document.getElementById('Sarah_chart_div'));
        chart.draw(data, options);
      }

      // Callback that draws the pie chart for Anthony's pizza.
      function drawAnthonyChart() {

        // Create the data table for Anthony's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', '가입자수');
        data.addRows([
        	['${memberEnroll[6].DA}', ${memberEnroll[6].COUNT}],
        	['${memberEnroll[5].DA}', ${memberEnroll[5].COUNT}],
        	['${memberEnroll[4].DA}', ${memberEnroll[4].COUNT}],
        	['${memberEnroll[3].DA}', ${memberEnroll[3].COUNT}],
        	['${memberEnroll[2].DA}', ${memberEnroll[2].COUNT}],
        	['${memberEnroll[1].DA}', ${memberEnroll[1].COUNT}],
        	['${memberEnroll[0].DA}', ${memberEnroll[0].COUNT}]
        ]);

        // Set options for Anthony's pie chart.
        var options = {title:'일별 가입자수',
                       width:400,
                       height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.ColumnChart(document.getElementById('Anthony_chart_div'));
        chart.draw(data, options);
      }
      // Callback that draws the pie chart for Anthony's pizza.
      function drawAnthonyChart2() {

        // Create the data table for Anthony's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', '매출액');
        data.addRows([
        	['${month[6].MONTH}', ${month[6].SUM}],
        	['${month[5].MONTH}', ${month[5].SUM}],
        	['${month[4].MONTH}', ${month[4].SUM}],
        	['${month[3].MONTH}', ${month[3].SUM}],
        	['${month[2].MONTH}', ${month[2].SUM}],
        	['${month[1].MONTH}', ${month[1].SUM}],
        	['${month[0].MONTH}', ${month[0].SUM}]
        ]);

        // Set options for Anthony's pie chart.
        var options = {title:'월별 매출액',
                       width:400,
                       height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.ColumnChart(document.getElementById('Anthony_chart_div2'));
        chart.draw(data, options);
      }
    </script>
	</c:if>
</body>
</html>