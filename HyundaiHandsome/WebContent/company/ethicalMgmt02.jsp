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
							<li class="breadcrumb-item"><a href="/ko/company/ethicalMgmt01.do">윤리경영</a></li>
							<li class="breadcrumb-item"><a href="/ko/company/ethicalMgmt02.do">그룹윤리강령</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>윤리경영</span>
					</h2>
					<div class="section box"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/company/ethicalMgmt01.do">그룹윤리경영</a></li>
								<li class="on"><a href="/ko/company/ethicalMgmt02.do">그룹윤리강령</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/company/ethicalMgmt03.do">임직원 윤리실천경영</a></li>
							</ul>
						</div>
						<div class="codeEthics">
							<h3 class="tit_subH3">그룹윤리강령</h3>
							<div class="boxed-group ethicsBox">
								<ul>
									<li><a href="#anc01">제 1장 고객에 대한 윤리</a></li>
									<li><a href="#anc02">제 2장 주주에 대한 윤리</a></li>
									<li><a href="#anc03">제 3장 협력회사에 대한 윤리</a></li>
									<li><a href="#anc04">제 4장 경쟁사에 대한 윤리</a></li>
									<li><a href="#anc05">제 5장 임직원의 기본 윤리</a></li>
									<li><a href="#anc06">제 6장 임직원에 대한 책임</a></li>
									<li><a href="#anc07">제 7장 국가와 사회에 대한 책임</a></li>
								</ul>
							</div>
							<h4 id="anc01">제1장 고객에 대한 윤리</h4>
							<h5>제1절 고객존중</h5>
							<ul>
								<li>
									<strong>· 1조 (고객의 이익 도모)</strong>
									<p>새롭고 앞선 생활문화를 제안함으로써 항상 고객의 생활 향상을 추구하여 궁극적으로 고객의 이익을 도모한다.</p>
								</li>
								<li>
									<strong>· 2조 (고객의 의견 존중)</strong>
									<p>고객의 의견에 항상 귀를 기울리고, 고객의 정당한 요구는 항상 옳다고 생각하며, 고객만족을 모든 판단 및 행동의 최우선 기준으로 삼는다.</p>
								</li>
								<li>
									<strong>· 3조 (고객의 안전 보호)</strong>
									<p>경영 및 영업활동에 있어 고객의 정신적·육체적 안전보호를 중시한다.</p>
								</li>
								<li>
									<strong>· 4조 (최고의 품질 지향)</strong>
									<p>고객에게 제공되는 상품, 서비스, 환경을 최고의 품질로 발전시킨다.</p>
								</li>
								<li>
									<strong>· 5조 (고객과의 약속 준수)</strong>
									<p>고객에게 진실만을 말하며 고객과의 약속은 철저히 준수한다.</p>
								</li>
								<li>
									<strong>· 6조 (고객의 재산과 정보 보호)</strong>
									<p>고객의 재산은 회사재산과 동일하게 보호하며, 고객과 관련된 정보는 고객의 사전 동의 없이 그 정보를 누설하거나 타 용도로 사용하지 않는다.</p>
								</li>
								<li>
									<strong>· 7조 (고객의 안전 보호)</strong>
									<p>고객이 알아야 하거나 고객에게 알려야 하는 사실은 적극 공개토록 한다.</p>
								</li>
								<li>
									<strong>· 8조 (예절 바른 응대)</strong>
									<p>단정한 용모와 복장으로 공손하고 세련된 응대를 하며, 고객을 위한 편의시설 및 영업환경을 쾌적하고 청결하게 유지한다.</p>
								</li>
							</ul>
							<h5>제2절 신생활 문화의 창조 및 제공</h5>
							<ul>
								<li>
									<strong>· 9조 (가치의 창조)</strong>
									<p>고객의 발전이 곧 우리의 발전이라는 인식하에 고객의 입장에서 필요로 하는 가치, 고객에게 실질적으로 도움이 되고 만족을 줄 수 있는 참된 가치를 끊임없이 창조한다.</p>
								</li>
								<li>
									<strong>· 10조 (건전한 소비문화 정착)</strong>
									<p>고객의 요구에 맞는 최고 품질의 상품과 서비스를 합리적인 가격으로 제공하며, 고객의 건전한 소비 문화 정착에 기여한다.</p>
								</li>
							</ul>

							<h4 id="anc02">제2장 주주에 대한 윤리</h4>
							<h5>제1절 효율경영</h5>
							<ul>
								<li>
									<strong>· 11조 (건전한 경영을 통한 이익실현)</strong>
									<p>경영의 건전성을 확보하고, 투명하고 효율적인 경영으로 주주들의 건전한 이익을 실현한다.</p>
								</li>
								<li>
									<strong>· 12조 (기업 가치 향상)</strong>
									<p>지속적인 경영혁신과 건전한 재무구조 유지를 통해 기업 가치를 향상 시켜 주주에게 투자가치를 높이고, 높은 수익 제공을 위해 노력한다.</p>
								</li>
							</ul>
							<h5>제2절 투명경영</h5>
							<ul>
								<li>
									<strong>· 13조 (회계제도의 투명성)</strong>
									<p>회계제도의 투명성 확보를 위해 내부회계 관리 시스템을 확고히 하며 회계 자료는 법령과 회계 원칙을 준수하여 작성한다.</p>
								</li>
								<li>
									<strong>· 14조 (투명한 기업공개)</strong>
									<p>모든 정보를 모든 주주에게 투명하게 제공하며, 경영지표, 사업활동 등을 성실하고 정직하게 제공한다.</p>
								</li>
							</ul>
							<h5>제3절 주주의 권리 보호</h5>
							<ul>
								<li>
									<strong>· 15조</strong>
									<p>주주의 정당한 권리행사를 최대한 보장한다.</p>
								</li>
								<li>
									<strong>· 16조</strong>
									<p>주주의 정당한 요구 및 제안을 존중하며, 경영에 적극 반영한다.</p>
								</li>
							</ul>
							<h4 id="anc03">제3장 협력회사에 대한 윤리</h4>
							<h5>제1절 투명하고 공정한 거래 문화 조성</h5>
							<ul>
								<li>
									<strong>17조 (평등한 기회 부여)</strong>
									<ul>
										<li>(1) 자유경쟁의 원칙에 입각하여 자격을 구비한 모든 협력회사에게 등록 및 선정에 참여할 수 있는 공평한 기회를 부여한다.</li>
										<li>(2) 협력회사 선정은 객관적이고 공정한 심사기준에 따라 합리적인 절차를 준수한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 18조 (공정한 거래 절차 준수)</strong>
									<ul>
										<li>(1) 모든 거래는 회사 對 회사로서 상호 대등한 위치에서 공정한 거래를 보장한다.</li>
										<li>(2) 거래상의 조건 및 절차·계약은 법규 및 시장질서에 입각하여 투명하게 수행한다.</li>
										<li>(3) 협력회사 평가는 명확한 기준을 바탕으로 실시하여 공정성을 확보한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 19조 (부당행위 금지)</strong>
									<ul>
										<li>(1) 임직원은 우월적 지위를 남용하여 협력회사에 부당행위를 강요해서는 안된다.</li>
										<li>(2) 임직원은 협력회사로부터 일체의 금품·향응·편의 등을 제공받지 말아야 한다.</li>
										<li>(3) 협력회사는 어떠한 명목으로든 임직원에게 일체의 금품·향응·편의 등을 제공해서는 안된다.</li>
										<li>(4) 협력회사가 현대백화점그룹 임직원에게 부당한 이익을 제공하여 윤리경영 실천을 저해할 경우 거래상의 불이익을 받을 수 있다.</li>
									</ul>
								</li>
							</ul>
							<h5>제2절 상호존중 풍토 조성</h5>
							<ul>
								<li>
									<strong>· 20조 (협력회사 존중)</strong>
									<p>협력회사의 사규와 절차를 존중하며, 거래상의 대등한 지위를 보장한다.</p>
								</li>
								<li>
									<strong>· 21조 (협력사원 존중)</strong>
									<p>모든 협력회사 직원에 대해서 한가족이라는 마음으로 최대한 배려하고 상호 존중하는 자세를 견지한다.</p>
								</li>
								<li>
									<strong>· 22조 (상호발전적인 자유로운 의사 교환 보장)</strong>
									<ul>
										<li>(1) 협력회사의 이익과 발전에 도움이 되는 정보를 적극 제공한다.</li>
										<li>(2) 협력회사는 거래와 관련하여 자유로운 의견 개진을 통하여, 거래의 성과를 높일 수 있는 권리가 보장된다.</li>
									</ul>
								</li>
							</ul>
							<h5>제3절 공동 발전 추구</h5>
							<ul>
								<li>
									<strong>· 23조 (공동발전 노력)</strong>
									<p>협력회사의 사규와 절차를 존중하며, 거래상의 대등한 지위를 보장한다.</p>
								</li>
								<li>
									<strong>· 24조 (윤리경영 공동 실천)</strong>
									<p>협력회사에 대해 윤리경영을 적극 홍보하여 동참할 수 있도록 하며, 협력회사는 현대백화점그룹의 윤리경영 실천을 위하여 적극 협조하여야 한다.</p>
								</li>
								<li>
									<strong>· 25조 (신뢰 구축)</strong>
									<p>협력회사에 대해 신뢰와 믿음을 줄 수 있도록 거래과정에서 합리성을 확보하며, 협력회사는 거래상 계약 ·약속한 상품과 서비스를 이행하여야 한다.</p>
								</li>
							</ul>
							<h4 id="anc04">제4장 경쟁사에 대한 윤리</h4>
							<h5>제1절 법규 및 윤리의 준수</h5>
							<ul>
								<li>
									<strong>· 26조 (법규의 준수)</strong>
									<p>기업활동을 전개하는 국내외 모든 해당지역의 제반 법규를 준수하고 상도덕을 존중하여 사업을 수행한다.</p>
								</li>
								<li>
									<strong>· 27조 (윤리의 준수)</strong>
									<p>법규에 어긋나지 않는다 하더라도 윤리기준의 테두리내에서 모든 기업활동을 하도록 한다.</p>
								</li>
							</ul>
							<h5>제2절 시장질서 존중</h5>
							<ul>
								<li>
									<strong>· 28조 (자유경쟁의 추구)</strong>
									<p>자유경쟁의 원칙에 따라 국내외 어디에서나 시장경쟁질서를 존중한다.</p>
								</li>
								<li>
									<strong>· 29조 (공정한 경쟁)</strong>
									<p>정당하게 선의의 경쟁을 실천하며, 경쟁사와 상호존중을 기반으로 하는 경영활동을 추구하고, 경쟁사의 이익을 침해하거나 약점을 부당하게 이용하지 않는다.</p>
								</li>
								<li>
									<strong>· 30조 (정당한 정보 입수와 활용)</strong>
									<p>법규와 상거래 관습에 의하여 정당하게 정보를 입수하고 활용한다.</p>
								</li>
							</ul>

							<h4 id="anc05">제5장 임직원의 기본 윤리</h4>
							<h5>제1절 기본윤리</h5>
							<ul>
								<li>
									<strong>· 31조 (임직원의 기본 자세)</strong>
									<p>임직원은 현대백화점그룹 가족으로서 긍지와 자부심을 가지며, 항상 정직하고 성실한 자세를 견지한다.</p>
								</li>
								<li>
									<strong>· 32조 (윤리적 가치관 유지)</strong>
									<p>법규에 어긋나지 않는다 하더라도 윤리기준의 테두리내에서 모든 기업활동을 하도록 한다.</p>
								</li>
								<li>
									<strong>· 33조 (적극적 윤리경영 실천)</strong>
									<p>모든 행동 및 의사결정에 윤리적 가치를 판단기준으로 삼아야 하며, 비윤리적인 행위을 인식할 경우 지체없이 상사나 윤리담당부서에 신고하여야 한다.</p>
								</li>
							</ul>
							<h5>제2절 공정한 직무수행</h5>
							<ul>
								<li>
									<strong>· 34조 (공정한 직무수행)</strong>
									<p>모든 업무를 법과 회사규정에 따라 공정하게 수행하며, 회사 규정이 없거나 규정이 명확하지 않는 업무를 처리할 경우에는 투명하고 합리적으로 수행해야 한다.</p>
								</li>
								<li>
									<strong>· 35조 (사명의 완수)</strong>
									<p>임직원은 회사의 경영이념을 공유하고, 자율성, 창의성과 더불어 도덕성과 책임감을 가지고 주어진 직무를 수행하여 사명을 완수하여야 한다.</p>
								</li>
								<li>
									<strong>· 36조 (사적인 욕심 배제)</strong>
									<p>개인적인 친소관계에 따라 업무처리가 달라지거나, 실수와 책임을 다른 직원에게 전가하는 행위를 하여서는 안된다.</p>
								</li>
								<li>
									<strong>· 37조 (정직한 보고)</strong>
									<p>고의로 사실과 다르게 문서, 계수의 조작·변조하거나 작은 성과를 부풀리는 행위로 상사나 관련부서의 의사결정 및 판단을 흐리게 하거나 오판하게 해서는 안된다.</p>
								</li>
								<li>
									<strong>· 38조 (금품/향응/편의 수수 금지)</strong>
									<ul>
										<li>(1) 임직원은 회사의 명예를 훼손하고, 공정한 업무수행에 방해하는 일체의 금품/향응/편의를 수수하여서 안된다.</li>
										<li>(2) 부득이하게 금품/향응/편의 등을 받았을 경우 즉시 윤리담당부서에 신고하고 정중히 반송해야 한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 39조 (우월적 지위를 이용한 부당이득 금지)</strong>
									<ul>
										<li>(1) 우월적 지위의 남용 또는 업무상의 편의를 대가로 협력회사 등 이해관계자로부터 부당한 요구를 하거나 이득을 취하여서는 안된다.</li>
										<li>(2) 업무에 영향을 줄 수 있는 이해관계자에게 경조사를 알려서는 안된다.</li>
									</ul>
								</li>
							</ul>
							<h5>제3절 자기계발</h5>
							<ul>
								<li>
									<strong>· 40조 (글로벌 시대에 적합한 인재상 정립)</strong>
									<p>변화와 혁신을 주도하고, 글로벌 시대를 개척해나가는 창의적 능력을 갖춘 현대백화점그룹 인재상에 부합되도록 자기계발에 꾸준히 노력해야 한다.</p>
								</li>
								<li>
									<strong>· 41조 (직무능력 향상)</strong>
									<p>유연한 사고와 창의성으로 맡은 바 직무를 완수하여, 최상의 성과를 거둘 수 있도록 직무수행능력 향상을 위해 부단한 자기계발을 하여야 한다.</p>
								</li>
							</ul>
							<h5>제4절 회사의 이익보호</h5>
							<ul>
								<li>
									<strong>· 42조 (회사 재산의 보호)</strong>
									<p>임직원은 공사의 구분을 명확히 하여 사적으로 회사의 물품이나 비용을 사용하거나 취득해서는 안된다.</p>
								</li>
								<li>
									<strong>· 43조 (고객및 사내정보 유출행위 금지)</strong>
									<p>고객의 개인정보, 사내정보는 고객 및 상사의 사전 승인 없이 개인적 이용이나 제3자에게 절대 유출해서는 안된다.</p>
								</li>
								<li>
									<strong>· 44조 (내부자거래 및 정보활용 금지)</strong>
									<p>공시되지 않은 회사의 중요한 비공개정보를 활용하여 주식을 거래하거나 거래할 수 있는 다른 사람에게 그러한 정보를 제공해서는 안된다.</p>
								</li>
							</ul>
							<h5>제5절 임직원 상호간의 윤리</h5>
							<ul>
								<li>
									<strong>· 45조 (예절 준수)</strong>
									<p>임직원 상호간에는 기본적인 예의를 지키고, 개개인의 사생활을 존중하며 타인에 대한 비방이나 음해를 해서는 안된다.</p>
								</li>
								<li>
									<strong>· 46조 (차별 금지)</strong>
									<p>학벌, 성별, 종교, 혈연, 출신지역 등에 따른 파벌 조성이나 차별대우를 해서는 안된다.</p>
								</li>
								<li>
									<strong>· 47조 (상호간 금전거래 금지)</strong>
									<p>임직원 상호간에 금전 차용 및 연대 보증, 부당 청탁 등을 해서는 안된다.</p>
								</li>
								<li>
									<strong>· 48조 (부하직원 지도 및 부당한 지시 금지)</strong>
									<ul>
										<li>(1) 상사는 윤리경영을 솔선하여 실천하고, 부하직원이 잘 지킬 수 있도록 지도해야 한다.</li>
										<li>(2) 상사는 부하 직원에게 윤리경영에 어긋나는 부당한 지시를 하지 말아야 하며, 직원은 상사로부터 윤리경영에 어긋나는 지시를 받았을 경우 거부하여야 한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 49조 (조직의 화합을 해치는 언행 금지)</strong>
									<ul>
										<li>(1) 임직원은 장소와 시간에 관계없이 시각적, 언어적, 육체적 성희롱행위를 하여서는 안된다.</li>
										<li>(2) 욕설, 폭언, 반말 등 위협적이거나 부적절한 언행을 하여서 안된다.</li>
									</ul>
								</li>
							</ul>
							<h4 id="anc06">제6장 임직원에 대한 책임</span></h4>
							<h5>제1절 성장과 발전을 위한 책임</h5>
							<ul>
								<li>
									<strong>· 50조 (임직원 존중)</strong>
									<p>임직원 개개인을 독립된 인격체로서 존중하고, 사생활을 보호하며, 임직원이 주인의식, 긍지와 보람을 가질 수 있도록 근무환경 개선과 삶의 질을 높이는데 노력한다.</p>
								</li>
								<li>
									<strong>· 51조 (인재의 발굴 및 육성)</strong>
									<p>회사는 적극적인 인력운영 프로그램을 통하여 우수한 인력을 발굴, 채용하며 윤리감성을 높이고 창의력을 향상시켜 인재로 육성하는 제도를 적극적으로 개발 시행한다.</p>
								</li>
								<li>
									<strong>· 52조 (능력개발 지원)</strong>
									<p>임직원이 직무상 필요로 하는 지식과 정보 습득에 최대한 지원을 하며 회사에 축적된 지식이 개인의 발전을 촉진 시킬 수 있도록 정보공유에 힘쓴다.</p>
								</li>
								<li>
									<strong>· 53조 (창의성 촉진)</strong>
									<p>임직원의 독창적 사고와 자율적 행동이 촉진될 수 있는 여건을 최대한 조성한다.</p>
								</li>
								<li>
									<strong>· 54조 (공정한 평가와 보상)</strong>
									<p>임직원의 능력과 업적에 따라 공정한 기준을 적용하여 평가하고 정당하게 보상한다.</p>
								</li>
							</ul>
							<h5>제5절 임직원 상호간의 윤리</h5>
							<ul>
								<li>
									<strong>· 55조 (공정한 직무수행)</strong>
									<ul>
										<li>(1) 윤리적 행동양식이 보편 타당한 가치임을 임직원이 인식할 수 있도록 공감대 형성에 노력한다.</li>
										<li>(2) 임직원이 윤리적인 사고와 행동을 할 수 있도록 윤리적 가치관을 높이고, 윤리실천에 장애가 없도록 제도적 장치를 마련한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 56조 (사명의 완수)</strong>
									<p>비윤리적인 사실을 신고한 임직원에 대한 신상을 보호하여 신분상, 정신적인 불이익을 받지 않도록 한다.</p>
								</li>
							</ul>
							<h4 id="anc07">제7장 국가와 사회에 대한 책임</h4>
							<ul>
								<li>
									<strong>· 57조 (국가와 사회 질서 존중)</strong>
									<p>기업 활동과 관련된 제반 법규를 준수하며, 사회 및 시장질서를 존중하여 사회적 기업으로서 책임을 다한다.</p>
								</li>
								<li>
									<strong>· 58조 (건전한 기업 활동)</strong>
									<p>사회적 가치관을 존중하는 건전한 기업활동 수행으로 사회발전에 기여하고, 사업상 혜택을 위한 뇌물 공여, 경쟁사 이익 침탈 등 부당한 수단을 통한 기업활동을 하지 않는다.</p>
								</li>
								<li>
									<strong>· 59조 (정치적 중립)</strong>
									<p>회사는 정치적 중립을 지키며, 임직원의 참정권 등 정치적 권리는 보장하되 직장내에서의 정치적 활동은 금지한다.</p>
								</li>
								<li>
									<strong>· 60조 (사회 공헌)</strong>
									<p>사회복지사업과 사회봉사활동 등 사회공헌활동에 적극 참여하고, 교육,문화, 복지의 진흥을 통하여 건전한 사회발전에 이바지 한다.</p>
								</li>
								<li>
									<strong>· 61조 (자원절약과 환경보호)</strong>
									<p>효율적인 자원활용을 하며, 환경법규를 준수하여 자연을 보호하고 환경오염방지에 최선을 다한다.</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="/ko/company/history01.do" class="col-md col-md-6 ">
							<div class="align-left page-prev"><span>연혁</span></div>
						</a>
						<a href="/ko/company/wayToCome.do" class="col-md col-md-6 ">
							<div class="align-right page-next"><span>오시는 길</span></div>
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