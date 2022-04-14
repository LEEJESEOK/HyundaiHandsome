<!-- 
작성자 : 고석준
설명   : 관리자 페이지에서 볼 수 있는 차트 화면 jsp 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, media.news.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="now" value="<%=new java.util.Date() %>" />
<!DOCTYPE html>
<html lang="en">
<head>
   	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>한섬 ｜ HANDSOME Corp.</title>
    <meta name="description" content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬"/>
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    <link rel="stylesheet" href="${contextPath}/css/font.css">
    <link rel="stylesheet" href="${contextPath}/css/ko_common.css">
    <link rel="stylesheet" href="${contextPath}/css/ko_style.css">
    <link rel="stylesheet" href="${contextPath}/css/swiper.min.css">
    <script src="${contextPath}/js/bootstrap.js"></script>
    <script src="${contextPath}/js/cmmn.js"></script>
    <script src="${contextPath}/js/jquery-3.5.1.min.js"></script>
    <script src="${contextPath}/js/swiper.min.js"></script>
    <script src="${contextPath}/js/js.js"></script>
	<link rel="icon" href="${contextPath}/images/common/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="${contextPath}/images/common/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="${contextPath}/images/common/apple-touch-icon.png" sizes="180x180" />
	<link rel="icon" href="${contextPath}/images/common/favicon-32x32.png" sizes="32x32" type="image/png" />
	<link rel="icon" href="${contextPath}/images/common/favicon-16x16.png" sizes="16x16" type="image/png" />
    <script src="https://www.gstatic.com/charts/loader.js"></script>
	  <script>
	    google.charts.load('current', {packages: ['corechart']});
	    google.charts.setOnLoadCallback(drawChart);
	
	    function drawChart() {
	    	console.log('fddsfsd');
	      //시즌별 collection 수
	      var data = new google.visualization.DataTable();
	      
	      var rowslist = new Array();
	      <c:forEach items="${collectionBySeason}" var="item">
	      	var list = new Array();
	      	list.push("${item.statCd}");
	      	list.push(${item.count});
	      	
	      	
	      	rowslist.push(list);
	      </c:forEach>
	      data.addColumn('string', 'collection');
	      data.addColumn('number', '참가 브랜드 수');
	      data.addRows(rowslist);
	
	      // Instantiate and draw the chart.
	      var chart = new google.visualization.BarChart(document.getElementById('barchart_div'));
	      var options1 = {
   			  title: '시즌별 콜렉션 수 통계',
   			  subtitle: 'made by ksj',
   		  
	      }
	      chart.draw(data, options1);
	      
	      //시즌별 collection 수
	      var data2 = new google.visualization.DataTable();
	      
	      var rowslist2 = new Array();
	      <c:forEach items="${brandByName}" var="item2">
	      	var list2 = new Array();
	      	list2.push("${item2.statCd}");
	      	list2.push(${item2.count});
	      	
	      	rowslist2.push(list2);
	      </c:forEach>
	      data2.addColumn('string', 'collection');
	      data2.addColumn('number', 'Collection 수');
	      data2.addRows(rowslist2);
	
	      // Instantiate and draw the chart.
	      var chart2 = new google.visualization.ColumnChart(document.getElementById('barchart_div2'));//세로형
	      var options2 = {
    			  title: "브랜드별 콜렉션 수 통계",
    			  subtitle: "made by ksj",
	      }
	      chart2.draw(data2, options2);
	    }
	  </script>
</head>
<body>
    <div class="wrap">
<%@ include file="/header.jsp"%>

<div id="contents" class="container" style="padding-top: 80px;">
	<div class="page-body-wrapper">
		<div class="hs-row box">
			<ol class="breadcrumb col-r">
				<li class="breadcrumb-item"><a href="${contextPath }/main.do">HOME</a></li>
				<li class="breadcrumb-item"><a
					href="${contextPath }/media/newsList.do">MEDIA</a></li>
				<li class="breadcrumb-item"><a
					href="${contextPath }/media/newsList.do">Chart</a></li>
			</ol>
		</div>
		<h2 class="hs-row tit_page tit-bg-none">
			<span><em class="f_jost">Chart</em></span>
		</h2>
		<br>
		<!-- NewsDet 부분  -->
		<div class="section box">
			<div class="hs-row" id="chartview">
				<div class="viewHead">
					<span>Chart</span>
					<div class="data"><c:set var="nowDate"><fmt:formatDate value="${now}" pattern="yyyy.MM.dd" /> 기</c:set></div>
				</div>
				<div class="viewBody">
					<div id="barchart_div" style="border: 1px solid #ccc; height: 600px;">
						
					</div>
					<div id="barchart_div2" style="border: 1px solid #ccc; height: 600px;">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="/footer.jsp"%>

    </div>
</body>
</html>