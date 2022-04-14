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
							<li class="breadcrumb-item"><a href="${contextPath}/company/aboutHandsome.do">COMPANY</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/aboutHandsome.do">ABOUT 한섬</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span><em class="f_jost">ABOUT 한섬</em></span>
					</h2>
					<!-- Section 1 -->
					<div class="section box topBr">
						<div class="aboutList">
							<div class="hs-row clear">
								<div class="col-md col-md-4">
									<p class="h4 mb30">열정과 차별화된 감성을 지닌 <br>LEADER</p>
										<p class="display-4">
											1987년 설립 후 지난 30여 년간 국내 최고의 패션 리딩 기업으로 성장한 한섬은<br>본격적인 중국, 유럽 진출을 통해 글로벌 경쟁력을 키워가고 있습니다.
										</p>
								</div>
								<div class="col-r col-md-8">
									<img src="${contextPath}/company/images/thumbs/company-cont-1_1.jpg" alt="">
								</div>
							</div>
							<div class="hs-row clear">
								<div class="col-r col-md-4">
									<p class="h4">
										새로운 영감을 주는<br>라이프스타일을 창조하는<br>CREATOR
									</p>
									<p class="display-4">
										타임, 마인, 시스템 등 국내 최고의 패션 브랜드와 해외 브랜드 전개 및<br>협업을 통해 새로운 콘텐츠, 차별화된 브랜드 가치를 제공하고 있습니다.
									</p>
								</div>
								<div class="col-md col-md-8">
									<img src="${contextPath}/company/images/thumbs/company-cont-1_2.jpg" alt="">
								</div>
							</div>
							<div class="hs-row clear">
								<div class="col-md col-md-4">
									<p class="h4 mb30">
										더 높은 삶의 가치를<br>함께 만들어 가는<br>MOTIVATOR
									</p>
									<p class="display-4">
										패션을 넘어서 라이프스타일 분야로 사업영역을 확장하고 있는 한섬은<br>현재에 안주하지 않고, 글로벌 패션 &amp; 뷰티 &amp; 라이프스타일을 선도해 나갈 것입니다.
									</p>
								</div>
								<div class="col-r col-md-8">
									<img src="${contextPath}/company/images/thumbs/company-cont-1_3.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
					<!-- Section 2 -->
					<div class="section with-bg box-overspill aboutAt">
						<h2 class="eng">AT A GLANCE</h2>
						<ul class="box">
							<li>
								<img src="${contextPath}/company/images/sub-company-foot-ico01.png" alt="">
									<p>1987</p>
									<p>Established</p>
							</li>
							<li>
								<img src="${contextPath}/company/images/sub-company-foot-ico02.png" alt="">
								<p>1,389</p>
								<p>Stores</p>
							</li>
							<li>
								<img src="${contextPath}/company/images/sub-company-foot-ico03.png" alt="" style="margin-right: 18px;">
								<p>29</p>
								<p>Brands</p>
							</li>
						</ul>
					</div>
					<!-- PAGE 이동 -->
					<div class="hs-row box-overspill page-turn">
						<a href="${contextPath}/company/wayToCome.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>오시는 길</span></div>
						</a>
						<a href="${contextPath}/company/ceoMessage.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>CEO 메시지</span></div>
						</a>
					</div>
				</div>
			</div>
			<%@ include file="../footer.jsp"%>
		</div> <!-- div-wrap END -->
	</body>
</html>