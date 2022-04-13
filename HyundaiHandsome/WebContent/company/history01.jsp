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
							<li class="breadcrumb-item"><a href="/ko/company/history01.do">COMPANY</a></li>
							<li class="breadcrumb-item"><a href="/ko/company/history01.do">연혁</a></li>
							<li class="breadcrumb-item"><a href="/ko/company/history01.do">2012 ~ 현재</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>연혁</span>
						<!-- <img src="${contextPath}/images/thumbs/company-bg-.jpg" alt="연혁"> -->
					</h2>
					<div class="section box"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li class="on"><a href="/ko/company/history01.do">2012 ~ 현재</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/company/history02.do">1987 ~ 2011</a></li>
							</ul>
						</div>

						<div class="hs-row clear yearArea">
							<div class="col-md">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_1.jpg" alt="">
							</div>
							<div class="col-r">
								<ul class="yearList">
									<li>
										<p><strong>2020</strong></p>
										<ul>
											<li><span>2020.09</span>HANDSOME HAUS F/X 오픈 (청주)</li>
											<li><span>2020.05</span>모바일 편집숍 EQL 오픈</li>
											<li><span>2020.01</span>THE HANDSOME HAUS 오픈(제주)</li>
										</ul>
									</li>
									<li>
										<p><strong>2019</strong></p>
										<ul>
											<li><span>2019.10</span>한섬, 현대G&F 합병 </li>
											<li><span>2019.05</span>주거밀착형 컨셉 스토어 THE HANDSOME HAUS 오픈(광주)</li>
											<li><span>2019.01</span>SYSTEM, SYSTEM HOMME 파리 컬렉션 Presentation 진행</li>
											<li><span>2019.01</span>한섬, 한섬글로벌 합병</li>
										</ul>
									</li>
									<li>
										<p><strong>2018</strong></p>
										<ul>
											<li><span>2018.03</span>TOMMY HILFIGER SHOES 수입브랜드 전개</li>
											<li><span>2018.02</span>3.1 PHILLIP LIM 수입브랜드 전개</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="hs-row clear yearArea">
							<div class="col-md">
								<ul class="yearList">
									<li>
										<p><strong>2017</strong></p>
										<ul>
											<li><span>2017.11</span>ROCHAS 수입브랜드 전개</li>
											<li><span>2017.02</span>SK 네트웍스 패션부문 인수 (한섬글로벌, 현대 G&amp;F)</li>
											<li><span>2017.02</span>FOURM THE STORE 여성 영캐주얼 편집숍 오픈</li>
										</ul>
									</li>
									<li>
										<p><strong>2016</strong></p>
										<ul>
											<li><span>2016.09</span>FOURM ATELIER 여성 잡화 편집숍 오픈</li>
											<li><span>2016.08</span>LÄTT 브랜드 런칭</li>
											<li><span>2016.08</span>FOURM MEN’S LOUNGE 남성 잡화 편집숍 오픈</li>
											<li><span>2016.08</span>FOURM STUDIO 여성 컨템포러리 편집숍 오픈</li>
											<li><span>2016.08</span>MYRIAM SCHAEFER 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2015</strong></p>
										<ul>
											<li><span>2015.10</span>더한섬닷컴 온라인스토어 오픈</li>
											<li><span>2015.09</span>LANVIN COLLECTION ACCESSORY 브랜드 런칭</li>
											<li><span>2015.06</span>EACH x OTHER 수입브랜드 전개</li>
											<li><span>2015.04</span>BIRD by JUICY COUTURE 브랜드 런칭</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="col-r">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_2.jpg" alt="">
							</div>
						</div><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/ko_common.css">
    <link rel="stylesheet" href="./css/ko_style.css">
    <link rel="stylesheet" href="./css/swiper.min.css">
    <script src="./js/bootstrap.js"></script>
    <script src="./js/cmmn.js"></script>
    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="./js/swiper.min.js"></script>
    <script src="./js/js.js"></script>
						<div class="hs-row clear yearArea mb50">
							<div class="col-md">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_3.jpg" alt="">
							</div>
							<div class="col-r">
								<ul class="yearList">
									<li>
										<p><strong>2014</strong></p>
										<ul>
											<li><span>2014.10</span>the CASHMERE 브랜드 런칭</li>
											<li><span>2014.09</span>BELLSTAFF 수입브랜드 전개</li>
											<li><span>2014.08</span>LANVIN SPORT 브랜드 런칭</li>
											<li><span>2014.08</span>MM6 수입브랜드 전개</li>
											<li><span>2014.03</span>TOM GREYHOUND Paris 오픈</li>
											<li><span>2014.03</span>JIMMY CHOO 수입브랜드 전개</li>
											<li><span>2014.03</span>THE KOOPLES 수입브랜드 전개</li>
											<li><span>2014.02</span>DÉCKE 브랜드 런칭</li>
											<li><span>2014.02</span>BALLY 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2013</strong></p>
										<ul>
											<li><span>2013.08</span>IRO 수입브랜드 전개</li>
											<li><span>2013.05</span>ELEVENTY 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2012</strong></p>
										<ul>
											<li><span>2012.01</span>JUICY COUTURE 수입브랜드 전개</li>
											<li><span>2012.01</span>현대백화점 그룹에 인수</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>

					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="/ko/company/ceoMessage.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>CEO 메시지</span></div>
						</a>

						<a href="/ko/company/ethicalMgmt01.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>윤리경영</span></div>
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