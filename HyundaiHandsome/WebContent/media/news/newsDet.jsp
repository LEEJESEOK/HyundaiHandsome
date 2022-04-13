<!-- 
작성자 : 고석준
설명   :	 News 상세 정보 페이지 jsp 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, media.news.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/ko_common.css">
    <link rel="stylesheet" href="../css/ko_style.css">
    <link rel="stylesheet" href="../css/swiper.min.css">
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/cmmn.js"></script>
   
    <script src="../js/swiper.min.js"></script>
    <!-- <script src="../js/js.js"></script> -->
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
					href="${contextPath }/media/newsList.do">News</a></li>
			</ol>
		</div>
		<h2 class="hs-row tit_page tit-bg-none">
			<span><em class="f_jost">News</em></span>
		</h2>
		<br>
		<!-- NewsDet 부분  -->
		<div class="section box">
			<div class="hs-row" id="brandview">
				<div class="viewHead">
					<span>${requestScope.newsDet.title }</span>
					<div class="data">${requestScope.newsDet.createDate }</div>
				</div>
				<div class="viewBody">
					<div>
						<p>&nbsp;</p>
						<div align style>
							<p><img src="${contextPath}${requestScope.newsDet.uri}${requestScope.newsDet.image_id}"></p>
						</div>
						${requestScope.newsDet.content } <!-- 기사 내용이 Html으로 이뤄져 있어서 단순 삽입하였다. -->
					</div>
				</div>
			</div>
			<!-- 페이지 이동 부 -->
			<div class="hs-row box page_pager">
				<ul class="pager">
					<li class="prev">
						<a href="${contextPath }/media/newsDet.do?newsId=${requestScope.newsDet.prevId}">${requestScope.newsDet.prevTitle }</a>
					</li>
					<li class="next">
						<a href="${contextPath }/media/newsDet.do?newsId=${requestScope.newsDet.nextId}">${requestScope.newsDet.nextTitle }</a>
					</li>
					<li class="goList">
						<a href="${contextPath }/media/newsList.do">
							<span>= </span> LIST
						</a>
					</li>
				</ul>
			</div>
			<form name="listForm" id="listForm" method="get"></form>
		</div>


	</div>
</div>
<%@ include file="/footer.jsp"%>

    </div>
</body>
</html>