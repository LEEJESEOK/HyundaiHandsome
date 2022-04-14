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
	</head>
	<body>
		<div class="wrap">
			<%@ include file="../header.jsp"%>
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="${contextPath}/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/history01.do">COMPANY</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/history01.do">연혁</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/history02.do">1987 ~ 2011</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>연혁</span>
					</h2>
					<div class="section box">
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="${contextPath}/company/history01.do">2012 ~ 현재</a></li>
								<li class="on"><a href="${contextPath}/company/history02.do">1987 ~ 2011</a></li>
							</ul>
						</div>

						<div class="hs-row clear yearArea">
							<div class="col-md">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_4.jpg" alt="">
							</div>
							<div class="col-r">
								<ul class="yearList">
									<li>
										<p><strong>2010</strong></p>
										<ul>
											<li><span>2010.01</span>CÉLINE 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2009</strong></p>
										<ul>
											<li><span>2009.08</span>LANVIN COLLECTION 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>2008</strong></p>
										<ul>
											<li><span>2008.08</span>GIVENCHY 수입브랜드 전개</li>
											<li><span>2008.08</span>SYSTEM HOMME 브랜드 런칭</li>
											<li><span>2008.08</span>TIME 중국 북경 매장 오픈</li>
											<li><span>2008.08</span>TOM GREYHOUND 수입디자이너 브랜드 멀티숍 오픈</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="hs-row clear yearArea">
							<div class="col-md">
								<ul class="yearList">
									<li>
										<p><strong>2007</strong></p>
										<ul>
											<li><span>2007.09</span>ANN DEMEULEMEESTER 수입브랜드 전개</li>
											<li><span>2007.08</span>SEE BY CHLOÉ 수입브랜드 전개</li>
											<li><span>2007.07</span>LANVIN 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2006</strong></p>
										<ul>
											<li><span>2006.02</span>SJSJ 홍콩매장 오픈</li>
											<li><span>2006.01</span>㈜한섬, 아시아 200대 유망기업선정(Forbes Asia 선정)</li>
										</ul>
									</li>
									<li>
										<p><strong>2005</strong></p>
										<ul>
											<li><span>2005.09</span>Bitform Gallery 디지털 아트 갤러리 오픈</li>
											<li><span>2005.02</span>BALENCIAGA 수입브랜드 전개</li>
										</ul>
									</li>
									<li>
										<p><strong>2004</strong></p>
										<ul>
											<li><span>2004.07</span>CHLOÉ 수입브랜드 전개</li>
											<li><span>2004.05</span>수입 디자이너 브랜드 멀티숍 SPACE MUE 오픈</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="col-r">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_5.jpg" alt="">
							</div>
						</div>
						<div class="hs-row clear yearArea">
							<div class="col-md">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_6.jpg" alt="">
							</div>
							<div class="col-r">
								<ul class="yearList">
									<li>
										<p><strong>2001</strong></p>
										<ul>
											<li><span>2001.12</span>SJSJ 올해의 브랜드 상 수상(한국패션협회)</li>
										</ul>
									</li>
									<li>
										<p><strong>2000</strong></p>
										<ul>
											<li><span>2000.11</span>제37회 무역의 날 산업포장 수상</li>
											<li><span>2000.02</span>TIME HOMME 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>1997</strong></p>
										<ul>
											<li><span>1997.06</span>한국능률협회 ’96 상장 기업 우량도 조사결과 3위 선정</li>
											<li><span>1997.02</span>SJSJ 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>1996</strong></p>
										<ul>
											<li><span>1996.07</span>한국증권거래소 주식상장</li>
										</ul>
									</li>
									<li>
										<p><strong>1995</strong></p>
										<ul>
											<li><span>1995.03</span>패션 익스체인지 설립</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="hs-row clear yearArea">
							<div class="col-md">
								<ul class="yearList">
									<li>
										<p><strong>1993</strong></p>
										<ul>
											<li><span>1993.08</span>㈜한섬 커뮤니케이션 설립</li>
											<li><span>1993.04</span>오산 물류센터 완공</li>
											<li><span>1993.02</span>TIME 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>1990</strong></p>
										<ul>
											<li><span>1990.02</span>SYSTEM 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>1988</strong></p>
										<ul>
											<li><span>1988.02</span>MINE 브랜드 런칭</li>
										</ul>
									</li>
									<li>
										<p><strong>1987</strong></p>
										<ul>
											<li><span>1987.05</span>㈜한섬 설립</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="col-r">
								<img src="${contextPath}/company/images/thumbs/company-cont-3_7.jpg" alt="">
							</div>
						</div>

					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="${contextPath}/company/ceoMessage.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>CEO 메시지</span></div>
						</a>

						<a href="${contextPath}/company/ethicalMgmt01.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>윤리경영</span></div>
						</a>
					</div>
				</div>
			</div>
			<%@ include file="../footer.jsp"%>
		</div> <!-- div-wrap END -->
	</body>
</html>