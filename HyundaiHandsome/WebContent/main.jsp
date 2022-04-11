<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<%@ include file="header.jsp"%>

		<!--  container -->
		<div id="contents" class="container">
			<div class="page-body-wrapper">
				<div class="full-swipe-wrap">
					<!-- Swiper -->
					<div class="swiper-container swipMainTop">
						<div class="swiper-wrapper ">
							<div class="swiper-slide main-banner">
								<div class="banner-txt">
									<p class="banner--tit">
										HANDSOME LEADING GLOBAL <br> FASHION AND LIFESTYLE 
									</p>
								</div>
								<img src="/ko/images/thumbs/section-main1.jpg "
									class="swiper--img banner-img" alt="">
							</div>
							<div class="swiper-slide main-banner">
								<div class="banner-txt">
									<p class="banner--tit">
										HANDSOME LEADING GLOBAL <br> FASHION AND LIFESTYLE 
									</p>
								</div>
								<img src="/ko/images/thumbs/section-main2.jpg "
									class="swiper--img banner-img" alt="">
							</div>
							<div class="swiper-slide main-banner">
								<div class="banner-txt">
									<p class="banner--tit">
										HANDSOME LEADING GLOBAL <br> FASHION AND LIFESTYLE 
									</p>
								</div>
								<img src="/ko/images/thumbs/section-main3.jpg "
									class="swiper--img banner-img" alt="">
							</div>
						</div>
						<!-- Add Arrows -->
						<div class="paginationWrap">
							<div class="swiper-pagination"></div>
							<button class="swiper-button-play">play</button>
							<button class="swiper-button-pause">stop</button>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<!-- // Swiper -->
					<a href="#section1" class="scroll">SCROLL DOWN<span></span></a>
				</div>
				<div id="section1" class="section box-overspill with-bg main_global">
					<h2 class="">
						<span class="eng">HANDSOME LEADING GLOBAL</span>
					</h2>
					<h2 class="">
						<span class="eng">FASHION AND LIFESTYLE</span>
					</h2>
					<div class="hs-row box">
						<div class="col-md">
							<dl>
								<dt>
									<img src="/ko/images/thumbs/section1-1.jpg" alt="">
								</dt>
								<dd>
									<p class="display-s">1987</p>
								</dd>
								<dd>
									<p class="name">Established</p>
								</dd>
							</dl>
						</div>
						<div class="col-md">
							<dl>
								<dt>
									<img src="/ko/images/thumbs/section1-2.jpg" alt="">
								</dt>
								<dd>
									<p class="display-s">1,389</p>
								</dd>
								<dd>
									<p class="name">Stores</p>
								</dd>
							</dl>
						</div>
						<div class="col-md">
							<dl>
								<dt>
									<img src="/ko/images/thumbs/section1-3.jpg" alt="">
								</dt>
								<dd>
									<p class="display-s">29</p>
									</dt>
									<dd>
										<p class="name">Brands</p>
									</dd>
							</dl>
						</div>
					</div>
				</div>
				<div class="section box-overspill main_brand">
					<h2 class="">
						<span class="eng">DELIVERS INDIVIDUATED 
					</h2>
					<h2 class="">
						<span class="eng">BRAND VALUE 
					</h2>
					<!-- Swiper -->
					<div class="brand-card-nav">
						<ul class="swiper-wrapper">
							<li class="swiper-slide">
								<button>패션</button>
							</li>
							<li class="swiper-slide">
								<button>라이프스타일</button>
							</li>
						</ul>
					</div>
					<div class="swiper-container brand-card">
						<div class="swiper-wrapper ">
							<div class="swiper-slide main-banner">
								<div class="card-text-now">
									<div>BRAND VALUE</div>
									<div class="h4">패션</div>
									<p class="display-5">

										한섬은 국내 최고의 브랜드와 함께 럭셔리부터<br>캐주얼까지 다양한 수입 브랜드 및 한섬 만의<br>차별화된
												편집숍을 전개하고 있습니다. 
									</p>
									<a href="/ko/brand/fashion.do" class="btn btn-block btn_main">VIEW
										MORE</a>
								</div>
								<img src="/ko/images/thumbs/section2-1.jpg"
									class="swiper--img banner-img" alt="">
							</div>
							<div class="swiper-slide main-banner">
								<div class="card-text-now">
									<div>BRAND VALUE</div>
									<div class="h4">라이프스타일</div>
									<p class="display-5">

										가치 있는 삶을 위해 본질에 집중하고<br>지속 가능한 라이프스타일을 만들어 갑니다. 
									</p>
									<a href="/ko/brand/lifeStyle.do" class="btn btn-block btn_main">VIEW
										MORE</a>
								</div>
								<img src="/ko/images/thumbs/section2-2.jpg"
									class="swiper--img banner-img" alt="">
							</div>
						</div>
						<!-- Add Arrows -->
						<div class="swiper-pagination"></div>
						<div class="swiper-button-next bv"></div>
						<div class="swiper-button-prev bv"></div>
						<div class="cardbox">
							<p></p>
						</div>
					</div>
					<!-- Swiper -->
				</div>
				<div class="section box-overspill main_noti">
					<div class="section box">
						<h2 class="">
							<span class="eng">WHAT’S NEW</span>
						</h2>
						<h2 class="">
							<span class="eng">AT HANDSOME</span>
						</h2>
						<div class="hs-row">
							<div class="col-md">
								<dl>
									<a
										href="/ko/media/newsDet.do?idEnc=a1d0e0950dedc5ef474c94f91b846b40">
										<dt>
											<img
												src="http://img.handsome.co.kr/images/uld/news/da00870e-025c-42e3-b967-f794681bee8d.jpg"
												alt="440-270.jpg" width="441" height="270">
										</dt>
										<dd>더캐시미어, 22SS 캠페인 &#039;Another Earth&#039;공개</dd>
										<dd>2022.04.05</dd>
									</a>
								</dl>
							</div>
							<div class="col-md">
								<dl>
									<a
										href="/ko/media/newsDet.do?idEnc=0e8af22a56e456baef9c3401b2e80641">
										<dt>
											<img
												src="http://img.handsome.co.kr/images/uld/news/48f2dfac-5e20-445e-bd1d-996dec475140.png"
												alt="440-270.png" width="441" height="270">
										</dt>
										<dd>한섬, 더한섬하우스 매장서 지비지 작가 전시 연다</dd>
										<dd>2022.02.22</dd>
									</a>
								</dl>
							</div>
							<div class="col-md">
								<dl>
									<a
										href="/ko/media/newsDet.do?idEnc=dd046742bddfb5fc7247f57f3d4d5557">
										<dt>
											<img
												src="http://img.handsome.co.kr/images/uld/news/3da30cdb-3f5d-4fb6-b280-974465767933.png"
												alt="제목을-입력해주세요_-001 (34).png" width="441" height="270">
										</dt>
										<dd>이번엔 웹예능...한섬, 영상 콘텐츠 강화 나선다.</dd>
										<dd>2021.12.13</dd>
									</a>
								</dl>
							</div>
						</div>
						<div class="hs-row">
							<button class="btn btn-block m_auto btn_main"
								onclick="location.href='/ko/media/newsList.do'">VIEW
								MORE</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- // container -->
		<script type="text/javascript">
			// swiper1 - swipMainTop
			var swipMainTop = new Swiper('.swipMainTop', {
				pagination : {
					el : '.swiper-pagination',
					type : 'bullets',
					clickable : true,
					renderBullet : function(index, className) {
						return '<span class="' + className + '">' + '<span>'
								+ '0' + '</span>' + '<span>' + (index + 1)
								+ '</span>' + '</span>';
					},
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
				autoplay : {
					delay : 3400,
					disableOnInteraction : false,
				},
				loop : true,
				effect : 'fade'
			});

			$(".swiper-button-pause").click(function() {
				swipMainTop.autoplay.stop();
				$(this).hide();
				$(this).siblings(".swiper-button-play").show();
			});
			$(".swiper-button-play").click(function() {
				swipMainTop.autoplay.start();
				$(this).hide();
				$(this).siblings(".swiper-button-pause").show();
			});

			// swiper2 - .brand-card
			var myArray = [ "0", "패션", "뷰티", "라이프스타일" ];
			var swiper_brandNav = new Swiper(".brand-card-nav", {
				slidesPerView : 3,
			});
			var swiper_brand = new Swiper(".brand-card", {
				loop : true,
				slidesPerView : 'auto',
				centeredSlides : true,
				spaceBetween : 10,
				pagination : {
					el : '.swiper-pagination',
					clickable : true,
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
					renderBullet : function(index, className) {
						return '<span class="' + className + '">' + '<span>'
								+ myArray[index + 1] + '</span>' + '</span>';
					},
				},
				on : {
					slideChangeTransitionEnd : function() {
						var slideIndex = this.activeIndex;
						var slidesLen = this.slides.length - 2;
						var nextIndex, prevIndex;
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
						$(".swiper-button-next.bv").css(
								"background-image",
								"url('/ko/images/btxt/ko/brandValue"
										+ nextIndex + ".png')");
						$(".swiper-button-prev.bv").css(
								"background-image",
								"url('/ko/images/btxt/ko/brandValue"
										+ prevIndex + ".png')");
					}
				},
				autoplay : {
					delay : 3400,
					disableOnInteraction : false,
				},
				thumbs : {
					swiper : swiper_brandNav,
				},
			});
		</script>

		<%@ include file="footer.jsp"%>

	</div>
</body>
</html>