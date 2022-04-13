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
							<li class="breadcrumb-item"><a href="/ko/company/ceoMessage.do">CEO 메시지</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span><em class="f_jost">CEO 메시지</em></span>
					</h2>
					<div class="section box"> <!-- 섹션 1 -->
						<div class="production">

							<div class="prTxt">
								<p class="h4">
									국내 NO.1 한섬,<br>
									<span>삶의 모든 영역에서 아름다운 경험을</span><br>
									<span>제공하는 스타일 크리에이터</span> 기업이 되겠습니다.
								</p>
								<p class="prTop">안녕하십니까,<br>한섬 대표이사 김민덕입니다.</p>
								<p>
									한국 최고의 브랜드력과 상품력 그리고 인적 자산을 가진 한섬은 브랜드 경쟁력을 강화하고, 다양한<br>
									신규 사업 추진을 통해 지속적인 성장을 이어나가고 있습니다.
								</p>
								<p>
									[타임], [마인], [시스템], [SJSJ] 등의 국내패션을 대표하는 브랜드와 [랑방], [발리], [로샤스] 등 <br>
									해외 럭셔리 브랜드, [랑방컬렉션], [타미힐피거], [DKNY], [클럽모나코] 등의 라이선스 사업을 전개하고 있습니다.<br>
									또한, 잡화 브랜드 [덱케], [루즈앤라운지]와 캐시미어 특화 브랜드 [더 캐시미어] 등 전문 브랜드를 육성하고,<br>
									리빙과 편집숍 등 다양한 분야로 사업 영역을 확장하고 있습니다.
								</p>
								<p>
									세상과 고객이 변하는 속도는 점점 빨라지고 있습니다. 현재의 모습에 안주하지 않고<br>
									시대를 반영하여 고객에게 사랑받는 기업으로 늘 새롭게 도전해 나가겠습니다.<br>
									지난 30여 년간 성장시켜 온 고유의 브랜드 가치를 지켜나가면서 한국 최고에서 세계 최고가<br>
									될 수 있도록 최선을 다할 것을 약속 드립니다.
								</p>
								<p class="sin">
									대표이사<strong>김민덕</strong>
									<img src="${contextPath}/company/images/thumbs/company-cont-2_2.jpg" alt="">
								</p>
							</div>

							<div class="prImg">
								<img src="${contextPath}/company/images/thumbs/company-cont-2_1.jpg" alt="">
							</div>
						</div>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="/ko/company/aboutHandsome.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>ABOUT 한섬</span></div>
						</a>
						<a href="/ko/company/history01.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>연혁</span></div>
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