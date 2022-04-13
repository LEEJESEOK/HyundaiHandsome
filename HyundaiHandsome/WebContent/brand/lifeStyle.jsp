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
<link rel="icon" href="${pageContext.request.contextPath}/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/common/favicon.ico"
	type="image/x-icon" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/images/common/apple-touch-icon.png" sizes="180x180" />
<link rel="icon" href="${pageContext.request.contextPath}/images/common/favicon-32x32.png"
	sizes="32x32" type="image/png" />
<link rel="icon" href="${pageContext.request.contextPath}/images/common/favicon-16x16.png"
	sizes="16x16" type="image/png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ko_common.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ko_style.css" />
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/cmmn.js"></script>
</head>
<body>
	<div class="wrap">
		<%@ include file="/header.jsp"%>

		<!--  container -->
		<div id="contents" class="container">
			<div class="page-body-wrapper">
				<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				<div>
					<h2 class="hs-row tit_page tit_brand">
						<img src="${pageContext.request.contextPath}/images/thumbs/lifestyle-big-1.jpg" class="tit--img"
							alt="브랜드 이미지">
					</h2>
				</div>
				<div class="hs-row box">
					<ol class="breadcrumb col-r">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/main.do">HOME</a></li>
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/brand/fashion.do">BRAND</a></li>
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/brand/lifeStyle.do">라이프스타일</a></li>
					</ol>
				</div>

				<h3 class="hs-row tit_page tit-bg-none tit_bar">
					가치 있는 삶을 위해 본질에 집중하고<br> <em>지속가능한 라이프스타일을 만들어 갑니다.</em>
				</h3>
				<div class="section box">
					<div class="hs-row clear beauty mt30">
						<div class="col-md clear">
							<p class="display-s">${brand.ss }</p>
							<h4>${brand.name }</h4>
							${brand.description }
							<div class="">
								<button class="btn btn-block btnPop"
									onclick="${brand.mallScriptType}('${brand.mallId}');">브랜드관
									바로가기</button>
							</div>
							<div class="col-r col-md-6">
								<img src="${pageContext.request.contextPath}/images/thumbs/lifestyle-view-1_2.jpg"
									alt="라이프스타일의 브랜드관 제품에 대한 작은 이미지">
							</div>
						</div>
						<div class="col-r">
							<img src="${pageContext.request.contextPath}/images/thumbs/lifestyle-view-1_1.jpg"
								alt="라이프스타일의 브랜드관 제품에 대한 이미지">
						</div>
					</div>
				</div>


				<script>
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

		<%@ include file="/footer.jsp"%>

	</div>
</body>
</html>