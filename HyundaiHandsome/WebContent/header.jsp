<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>한섬 ｜ HANDSOME Corp.</title>
<meta name="description"
	content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<link rel="stylesheet" href="${contextPath}/css/font.css">
<link rel="stylesheet" href="${contextPath}/css/ko_common.css">
<link rel="stylesheet" href="${contextPath}/css/ko_style.css">
<link rel="stylesheet" href="${contextPath}/css/swiper.min.css">
<script src="${contextPath}/js/bootstrap.js"></script>
<script src="${contextPath}/js/cmmn.js"></script>
<script src="${contextPath}/js/jquery-3.5.1.min.js"></script>
<script src="${contextPath}/js/swiper.min.js"></script>
<script src="${contextPath}/js/js.js"></script>
<link rel="icon" href="${contextPath}/images/favicon.ico"
	type="image/x-icon">
<link rel="shortcut icon" href="${contextPath}/images/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="${contextPath}/images/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="${contextPath}/images/favicon-16x16.png"
	sizes="16x16" type="image/png">
</head>
<body>
	<div class="wrap">
		<div id="header" class="header d-flex fixed-top">
			<!--  Handsome 로고 -->
			<h1 class="hs-top-logo">
				<a href="${contextPath}/main.do" class="moveProductListButton"
					title="HYUNDAI HANDSOME 바로가기" tabindex="1" data-url=""> <span
					class="blind">HYUNDAI HANDSOME 바로가기</span>
				</a>
			</h1>
			<!--  Global Navigation Bar Menu -->
			<div class="gnb-menu clearfix" role="nav" id="">
				<!-- Top Navigation Bar -->
				<div class="top-nav-area">
					<ul class="gnb-depth1-list">
						<!-- COMPANY -->
						<li id="" data-id=""><a
							href="${contextPath}/company/aboutHandsome.do"
							class="gnb-depth1-link" tabindex="6" data-url="">COMPANY</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="${contextPath}/company/aboutHandsome.do"
											class="drop-depth2-link" role="menuitem"> <span>ABOUT
													한섬</span>
										</a></li>
										<li><a href="${contextPath}/company/ceoMessage.do"
											class="drop-depth2-link" role="menuitem"> <span>CEO
													메시지</span>
										</a></li>
										<li><a href="${contextPath}/company/history01.do"
											class="drop-depth2-link" role="menuitem"> <span>연혁</span>
										</a></li>

										<li><a href="${contextPath}/company/ethicalMgmt01.do"
											class="drop-depth2-link" role="menuitem"> <span>윤리경영</span>
										</a></li>

										<li><a href="${contextPath}/company/wayToCome.do"
											class="drop-depth2-link" role="menuitem"> <span>오시는
													길</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img1_1.jpg"
												class="drop-img-src" alt="HANDSOME에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<!-- BRAND -->
						<li id="" data-id=""><a
							href="${contextPath}/brand/fashion.do" class="gnb-depth1-link"
							tabindex="6" data-url="">BRAND</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="${contextPath}/brand/fashion.do"
											class="drop-depth2-link" role="menuitem"> <span>패션</span>
										</a></li>
										<li><a href="${contextPath}/brand/beauty.do"
											class="drop-depth2-link" role="menuitem"> <span>뷰티</span>
										</a></li>

										<li><a href="${contextPath}/brand/lifeStyle.do"
											class="drop-depth2-link" role="menuitem"> <span>라이프스타일</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img2_1.jpg"
												class="drop-img-src" alt="BRAND에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<!-- MEDIA -->
						<li id="" data-id=""><a
							href="${contextPath}/media/collectionList.do"
							class="gnb-depth1-link" tabindex="6" data-url="">MEDIA</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="${contextPath}/media/collectionList.do"
											class="drop-depth2-link" role="menuitem"> <span>Collection</span>
										</a></li>
										<li><a href="${contextPath}/media/newsList.do"
											class="drop-depth2-link" role="menuitem"> <span>News</span>
										</a></li>

									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img3_1.jpg"
												class="drop-img-src" alt="MEDIA에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<!-- IR -->
						<li id="" data-id=""><a href="/ko/ir/governance01.do"
							class="gnb-depth1-link" tabindex="6" data-url="">IR</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="/ko/ir/governance01.do"
											class="drop-depth2-link" role="menuitem"> <span>기업지배구조</span>
										</a></li>
										<li><a href="/ko/ir/financialInfo01.do"
											class="drop-depth2-link" role="menuitem"> <span>재무정보</span>
										</a></li>
										<li><a
											href="https://finance.naver.com/item/main.nhn?code=020000"
											class="drop-depth2-link" role="menuitem" target="_blank">
												<span>주가정보</span>
										</a>
										<li><a href="/ko/ir/disclosureInfoList.do"
											class="drop-depth2-link" role="menuitem"> <span>공시정보</span>
										</a></li>

										<li><a href="/ko/ir/irArchiveList.do"
											class="drop-depth2-link" role="menuitem"> <span>IR
													자료실</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img4_1.jpg"
												class="drop-img-src" alt="IR에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<!-- SUSTAINABILITY -->
						<li id="" data-id=""><a
							href="${contextPath}/sustainability/sharedGrowth01.do"
							class="gnb-depth1-link" tabindex="6" data-url="">SUSTAINABILITY</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a
											href="${contextPath}/sustainability/sharedGrowth01.do"
											class="drop-depth2-link" role="menuitem"> <span>동반성장</span>
										</a></li>
										<li><a
											href="${contextPath}/sustainability/socialContrib.do"
											class="drop-depth2-link" role="menuitem"> <span>사회공헌</span>
										</a></li>
										<li><a
											href="${contextPath}/sustainability/ecoFriendly01.do"
											class="drop-depth2-link" role="menuitem"> <span>친환경</span>
										</a></li>
										<li><a
											href="${contextPath}/sustainability/safetyHealth01.do"
											class="drop-depth2-link" role="menuitem"> <span>안전&#183;보건</span>
										</a></li>
										<li><a
											href="${contextPath}/sustainability/workerDiversity01.do"
											class="drop-depth2-link" role="menuitem"> <span>근로자
													다양성</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img5_1.jpg"
												class="drop-img-src" alt="SUSTAINABILITY에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<!-- BOARD -->
						<li id="" data-id=""><a
							href="${contextPath}/board/listBoard.do" class="gnb-depth1-link"
							tabindex="6" data-url="">BOARD</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="${contextPath}/board/listBoard.do"
											class="drop-depth2-link" role="menuitem"> <span>Board</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="${contextPath}/images/thumbs/nav-img6_1.jpg"
												class="drop-img-src" alt="BOARD에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
				</div>
				<!-- Top Utill -->
				<div class="top-utill-area">
					<ul>
						<li class="utill-unit"><a href="http://www.thehandsome.com"
							target="_blank">더한섬닷컴</a></li>
						<li class="utill-unit"><a href="https://www.hfashionmall.com"
							target="_blank">H패션몰</a></li>
						<li class="utill-unit"><a href="https://www.eqlstore.com"
							target="_blank">EQL</a></li>
						<li class="utill-lang"><a href="#none" tabindex="13"> <span
								class="lang-now">KOR</span> <span class="lang-ico">&nbsp;</span>
								<i class="btn-tgl-m">열기/닫기</i>
						</a>
							<div class="selectList">
								<ul>
									<li class="lang-item"><a href="#none" id="langKo"
										class="on" tabindex=""><span>KOR</span></a></li>
									<li class="lang-item"><a href="#none" id="langEn" class=""
										tabindex=""><span>ENG</span></a></li>
									<li class="lang-item"><a href="#none" id="langZh" class=""
										tabindex=""><span>CHN</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Header END -->
		<script type="text/javascript">

				// 문서가 준비되면 매개변수로 넣은 콜백 함수를 실행
				$(document).ready(function(){
					// 언어 관련 함수들
					setLangHref();
					setHtop();
				});

				function setLangHref() {
					$('#langKo').attr('href', '/ko/main.do');
					$('#langEn').attr('href', '/en/main.do');
					$('#langZh').attr('href', '/zh/main.do');
				}

				function setHtop() {
					var pathname = window.location.pathname;
					var menuHref = pathname.replace(/(02.do|03.do|04.do|05.do|06.do)/g, '01.do');
					menuHref = menuHref.replace(/(Det.do)/g, '.do');
					if('/ko/main.do' == menuHref || '/' == menuHref || '' == menuHref) {
						$('#header').removeClass('sub');
					} else {
						$('#header').addClass('sub');
						$('.container').css('padding-top', '87px');
					}
				}

				// header scroll
				$(function(){
					$(window).scroll(function(){
						var scroll = $(this).scrollTop();
						var headerH = $(".header").height();
						if ($(window).scrollTop() > headerH){
							$(".header").addClass("minify");
							return false;
						}
						else {
							$(".header").removeClass("minify");
							return false;
						}
					});
				});

				//Toggle : top-utill-area
				$(".utill-lang").click(function(){
					$(".selectList").slideToggle(340, function() {
					});
					$(this).toggleClass('on');
				});

				//Tab : click on-off
				$(function() {
					$('.tabs li').click(function(){
						$('.tabs li.on').removeClass('on');
						$(this).addClass('on');
					});
				});
			</script>