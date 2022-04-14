<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="brand.BrandDAO, brand.BrandVO, brand.FashionServlet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


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
<link rel="icon" href="${contextPath}/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="${contextPath}/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="${contextPath}/images/common/apple-touch-icon.png" sizes="180x180" />
<link rel="icon" href="${contextPath}/images/common/favicon-32x32.png"
	sizes="32x32" type="image/png" />
<link rel="icon" href="${contextPath}/images/common/favicon-16x16.png"
	sizes="16x16" type="image/png" />
<link rel="stylesheet" href="${contextPath}/css/font.css" />
<link rel="stylesheet" href="${contextPath}/css/swiper.min.css" />
<link rel="stylesheet" href="${contextPath}/css/ko_common.css" />
<link rel="stylesheet" href="${contextPath}/css/ko_style.css" />
<script src="${contextPath}/js/jquery-3.5.1.min.js"></script>
<script src="${contextPath}/js/swiper.min.js"></script>
<script src="${contextPath}/js/bootstrap.js"></script>
<script src="${contextPath}/js/cmmn.js"></script>
</head>

<body>
	<div class="wrap">
		<%@ include file="/header.jsp"%>

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
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo1.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-time.jpg" class="swiper--img"
									alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo2.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-system.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo3.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-sjsj.jpg" class="swiper--img"
									alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo4.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-lanvin-collection.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo5.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-the-cashmere.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo6.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-time-homme.jpg"
									class="swiper--img" alt="">
							</div>
							<div class="swiper-slide">
								<p class="swiper--logo">
									<img src="${contextPath}/images/thumbs/bdlogo/brandLogo7.png" alt="">
								</p>
								<img src="${contextPath}/images/thumbs/brand-system-homme.jpg"
									class="swiper--img" alt="">
							</div>
						</div>
						<!-- Add Arrows -->
						<div class="swiper-pagination"></div>
						<div class="swiper-button-next swipnav"
							style="background-image: url('${contextPath}/images/thumbs/bdlogo/brandLogo2.png');"></div>
						<div class="swiper-button-prev swipnav"
							style="background-image: url('${contextPath}/images/thumbs/bdlogo/brandLogo4.png');"></div>
					</div>
				</div>
				<div class="hs-row box">
					<ol class="breadcrumb col-r">
						<li class="breadcrumb-item"><a href="${contextPath}/main.do">HOME</a></li>
						<li class="breadcrumb-item"><a href="${contextPath}/brand/fashion.do">BRAND</a></li>
						<li class="breadcrumb-item"><a href="${contextPath}/brand/fashion.do">패션</a></li>
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
							<c:set var="length" value="${fn:length(brands)}" />
							<c:set var="colMax" value="4" />
							<c:set var="rowMax"
								value="${(length / colMax) + (1-((length / colMax)%1))%1}" />
							<c:catch var="e">
								<c:forEach var="row" begin="0" end="${rowMax - 1}">
									<ul class="cubes">
										<c:forEach var="col" begin="${row * colMax }"
											end="${(row + 1) * colMax - 1}">
											<c:if test="${col < length }">
												<li class="cubes-item"><a href="#myModal"
													data-toggle="modal" data-target="#myModal" data="${col}">
														<img
														src="${contextPath}/images/thumbs/brand-list-1_${brands[col].id }.jpg"
														alt=""> <span>${brands[col].name }</span>
												</a></li>
											</c:if>
										</c:forEach>
									</ul>
								</c:forEach>
							</c:catch>
							<c:choose>
								<c:when test="${!empty e }">
							${e.message }
							</c:when>
							</c:choose>
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
														<img src="${contextPath}/images/thumbs/brand-pophead-${brand.id}.jpg"
															alt="${brand.name } 브랜드 소개에 대한 시작 이미지">
															<div class="brand-info">
																<p class="brandName">${brand.name }</p>
																<p class="brandSS">${brand.ss }</p>
																<span class="brandDesc">${brand.description }</span>
																<div>
																	<button class="btn btn-block btnPop"
																		onclick="${brand.mallScriptType}('${brand.mallId}');">브랜드관
																		바로가기</button>
																</div>
															</div>
													</div>
													<div class="col-r">
														<img src="${contextPath}/images/thumbs/brand-pop-${brand.id}.jpg"
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
								"url('${contextPath}/images/thumbs/bdlogo/brandLogo"
										+ nextIndex + ".png')");
						$(".swiper-button-prev").css(
								"background-image",
								"url('${contextPath}/images/thumbs/bdlogo/brandLogo"
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

		<%@ include file="/footer.jsp"%>
	</div>
</body>
</html>