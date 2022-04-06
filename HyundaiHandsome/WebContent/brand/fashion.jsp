<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page
	import="brand.BrandService, brand.BrandDAO, brand.BrandVO, brand.FashionServlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="ko">

<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-52LSKCSTND">
	
</script>
<script>
	window.dataLayer = window.dataLayer || [];

	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'G-52LSKCSTND');
</script>
<title>한섬 ｜ HANDSOME Corp.</title>
<meta name="description"
	content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬" />
<meta name="google-site-verification"
	content="QtTwloyz4KGmLhU4TqXI8B8alxsywZwO5-JgZisza5k" />
<meta name="naver-site-verification"
	content="4027c0c0f6f3cecc2c3c4f38c6b50faf599d29e3" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<link rel="icon" href="/ko/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="/ko/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="/ko/images/common/apple-touch-icon.png" sizes="180x180" />
<link rel="icon" href="/ko/images/common/favicon-32x32.png"
	sizes="32x32" type="image/png" />
<link rel="icon" href="/ko/images/common/favicon-16x16.png"
	sizes="16x16" type="image/png" />
<link rel="stylesheet" href="/ko/css/font.css" />
<link rel="stylesheet" href="/ko/css/swiper.min.css" />
<link rel="stylesheet" href="/ko/css/ko_common.css" />
<link rel="stylesheet" href="/ko/css/ko_style.css" />
<script src="/ko/js/jquery-3.5.1.min.js"></script>
<script src="/ko/js/swiper.min.js"></script>
<script src="/ko/js/bootstrap.js"></script>
<script src="/ko/js/cmmn.js"></script>
</head>

<body>
	<div class="wrap">

		<div id="header" class="header d-flex fixed-top">
			<h1 class="hs-top-logo">
				<a href="/ko/main.do" class="moveProductListButton "
					title="HYUNDAI HANDSOME 바로가기" tabindex="1" data-url=""> <span
					class="blind">HYUNDAI HANDSOME 바로가기</span>
				</a>
			</h1>
			<div class="gnb-menu clearfix" role="nav" id="">
				<div class="top-nav-area">
					<ul class="gnb-depth1-list">
						<li id="" data-id=""><a href="/ko/company/aboutHandsome.do"
							class="gnb-depth1-link" tabindex="6" data-url="">COMPANY</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="/ko/company/aboutHandsome.do"
											class="drop-depth2-link" role="menuitem"> <span>ABOUT
													한섬</span>
										</a></li>
										<li><a href="/ko/company/ceoMessage.do"
											class="drop-depth2-link" role="menuitem"> <span>CEO
													메시지</span>
										</a></li>
										<li><a href="/ko/company/history01.do"
											class="drop-depth2-link" role="menuitem"> <span>연혁</span>
										</a></li>

										<li><a href="/ko/company/ethicalMgmt01.do"
											class="drop-depth2-link" role="menuitem"> <span>윤리경영</span>
										</a></li>

										<li><a href="/ko/company/wayToCome.do"
											class="drop-depth2-link" role="menuitem"> <span>오시는
													길</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="/ko/images/thumbs/nav-img1_1.jpg"
												class="drop-img-src" alt="ABOUT 한섬 에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<li id="" data-id=""><a href="/ko/brand/fashion.do"
							class="gnb-depth1-link" tabindex="6" data-url="">BRAND</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="/ko/brand/fashion.do"
											class="drop-depth2-link" role="menuitem"> <span>패션</span>
										</a></li>

										<li><a href="/ko/brand/beauty.do"
											class="drop-depth2-link" role="menuitem"> <span>뷰티</span>
										</a></li>

										<li><a href="/ko/brand/lifeStyle.do"
											class="drop-depth2-link" role="menuitem"> <span>라이프스타일</span>
										</a></li>
									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="/ko/images/thumbs/nav-img2_1.jpg"
												class="drop-img-src" alt=" 에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<li id="" data-id=""><a href="/ko/media/collectionList.do"
							class="gnb-depth1-link" tabindex="6" data-url="">MEDIA</a>
							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">
										<li><a href="/ko/media/collectionList.do"
											class="drop-depth2-link" role="menuitem"> <span>Collection</span>
										</a></li>

										<li><a href="/ko/media/newsList.do"
											class="drop-depth2-link" role="menuitem"> <span>News</span>
										</a></li>

									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="/ko/images/thumbs/nav-img3_1.jpg"
												class="drop-img-src" alt=" 에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
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
											<img src="/ko/images/thumbs/nav-img4_1.jpg"
												class="drop-img-src" alt=" 에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
						<li id="" data-id=""><a
							href="/ko/sustainability/sharedGrowth01.do"
							class="gnb-depth1-link" tabindex="6" data-url="">SUSTAINABILITY</a>

							<div class="gnb-drop-wrap">
								<div class="drop-inner">
									<ul class="drop-depth2-list">

										<li><a href="/ko/sustainability/sharedGrowth01.do"
											class="drop-depth2-link" role="menuitem"> <span>동반성장</span>
										</a></li>

										<li><a href="/ko/sustainability/socialContrib.do"
											class="drop-depth2-link" role="menuitem"> <span>사회공헌</span>
										</a></li>
										<li><a href="/ko/sustainability/ecoFriendly01.do"
											class="drop-depth2-link" role="menuitem"> <span>친환경</span>
										</a></li>
										<li><a href="/ko/sustainability/safetyHealth01.do"
											class="drop-depth2-link" role="menuitem"> <span>안전&#183;보건</span>
										</a></li>

										<li><a href="/ko/sustainability/workerDiversity01.do"
											class="drop-depth2-link" role="menuitem"> <span>근로자
													다양성</span>
										</a></li>

									</ul>
								</div>
								<div class="drop-banner">
									<a href="#none">
										<div class="drop-banner-image">
											<img src="/ko/images/thumbs/nav-img5_1.jpg"
												class="drop-img-src" alt=" 에 대한 이미지">
										</div>
									</a>
								</div>
							</div></li>
					</ul>
				</div>
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
		<script type="text/javascript">
			$(document).ready(function() {
				setLangHref();
				setHtop();
			});

			function setLangHref() {
				/* var href = window.location.href;
				href = href.replace(/(\/ko\/|\/en\/|\/zh\/)/g, '/lang/');
				var hrefKo = href.replace('/lang/', '/ko/');
				var hrefEn = href.replace('/lang/', '/en/');
				var hrefZh = href.replace('/lang/', '/zh/');
				$('#langKo').attr('href', hrefKo);
				$('#langEn').attr('href', hrefEn);
				$('#langZh').attr('href', hrefZh); */
				$('#langKo').attr('href', '/ko/main.do');
				$('#langEn').attr('href', '/en/main.do');
				$('#langZh').attr('href', '/zh/main.do');
			}

			function setHtop() {
				var pathname = window.location.pathname;
				var menuHref = pathname.replace(
						/(02.do|03.do|04.do|05.do|06.do)/g, '01.do');
				menuHref = menuHref.replace(/(Det.do)/g, '.do');
				if ('/ko/main.do' == menuHref || '/' == menuHref
						|| '' == menuHref) {
					$('#header').removeClass('sub');
				} else {
					$('#header').addClass('sub');
					$('.container').css('padding-top', '87px');
				}
			}

			// header scroll
			$(function() {
				$(window).scroll(function() {
					var scroll = $(this).scrollTop();
					var headerH = $(".header").height();
					if ($(window).scrollTop() > headerH) {
						$(".header").addClass("minify");
						return false;
					} else {
						$(".header").removeClass("minify");
						return false;
					}
				});
			});

			//Toggle : top-utill-area
			$(".utill-lang").click(function() {
				$(".selectList").slideToggle(340, function() {
				});
				$(this).toggleClass('on');
			});

			//Tab : click on-off
			$(function() {
				$('.tabs li').click(function() {
					$('.tabs li.on').removeClass('on');
					$(this).addClass('on');
				});
			});
		</script>
		<!--  container -->
		<div id="contents" class="container">
			<div class="page-body-wrapper">
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				<div class="hs-row tit_swip">
					<!-- Swiper -->
					<div class="swiper-container swipTop">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo1.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-time.jpg" class="swiper--img"
									alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo2.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-system.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo3.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-sjsj.jpg" class="swiper--img"
									alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo4.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-lanvin-collection.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo5.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-the-cashmere.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo6.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-time-homme.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="/ko/images/thumbs/bdlogo/brandLogo7.png" alt="">
								</p>
								<img src="/ko/images/thumbs/brand-system-homme.jpg"
									class="swiper--img" alt="">
							</div>
						</div>
						<!-- Add Arrows -->
						<div class="swiper-pagination"></div>
						<div class="swiper-button-next swipnav"
							style="background-image: url('/ko/images/thumbs/bdlogo/brandLogo2.png');"></div>
						<div class="swiper-button-prev swipnav"
							style="background-image: url('/ko/images/thumbs/bdlogo/brandLogo4.png');"></div>
					</div>
				</div>
				<div class="hs-row box">
					<ol class="breadcrumb col-r">
						<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
						<li class="breadcrumb-item"><a href="/ko/brand/fashion.do">BRAND</a></li>
						<li class="breadcrumb-item"><a href="/ko/brand/fashion.do">패션</a></li>
					</ol>
				</div>

				<h3 class="hs-row tit_page tit-bg-none tit_bar">
					한섬은 국내 최고의 브랜드와 함께 럭셔리부터 캐주얼까지 <br>다양한 수입 브랜드 및 <em>한섬 만의
							차별화된 편집숍을 전개하고 있습니다.</em>
				</h3>

				<div class="section box-overspill">
					<!-- 섹션 1 -->
					<div id="brandList" class="box">
						<div class="hs-row">
							<!-- TODO -->
							<!-- FasionServlet 에서 처리한 brands -->
							<!-- 브랜드 정보를 이미지와 함께 4열의 버튼으로 표시 -->
							<!-- modal 이벤트로 연결 -->
							<c:set var="colMax" value="4" />
							<c:set var="rowMax"
								value="${(fn:length(brands) / colMax) + (1-((fn:length(brands) / colMax)%1))%1}" />

							<c:forEach var="row" begin="0" end="${rowMax - 1}">
								<ul class="cubes">
									<c:forEach var="col" begin="${row * colMax }"
										end="${(row + 1) * colMax - 1}">
										<li class="cubes-item"><a href="#myModal"
											data-toggle="modal" data-target="#myModal" data="${col}">
												<img
												src="/ko/images/thumbs/brand-list-1_${brands[col].id }.jpg"
												alt=""> <span>${brands[col].name }</span>
										</a></li>
									</c:forEach>
								</ul>
							</c:forEach>
						</div>
					</div>
				</div>


				<!-- // MODAL-->
				<div class="modal fade " id="myModal" role="dialog">
					<!-- 사용자 지정 : id명 -->
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">×</button>
							</div>
							<div class="modal-body" id="brandpop">
								<!-- Swiper -->
								<div class="swiper-container swipPop">
									<!-- TODO swiper-wrapper -->
									<div class="swiper-wrapper">
										<c:forEach var="brand" items="${brands }">
											<div class="swiper-slide swip-bg" id="brand${brand.name }">
												<div class="hs-row box clear">
													<div class="col-md">
														<img src="/ko/images/thumbs/brand-pophead-${brand.id}.jpg"
															alt="${brand.name } 브랜드 소개에 대한 시작 이미지">
															<div class="brand-info">
																<p class="brandName">${brand.name }</p>
																<p class="brandSS">${brand.ss }</p>
																<span class="brandDesc">${brand.desc }</span>
																<div>
																	<button class="btn btn-block btnPop"
																		onclick="goBrandPav01('01');">브랜드관 바로가기</button>
																</div>
															</div>
													</div>
													<div class="col-r">
														<img src="/ko/images/thumbs/brand-pop-${brand.id}.jpg"
															alt="${brand.name } 브랜드 소개에 대한 대표 이미지">
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									<!-- Add Arrows -->
									<div class="swiper-button-next"></div>
									<div class="swiper-button-prev"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--  // MODAL 종료 -->
				<script type="text/javaScript" language="javascript" defer="defer">
					// modal in swiper
					$(document).ready(function() {
						$(".modal").on('show.bs.modal', function() {
							setTimeout(function() {
								var swiperPop = new Swiper('.swipPop', {
								// pagination: '.swiper-pagination',
								// nextButton: '.swiper-button-next',
								// prevButton: '.swiper-button-prev',
								});
							}, 500);
						});
					});

					function goBrandPav01(brNum) {
						window.open('http://www.thehandsome.com/ko/b/br'
								+ brNum);
					}

					function goBrandPav02(brNum) {
						window.open('http://www.thehandsome.com/ko/c/br'
								+ brNum + '/br' + brNum);
					}

					function goBrandPav03(brndCtgryNo) {
						window
								.open('https://www.hfashionmall.com/display/brand?brndCtgryNo='
										+ brndCtgryNo);
					}
				</script>

				<!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
			</div>
		</div>
		<!-- // container -->
		<script type="text/javaScript" language="javascript" defer="defer">
			// swiper1 - swipTop
			var swipTop = new Swiper('.swipTop', {
				loop : true,
				speed : 2000,
				autoplay : {
					delay : 1500,
					paginationClickable : true,
				},
				pagination : {
					el : '.swiper-pagination',
					type : 'bullets',
					clickable : true,
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
					clickable : true,
				},
				on : {
					slideChangeTransitionEnd : function() {
						var slideIndex = this.activeIndex;
						var slidesLen = this.slides.length - 2;
						var nextIndex, prevIndex;
						//console.log(slideIndex, slidesLen);
						if ((slideIndex == 1)
								|| (slideIndex == (slidesLen + 1))) {
							nextIndex = 2;
							prevIndex = slidesLen;
						} else if (slideIndex == slidesLen) {
							nextIndex = 1;
							prevIndex = slidesLen - 1;
						} else {
							nextIndex = slideIndex + 1;
							prevIndex = slideIndex - 1;
						}
						$(".swiper-button-next").css(
								"background-image",
								"url('/ko/images/thumbs/bdlogo/brandLogo"
										+ nextIndex + ".png')");
						$(".swiper-button-prev").css(
								"background-image",
								"url('/ko/images/thumbs/bdlogo/brandLogo"
										+ prevIndex + ".png')");
					}
				},
			});

			$('.swipTop').on('mouseenter', function(e) {
				//console.log('stop autoplay');
				//swipTop.autoplay.stop();
			});

			$('.swipTop').on('mouseleave', function(e) {
				//console.log('start autoplay');
				//swipTop.autoplay.start();
			});

			// swiper2 - swipPop
			var swipPop = new Swiper('.swipPop', {
				pagination : { // 페이징 설정
					// el : '.swiper-pagination',
					clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
				},
				navigation : { // 네비게이션 설정
					nextEl : '.swiper-button-next', // 다음 버튼 클래스명
					prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
				},
				effect : 'fade',
				observer : true,
				observeParents : true
			});

			$('#brandList li').click(function() {
				var ulIndex = $(this).parent().index();
				var liIndex = $(this).index();
				var index = ulIndex * 4 + liIndex;
				swipPop.slideTo(index, 0);
			});
		</script>

		<div id="footer" class="footer">
			<div class="hs-row box aboute_group">
				<div class="col-md logo">
					<!-- 로고 -->
					<h1 class="hs-top-logo bk">
						<a href="/ko/main.do" class="moveProductListButton "
							title="HYUNDAI HANDSOME 바로가기" tabindex="1" data-url=""> <span
							class="blind">HYUNDAI HANDSOME 바로가기</span>
						</a>
					</h1>
				</div>
				<div class="col-md aboute-info">
					<div class="info-link">
						<ul>
							<li><a href="#sitemap" data-toggle="modal"
								data-target="#sitemap">사이트맵</a> <!-- // MODAL-->
								<div class="modal fade " id="sitemap" role="dialog">
									<!-- 사용자 지정 : id명 -->
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">×</button>
											</div>
											<div class="modal-body">
												<div class="mapBody">
													<div class="mapContents">
														<h2>사이트맵</h2>
														<div class="mapCategory">
															<h3>COMPANY</h3>
															<ul class="map_1depth">
																<li><a href="/ko/company/aboutHandsome.do">ABOUT
																		한섬</a></li>
																<li><a href="/ko/company/ceoMessage.do">CEO 메시지</a></li>
																<li><a href="/ko/company/history01.do">연혁</a>
																	<ul class="map_2depth">
																		<li><a href="/ko/company/history01.do">2012 ~
																				현재</a></li>
																		<li><a href="/ko/company/history02.do">1987 ~
																				2011</a></li>
																	</ul></li>

																<li><a href="/ko/company/ethicalMgmt01.do">윤리경영</a>

																	<ul class="map_2depth">
																		<li><a href="/ko/company/ethicalMgmt01.do">그룹윤리경영</a></li>
																		<li><a href="/ko/company/ethicalMgmt02.do">그룹윤리강령</a></li>
																		<li><a href="/ko/company/ethicalMgmt03.do">임직원
																				윤리실천경영</a></li>
																	</ul></li>

																<li><a href="/ko/company/wayToCome.do">오시는 길</a></li>
															</ul>
														</div>
														<div class="mapCategory">
															<h3>BRAND</h3>
															<ul class="map_1depth">
																<li><a href="/ko/brand/fashion.do">패션</a></li>

																<li><a href="/ko/brand/beauty.do">뷰티</a></li>

																<li><a href="/ko/brand/lifeStyle.do">라이프스타일</a></li>
															</ul>
														</div>
														<div class="mapCategory">
															<h3>MEDIA</h3>
															<ul class="map_1depth">
																<li><a href="/ko/media/collectionList.do">Collection</a></li>

																<li><a href="/ko/media/newsList.do">News</a></li>

															</ul>
														</div>
														<div class="mapCategory">
															<h3>IR</h3>
															<ul class="map_1depth">
																<li id="liIr01"><a href="/ko/ir/governance01.do">기업지배구조</a>
																	<ul class="map_2depth">
																		<li><a href="/ko/ir/governance01.do">회사개요</a></li>
																		<li><a href="/ko/ir/governance03.do">주식 및
																				주주정보</a></li>
																		<li><a href="/ko/ir/governance03.do">주주총회</a></li>
																		<li><a href="/ko/ir/governance04.do">이사회 및
																				위원회</a></li>
																		<li><a href="/ko/ir/governance05.do">감사기구</a></li>
																		<li><a href="/ko/ir/governance06.do">평가정보</a></li>
																	</ul></li>
																<li><a href="/ko/ir/financialInfo01.do">재무정보</a>
																	<ul class="map_2depth">
																		<li><a href="/ko/ir/financialInfo01.do">요약재무제표</a></li>
																		<li><a href="/ko/ir/financialInfo02.do">재무상태표</a></li>
																		<li><a href="/ko/ir/financialInfo03.do">손익계산서</a></li>
																	</ul></li>
																<li><a href="/ko/ir/stockInfo.do">주가정보</a></li>

																<li><a href="/ko/ir/disclosureInfoList.do">공시정보</a></li>

																<li><a href="/ko/ir/irArchiveList.do">IR 자료실</a></li>
															</ul>
														</div>
														<div class="mapCategory">
															<h3>SUSTAINABILITY</h3>
															<ul class="map_1depth">

																<li><a href="/ko/sustainability/sharedGrowth01.do">동반성장</a>

																	<ul class="map_2depth">
																		<li><a
																			href="/ko/sustainability/sharedGrowth01.do">소개</a></li>
																		<li><a
																			href="/ko/sustainability/sharedGrowth02.do">4대
																				실천사항</a></li>
																		<li><a
																			href="/ko/sustainability/sharedGrowth03.do">협력업체
																				선정</a></li>
																		<li><a
																			href="/ko/sustainability/sharedGrowth04.do">지원제도</a></li>
																		<li><a
																			href="/ko/sustainability/sharedGrowth05.do">소통의 장</a></li>
																	</ul></li>

																<li id="liSt02"><a
																	href="/ko/sustainability/socialContrib.do">사회공헌</a></li>
																<li id="liSt03"><a
																	href="/ko/sustainability/ecoFriendly01.do">친환경</a>
																	<ul class="map_2depth">
																		<li><a href="/ko/sustainability/ecoFriendly01.do">친환경
																				경영</a></li>
																		<li><a href="/ko/sustainability/ecoFriendly02.do">친환경
																				활동</a></li>
																	</ul></li>
																<li><a href="/ko/sustainability/safetyHealth01.do">안전&#183;보건</a>
																	<ul class="map_2depth">
																		<li><a
																			href="/ko/sustainability/safetyHealth01.do">안전&#183;보건</a></li>
																		<li><a
																			href="/ko/sustainability/safetyHealth02.do">제품
																				안전성 평가</a></li>
																	</ul></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div></li>

							<li><a
								href="https://recruit.ehyundai.com/recruit-info/announcement/list.nhd?pageNo=1&hireGb=01&coCd=HDHAN"
								target="_blank">채용공고</a></li>
							<li><a
								href="http://www.thehandsome.com/ko/b/storeInformation"
								target="_blank">매장안내</a></li>
							<li><a
								href="https://smrecruit.handsome.co.kr/ssmm/pc/main.htm"
								target="_blank">판매관리자 모집</a></li>
							<li><a href="http://www.ehyundai.com/newPortal/ir/main.do"
								target="_blank">현대백화점 그룹</a></li>
							<li><a
								href="http://www.ehyundai.com/newPortal/ir/ETH/ETH000008.do?ir=3"
								target="_blank" class="btncomm">사이버 신문고</a></li>
							<li><a href="#csCenter" data-toggle="modal">고객의 소리 운영현황</a>
								<!-- // MODAL-->
								<div class="modal fade " id="csCenter" role="dialog">
									<!-- 사용자 지정 : id명 -->
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">×</button>
											</div>
											<div class="csCenter-info">
												<h3 class="tit_subH3">
													안녕하세요<span style="letter-spacing: -4px; font-weight: 500">(주)</span>한섬
													고객의 소리 운영현황에 대해 공지 드립니다.
												</h3>
												<p class="exp">(기간:1월1일 ~ 12월31일, 1년간)</p>
												<div class="tblWrap">
													<table class="table liner-show">
														<colgroup>
															<col style="width: 10%">
																<col style="width: 7%">
																	<col style="width: 7%">
																		<col style="width: 7%">
																			<col style="width: 7%">
																				<col style="width: 31%">
																					<col style="width: 31%">
														</colgroup>
														<thead>
															<tr>
																<th rowspan="2">고객의 소리<br>접수현황</th>
																<th colspan="4">처리건수</th>
																<th rowspan="2">미처리 건수</th>
																<th rowspan="2" style="border-right: none">주요개선사항</th>
															</tr>
															<tr>
																<th>18년</th>
																<th>19년</th>
																<th>20년</th>
																<th>21년</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>합계</td>
																<td>57</td>
																<td>367</td>
																<td>441</td>
																<td>541</td>
																<td rowspan="4" style="text-align: left;">미처리 無<br>(평균
																		처리 기간접수 후 2일내 처리 완료)</td>
																<td rowspan="4" style="text-align: left;">
																	<ul>
																		<li>심의 프로세스 개선<br> (내부 심의 위원 구성하여 기간 단축)</li>
																	</ul>
																</td>
															</tr>
															<tr>
																<td>불만</td>
																<td>37</td>
																<td>240</td>
																<td>258</td>
																<td style="border-right: 1px solid #e5e5e5">316</td>
															</tr>
															<tr>
																<td>제안</td>
																<td>13</td>
																<td>44</td>
																<td>73</td>
																<td style="border-right: 1px solid #e5e5e5">104</td>
															</tr>
															<tr>
																<td>문의</td>
																<td>7</td>
																<td>83</td>
																<td>110</td>
																<td style="border-right: 1px solid #e5e5e5">121</td>
															</tr>
														</tbody>
													</table>
													<p class="lf_exp">*동일 건에 대한 중복 접수 포함</p>
													<div class="desc_wrap">
														<span>고객님의 편리한 쇼핑 및 보다 나은 서비스 제공을 위하여</span><br> <b>고객의
																의견을 경청하고 발전해 나아가는 기업이 되겠습니다. 감사합니다.</b>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div></li>


						</ul>
					</div>
					<div class="info-biz">
						<ul>
							<li>㈜한섬</li>
							<li>대표이사 : 김민덕</li>
							<li>서울시 강남구 도산대로 523 한섬빌딩</li>

							<li>TEL : 1800 - 5700 (유료)</li>


							<li>FAX : 02 - 6078 - 2856</li>
						</ul>

						<ul>
							<li>사업자등록번호 : 120-81-26337</li>
							<li>통신판매업신고번호 : 강남 제 00826호</li>
							<li>개인정보관리책임자 : 이정득</li>
							<li>호스팅 서비스 : ㈜한섬</li>
						</ul>

						<ul class="copyright">
							<li>COPYRIGHT ⓒ 2020 HANDSOME. ALL RIGHTS RESERVED</li>
						</ul>
					</div>
				</div>

				<div class="col-r sns-link">
					<div class="col-md instargram">
						<a
							href="https://instagram.com/thehandsome_official?igshid=1uijz54mrwdtq"
							target="_blank"><span class="blind">인스타그램</span></a>
					</div>
					<div class="col-md youtube">
						<a href="https://www.youtube.com/channel/UC0fmjgbVA8iZrPbIR3dppUQ"
							target="_blank"> <span class="blind">유튜브</span></a>
					</div>
				</div>


			</div>
			<div class="family_site">
				<div class="hs-row site_tgl">
					<button class="" type="button" aria-pressed="">
						FAMILY SITE <i class="arr"></i>
					</button>
					<div class="hs-row site_list ">

						<div class="hs-row box">
							<ul class="col-md">
								<li><a href="http://www.ehyundai.com/newPortal/ir/main.do"
									target="_blank" title="새창열림" class="li-disc">현대백화점그룹</a></li>
								<li><a href="http://www.hyundailnc.com/" target="_blank"
									title="새창열림" class="li-disc">현대L&amp;C</a></li>
								<li><a href="http://www.hyundaibioland.co.kr/"
									target="_blank" title="새창열림" class="li-disc">현대바이오랜드</a></li>
							</ul>
							<ul class="col-md">
								<li><a href="https://www.ehyundai.com/newPortal/index.do"
									target="_blank" title="새창열림" class="li-disc">현대백화점</a></li>
								<li><a href="https://www.hddfs.com/shop/dm/main.do"
									target="_blank" title="새창열림" class="li-disc">현대백화점면세점</a></li>
								<li><a href="https://www.ezwel.com" target="_blank"
									title="새창열림" class="li-disc">이지웰</a></li>
							</ul>
							<ul class="col-md">
								<li><a href="https://www.hyundaihmall.com/Home.html"
									target="_blank" title="새창열림" class="li-disc">현대홈쇼핑</a></li>
								<li><a href="http://www.hyundaidreamtour.com/"
									target="_blank" title="새창열림" class="li-disc">현대드림투어</a></li>
								<li><a
									href="http://www.ehyundai.com/newPortal/sc/main/main.do"
									target="_blank" title="새창열림" class="li-disc">현대백화점그룹사회복지재단</a></li>
							</ul>
							<ul class="col-md">
								<li><a href="http://www.hyundaigreenfood.com/"
									target="_blank" title="새창열림" class="li-disc">현대그린푸드</a></li>
								<li><a href="http://www.hyundairentalcare.co.kr/"
									target="_blank" title="새창열림" class="li-disc">현대렌탈케어</a></li>
							</ul>
							<ul class="col-md">
								<li><a href="http://www.hyundaicatering.co.kr/"
									target="_blank" title="새창열림" class="li-disc">현대케이터링</a></li>
								<li><a href="	https://www.hyundaifuturenet.co.kr/"
									target="_blank" title="새창열림" class="li-disc">현대퓨처넷</a></li>
							</ul>
							<ul class="col-md">
								<li><a href="http://www.cnsfoodsystem.co.kr/"
									target="_blank" title="새창열림" class="li-disc">C&amp;S푸드시스템</a></li>
								<li><a href="http://www.everdigm.com/" target="_blank"
									title="새창열림" class="li-disc">에버다임</a></li>
							</ul>
							<ul class="col-md">
								<li><a
									href="http://www.hyundailivart.co.kr/ko/intro/index.lvt"
									target="_blank" title="새창열림" class="li-disc">현대리바트</a></li>
								<li><a href="http://www.hyundai-ite.com/index.jsp"
									target="_blank" title="새창열림" class="li-disc">현대IT&amp;E</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
			<button id="toolTop">
				<span>본문 맨 위로 가기</span>
			</button>
		</div>
		<script>
			// modal in swiper
			$(document).ready(function() {

				$(".modal").on('show.bs.modal', function() {
					setTimeout(function() {
						var swiperPop = new Swiper('.swipPop', {
						// pagination: '.swiper-pagination',
						// nextButton: '.swiper-button-next',
						// prevButton: '.swiper-button-prev',
						});
					}, 500);
				});
			});

			$(function() {
				var $w = $(window), fH = $('.footer').outerHeight(), $toolTop = $('#toolTop');
				$w.on('scroll', function() {
					var sT = $w.scrollTop();
					var hH = $(document).height() - $w.height() - fH;
					if (sT >= hH)
						$toolTop.addClass('on')
					else
						$toolTop.removeClass('on')
				});
				$toolTop.click(function() {
					var pagetop = $('html').offset();
					$('html, body').animate({
						scrollTop : pagetop.top
					}, 400);
				});
			});

			$('.site_tgl').click(function() {
				event.stopPropagation();
				$(".site_list").slideToggle(670, function() {
				});
			});
		</script>
	</div>
</body>
</html>