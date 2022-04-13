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
		<link rel="icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${contextPath}/images/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="${contextPath}/images/favicon-16x16.png" sizes="16x16" type="image/png">
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
							<li class="breadcrumb-item"><a href="${contextPath}/company/ethicalMgmt01.do">윤리경영</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/ethicalMgmt01.do">그룹윤리경영</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>윤리경영</span>
					</h2>
					<div class="section box">
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li class="on"><a href="${contextPath}/company/ethicalMgmt01.do">그룹윤리경영</a></li>
								<li><a href="${contextPath}/company/ethicalMgmt02.do">그룹윤리강령</a></li>
								<li><a href="${contextPath}/company/ethicalMgmt03.do">임직원 윤리실천경영</a></li>
							</ul>
						</div>

						<div class="operationArea">
							<h3 class="tit_subH3">그룹윤리경영</h3>
							<p class="h3Sub">현대백화점그룹은 모든 경영활동에 있어 ‘윤리’를 최우선 가치로 생각하며 모든 업무를 투명하고 공정하며 합리적으로 수행해 나가고 있습니다.</p>
							<p class="mt30"><img src="${contextPath}/company/images/thumbs/company-cont-4.jpg" alt=" 하단 텍스트 참고"></p>
							<div class="hidden">
								<ul>
									<li><strong>주주</strong>효율경영: 성과주의 문화의 정착 건전하고 투명한 경영</li>
									<li><strong>고객</strong>고객만족경영: 고객의 권익보호 앞선 생활문화 구현</li>
									<li><strong>임직원</strong>임직원존중경영: 유연하고 창의적인 기업문화 조성 상호발전을 위한 책임완수</li>
									<li><strong>협력회사</strong>투명경영: 투명한 거래문화 정착  합리적인 상호발전 추구</li>
									<li><strong>국가와 사회</strong>사회책임경영: 사회질서 및 법규 준수 사회적 책임 완수</li>
								</ul>
							</div>
							<p>현대백화점그룹은 고객의 행복과 주주 및 구성원의 감동을 최우선으로 하여 새로운 가치와 미래창조를 기업이념으로 하고 있습니다. </p>
							<p>
								현대백화점그룹이 지향하는 기업이념은 기업이 사회의 구성원으로써 책임과 의무를 충실히 이행하고 기업가치를 끊임없이 증대시킴으로써 고객, 주주, 협력회사, 임직원,<br>
								국가와 사회 등 모든 이해관계자들로부터 사랑과 신뢰를 받는 기업이 되는 것 입니다.
							</p>
							<p>현대백화점그룹은 이를 달성하기 위해 모든 기업활동에 있어 ‘윤리’를 최고 가치로 하여 모든 업무 활동을 투명하고 공정하며 합리적으로 수행하고 있습니다.</p>
							<h3 class="tit_subH3">윤리헌장</h3>
							<p>
								현대백화점그룹 임직원은 윤리경영이 기업경쟁력의 원동력임을 깊이 인식하여 ‘정직과 신뢰’를 바탕으로 직무를 윤리적/합법적으로 수행하고, 공정하고 투명한<br>
								거래질서 확립과 사회적 책임을 충실히 이행함으로써 신뢰와 존경을 받는 기업이 되고자 다음과 같이 실천합니다.
							</P>
							<ul class="operationLit">
								<li>
									<strong>하나. 우리는 고객생활 향상을 추구한다.</strong>
									<p>우리는 고객만족을 최우선으로 삼고, 고객의 요구와 기대에 부응하는 가치창출과 새롭고 앞선 생활 문화를 제안함으로써 고객의 생활향상을 추구한다.</p>
								</li>
								<li>
									<strong>하나. 우리는 주주의 권리와 이익을 보장한다.</strong>
									<p>우리는 모든 주주를 공정하고 평등하게 대우하여 정당한 요구와 제안을 존중하여 합리적이고 투명한 경영활동을 통해 기업가치를 극대화 한다.</p>
								</li>
								<li>
									<strong>하나. 우리는 협력회사와 상호발전을 도모한다.</strong>
									<p>우리는 모든 협력회사에 공정한 기회를 부여하고 투명한 거래 풍토를 조성하여 상호신뢰와 협력관계를 구축함으로써 공존 및 공동발전을 도모한다.</p>
								</li>
								<li>
									<strong>하나. 우리는 임직원의 보람과 행복을 중시한다.</strong>
									<p>
										우리는 모든 임직원을 회사의 가장 소중한 자산으로 여기고, 개개인의 인간적 존엄성을 존중하며 각자의 자질과 능력에 따라 공평한 기회를 제공하고<br>
										정당한 평가를 통해 보상 받을 수 있는 조직문화의 조성을 통해 개인의 꿈과 미래가 보장되는 자랑스러운 일터가 되도록 노력한다.
									</p>
								</li>
								<li>
									<strong>하나. 우리는 국가와 사회발전에 공헌한다.</strong>
									<p>우리는 국가와 사회의 가치관을 존중하고 제안 법규를 준수하여 건전한 기업 활동을 통해 국가경제와 사회발전에 기여할 수 있도록 노력한다.</p>
								</li>
								<li>
									<strong>하나. 우리의 약속</strong>
									<p>
										우리는 현대백화점 인으로서의 긍지와 자부심을 갖고 인간미, 도덕성, 예의범절을 생활화하며 명예와 품위를 지키며 정직하고 공정한 자세로<br>
										업무에 임하여 건전하고 깨끗한 기업문화를 조성하는데 노력한다.
									</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="${contextPath}/company/history01.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>연혁</span></div>
						</a>
						<a href="${contextPath}/company/wayToCome.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>오시는 길</span></div>
						</a>
					</div>
				</div>
			</div>
			<%@ include file="../footer.jsp"%>
		</div> <!-- div-wrap END -->
	</body>
</html>