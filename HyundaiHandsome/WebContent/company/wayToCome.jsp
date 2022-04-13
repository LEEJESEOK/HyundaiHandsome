<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>한섬 ｜ HANDSOME Corp.</title>
	    <meta name="description" content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬"/>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
	    <link rel="stylesheet" href="${contextPath}/css/font.css">
	    <link rel="stylesheet" href="${contextPath}/css${contextPath}_common.css">
	    <link rel="stylesheet" href="${contextPath}/css${contextPath}_style.css">
	    <link rel="stylesheet" href="${contextPath}/css/swiper.min.css">
	    <script src="${contextPath}/js/bootstrap.js"></script>
	    <script src="${contextPath}/js/cmmn.js"></script>
	    <script src="${contextPath}/js/jquery-3.5.1.min.js"></script>
	    <script src="${contextPath}/js/swiper.min.js"></script>
	    <script src="${contextPath}/js/js.js"></script>
		<link rel="icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${contextPath}/images/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="${contextPath}/images/favicon-16x16.png" sizes="16x16" type="image/png">
	</head>
	<body>
		<div class="wrap">
<%@ include file="../header.jsp"%>		
			<!--  container -->
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="/ko/company/aboutHandsome.do">COMPANY</a></li>
							<li class="breadcrumb-item"><a href="/ko/company/wayToCome.do">오시는 길</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>오시는 길</span>
					</h2>
					<div class="section box"> <!-- 섹션 1 -->
						<div class="mapArea">
							<h3 class="tit_subH3">한섬빌딩</h3>
							<div class="hs-row mt30">
								<div class="col-md col-md-6">

									<img src="${contextPath}/company/images/thumbs/company-cont-5.jpg" alt="">

								</div>
							</div>
							<div class="mapInfo">
								<ul>
									<li><strong>주소</strong><br>(우)06013 서울특별시 강남구 도산대로 523</li>
									<li><strong>대표번호</strong><br><strong>TEL</strong> 1800-5700 / <strong>FAX</strong> 02-6078-2856</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->

						<a href="/ko/company/ethicalMgmt01.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>윤리경영</span></div>
						</a>

						<a href="/ko/company/aboutHandsome.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>ABOUT 한섬</span></div>
						</a>
					</div>
					<!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				</div>
			</div>
			<!-- // container -->
	<%@ include file="../footer.jsp"%>
	</div> <!-- div-wrap END -->
</body>
</html>