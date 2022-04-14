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
							<li class="breadcrumb-item"><a href="${contextPath}/company/ethicalMgmt01.do">윤리경영</a></li>
							<li class="breadcrumb-item"><a href="${contextPath}/company/ethicalMgmt03.do">임직원 윤리실천경영</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>윤리경영</span>
					</h2>
					<div class="section box">
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="${contextPath}/company/ethicalMgmt01.do">그룹윤리경영</a></li>
								<li><a href="${contextPath}/company/ethicalMgmt02.do">그룹윤리강령</a></li>
								<li class="on"><a href="${contextPath}/company/ethicalMgmt03.do">임직원 윤리실천경영</a></li>
							</ul>
						</div>
						<div class="codeEthics">
							<h3 class="tit_subH3">임직원 윤리실천경영</h3>
							<div class="boxed-group ethicsBox col3">
								<ul>
									<li><a href="#anc01">제 1장 고객에 대한 윤리준수</a></li>
									<li><a href="#anc02">제 2장 공정하고 효율적인 직무수행</a></li>
									<li><a href="#anc03">제 3장 이해관계자와의 투명하고 정당한 관계유지</a></li>
									<li><a href="#anc04">제 4장 회사의 자산 보호</a></li>
									<li><a href="#anc05">제 5장 정보의 보호 및 공유</a></li>
								</ul>
							</div>
							<h4 id="anc01">제1장 고객에 대한 윤리준수</h4>
							<ul>
								<li>
									<strong>· 항상 고객을 존중하고 고객의 입장에서 서비스 및 편익을 제공하여 고객에게 사랑과 신뢰를 받을 수 있도록 최선을 다해야 한다.</strong>
									<ul>
										<li>1. 고객에게는 진실만을 말하며 고객과의 약속은 아무리 사소한 것이라도 반드시 지키며, 고객감동을 모든 판단과 행동의 최우선 기준으로 삼는다.</li>
										<li>2. 고객의 의견과 제안사항을 항상 경청하여 최대한 신속하게 처리해야 하며, 본인의 업무역량을 넘어서는 경우 상사에게 보고하고 조치해야 한다.</li>
										<li>3. 고객보호와 고객서비스 증진을 위하여 회사에서 시행하는 제반 제도를 숙지·이행하여 제도의 효과성을 높이는데 적극 노력해야 한다.</li>
										<li>4. 고객과 관련된 정보는 엄격히 보호하며, 고객의 사전 동의 없이 그 정보를 공개하거나 타 용도로 사용해서는 안된다.</li>
										<li>5. 항상 자기계발을 통하여 새롭고 앞선 생활문화를 제안해야 한다.</li>
									</ul>
								</li>
							</ul>
							<h4 id="anc02">제2장 공정하고 효율적인 직무수행</h4>
							<ul>
								<li>
									<strong>· 자신의 직무에 최선의 노력을 경주하며 조직내 원활한 커뮤니케이션과 유연하고 창의적인 조직문화를 만들기 위하여 노력한다.</strong>
									<ul>
										<li>1. 회사의 경영방침과 전략을 잘 이해하고, 맡은 직무에 대해 최상의 노력을 기울여 자신의 책임과 목표를 완수해야 한다.</li>
										<li>2. 업무 처리에 있어 사적인 욕심을 버리고 투명하고 공명정대한 업무 처리가 되도록 해야 한다.</li>
										<li>3. 임직원은 창조력이 높은 유연하고 창의적인 조직문화를 만들기 위하여 노력하여야 한다.</li>
										<li>4. 상사는 부하직원의 창의성 개발을 위해 자율권 부여 등 적극적으로 노력하여야 하며, 윤리경영을 준수할 수 있도록 교육과 지도를 해야 한다.</li>
										<li>5. 맡은 직무에 적합한 능력을 발휘할 수 있도록 자기개발을 끊임없이 해야한다.</li>
										<li>6. 자신이 수행하는 직무가 자신의 이해와 관련되어 공정한 직무수행이 어렵다고 판단될 경우, 당해 직무에 대한 회피 여부에 대하여 부서장 또는 윤리담당부서와 상담 후 처리해야 한다.</li>
										<li>7. 상사는 직위를 이용하여 부하직원에게 부당한 업무지시나 개인적인 심부름을 시키는 행위를 해서는 안된다.</li>
										<li>8. 상사가 본인 또는 타인의 부당한 이익을 도모하기 위하여 공정한 업무수행을 저해하는 부당한 지시를 하는 경우 그 사유를 상사에게 소명하여 지시이행을 거부해야 하며, 부당성이 개선되지 않거나 개인적인 불이익을 당할 경우 차상급자 또는 윤리담당부서와 상담하여 처리해야한다.</li>
										<li>9. 모든 보고는 사실에 입각하여 신속히 해야 하며, 부당한 이익을 추구하거나 불리한 조치를 피하기 위해 허위 보고를 해서는 안된다.</li>
										<li>10. 모든 의사결정과 관련된 정보와 문서는 자료화하여 보존년한까지 보존하여야 하며, 무단으로 폐기·훼손·은닉 등을 해서는 안된다.</li>
										<li>11. 업무시간 중 업무에 집중하여야 하며, 개인적인 용무로 업무수행의 효율을 떨어지게 하여서는 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 조직의 화합과 단합을 저해하며, 구성원간 불협화음을 조장하는 행위를 해서는 안된다.</strong>
									<ul>
										<li>12. 인종, 종교, 성별, 연령, 학연, 지연, 혈연, 신체적 특성 차이 등을 이유로 불쾌감을 주거나 괴롭힘을 가하는 행위를 해서는 안된다.</li>
										<li>13. 조직을 와해시키는 파벌 조성행위, 유언비어 유포 및 음해행위를 해서는 안된다.</li>
										<li>14. 욕설, 반말, 고성 등 위협적이거나 부적절한 언행을 해서는 안된다.</li>
										<li>15. 다음과 같은 성적 수치심을 유발시키는 신체적/시각적/언어적 성희롱 행위를 해서는 안된다.
											<ul>
												<li>(1) 성적 수치심을 유발하는 신체부위를 만지는 행위</li>
												<li>(2) 성적인 신체적 접촉</li>
												<li>(3) 성적인 농담이나 음담패설</li>
												<li>(4) 회식자리 등에서 술 시중을 강요하는 행위</li>
												<li>(5) 외모에 대한 비유나 평가</li>
												<li>(6) 음란한 사진 등을 보거나 보여주는 행위</li>
												<li>(7) 성차별적인 언어나 행동</li>
											</ul>
										</li>
										<li>16. 임직원 상호간의 선물 제공 행위는 일체 금지한다. 단, 상사가 자비로 부하직원에게 선물하는 것과 부서원들간의 생일, 기념일 등의 선물은 예외로 한다.</li>
										<li>17. 임직원 상호간의 금전거래는 채무불이행 등의 문제로 동료관계를 약화시키고 근무분위기를 해쳐 회사업무에 지장을 초래할 수 있으므로 일절 해서는 안된다.</li>
									</ul>
								</li>
							</ul>
							<h4 id="anc03">제3장 이해관계자와의 투명하고 정당한 관계유지</h4>
							<ul>
								<li>
									<strong>· 본인 및 이해관계자의 공정한 업무수행에 영향을 끼칠 수 있는 금품수수, 알선/ 청탁, 금전대차, 대출보증 등 윤리적 지탄을 받을 만한 행위를 해서는 안된다.</strong>
									<ul>
										<li>1. 이해관계자로부터 현금과 상품권 등 유가증권은 액수, 시기를 불문하고 절대 수수해서는 안된다.</li>
										<li>2. 재직중에 이해관계자와 아래와 같은 계약관계를 맺거나 부당한 청탁을 해서는 안되며, 친인척(배우자, 자녀, 형제, 부모)이 아래 계약관계에 있을 경우<br>윤리담당부서에 신고하는 등 공정한 거래관계를 위해 필요한 조치를 취해야 한다.
											<ul>
												<li>(1) 업무와 직접적으로 이해관계에 있는 회사의 임직원 겸임</li>
												<li>(2) 금전대차, 담보제공 및 채무보증, 부동산 또는 동산의 임대차 관계</li>
												<li>(3) 퇴직 후 고용 및 취업 알선 약속</li>
												<li>(4) 가족, 친인척 등의 부당한 취업/거래 청탁이해관계자가 회사 또는 협력회사와 부당거래를 하도록 알선, 청탁하는 행위를 해서는 안된다.</li>
											</ul>
										</li>
										<li>3. 이해관계자가 회사 또는 협력회사와 부당거래를 하도록 알선, 청탁하는 행위를 해서는 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 어떠한 경우에도 이해관계자가 제공하는 향응접대나 편의를 받아서는 안된다. </strong>
									<ul>
										<li>4. 이해관계자로부터 식사, 음주, 오락 등의 접대를 받는 것은 향응수수의 대표적 사례이며, 특히 접대를 암시하거나 요구하는 것은 중대한 부당행위에 해당된다.</li>
										<li>5. 이해관계자와 발생하는 접대 비용은 당사 부담으로 하며 임직원은 아래 내용을 준수하여야 한다.
											<ul>
												<li>(1) 협력회사와의 모든 업무는 근무시간에 이루어질 수 있도록 해야 한다.</li>
												<li>(2) 부득이 이해관계자와 식사를 하는 경우 점심식사(1인 2만원, 총 10만원 미만 한도)에 한하며, 저녁식사는 원칙적으로 불허한다.</li>
												<li>(3) 협력회사 주관 행사 참여시에는 담당임원의 사전 승인을 받아야 한다.</li>
												<li>(4) 부서회식 등의 장소에서 이해관계자와 우연히 만나게 되어 이해관계자가 먼저 비용을 계산했을 경우 부서장에게 보고하고 회사경비로<br>처리한 후 이해관계자에게 되돌려 주어야 한다.</li>
											</ul>
										</li>
										<li>6. 이해관계자 및 직원간 골프를 하여서는 안된다. 단, 공식적인 모임인 경우 임원에 한하여 인정되며, 임원의 비용은 회사에서 부담해야 한다.</li>
										<li>7. 이해관계자와 고스톱, 포커, 카지노 등 도박성이 있는 행위를 하여서는 안된다.</li>
										<li>8. 이해관계자와 동행하는 여행에 대해서는 다음 사항을 준수해야 한다.
											<ul>
												<li>(1) 시장조사 및 박람회 참가 여행, 연수 및 시찰 등 개인 목적의 업무와 관련한 여행은 보고해야 한다.</li>
												<li>(2) 개인 자비를 부담하는 여행 일지라도 보고해야 한다.</li>
												<li>(3) 이해관계자와 관광목적의 여행은 하여서는 안된다.</li>
											</ul>
										</li>
									</ul>
								</li>
								<li>
									<strong>· 우월적 지위를 이용하여 이해관계자에게 부당한 요구를 하거나 대가를 받아서는 안된다.</strong>
									<ul>
										<li>9. 거래상의 우월적 지위를 이용하여 이해관계자에게 부당한 요구를 해서는 안된다.
											<ul>
												<li>(1) 회식비, 출장비 등의 전가행위 및 카드대금, 외상대금, 대출금 대위변제 요구</li>
												<li>(2) 인사청탁, 상품판매, 보험가입, 다단계업체 참여, 사채대여 요구</li>
											</ul>
										</li>
										<li>10. 고의적인 업무지연으로 협력회사로부터 부당한 대가를 요구해서는 안된다.</li>
										<li>11. 야유회, 체육대회, 워크숍 등의 사내 행사시 이해관계자에게 어떠한 후원·협찬을 요구하거나 제공받아서는 안되며, 행사내용을 사전에 고지하는 행위는<br>후원/협찬을 받기 위한 의도적인 행위로 간주한다.</li>
										<li>12. 이해관계자로부터 상품, 기타물품 구입시 무상취득 및 규정상의 직원우대 할인율 이상의 과도한 할인혜택을 요구하거나, 대금지불를 지연하여서는 안된다.</li>
										<li>13. 이해관계자의 약점을 이용하여 부당이득을 제공할 것을 암시·요구 해서는 안된다.</li>
										<li>14. 협력회사의 선택·평가에 결정적 영향을 행사하는 위치에 있는 임직원이 특정회사에 특혜를 주거나 반대로 차별하기 위해 영향력을 행사하거나 시도하여서는 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 사회통념상 인정되는 수준을 초과하는 선물 및 기념품·판촉물 등을 받아서는 안된다.</strong>
									<ul>
										<li>15. 이해관계자로부터 선물은 원칙적으로 받지 않아야 하며, 부득이하게 수취시에는 다음 사항을 준수하여 처리해야 한다.
											<ul>
												<li>가. 금전 수수시
													<ul>
														<li>-제공자에게 금전 반환 서신 발송 및 송금</li>
														<li>-금품 수수 신고서와 반환 영수증 사본을 해당 사업소 지원팀에 제출</li>
													</ul>
												</li>
												<li>나. 선물수수시
													<ul>
														<li>-반송 서신과 함께 반송하고 반송 사실을 해당사업소 지원팀에 신고</li>
														<li>-반송이 불가능할 경우 해당 사업소 지원팀에 선물을 신고하고 지원팀에서는 복지단체 기증 또는 폐기 등 합리적으로 처리한다.</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											16. 회사 로고나 명칭이 표시되어 있으며, 그 가격이 사회통념상 간소한 수준을 넘지 않는 판촉, 홍보용 기념품 등은 받을 수 있으나 고가품의 경우<br>'선물수수시 반송 절차'에 준하여 처리해야 한다.
										</li>
										<li>17. 배우자 및 친인척을 통한 수수행위도 본인의 행위로 본다.</li>
									</ul>
								</li>
							</ul>
							<h4 id="anc04">제4장 회사의 자산 보호</h4>
							<ul>
								<li>
									<strong>· 회사 자산을 개인적인 이익 취득 및 업무와 관련 없는 용도에 사용해서는 안된다.</strong>
									<ul>
										<li>1. 회사의 중요한 내부정보를 제공하고 그 대가를 수수하거나, 본인이 직접 정보를 이용하여 주식투자 등 부정한 이득을 얻는 행위를 해서는 안된다.</li>
										<li>2. 직무와 관련해 취득한 지적재산권, 정보, 기술 등은 퇴직후에도 개인적인 이득을 얻기 위해 이용하거나 타인에게 제공해서는 안된다.</li>
										<li>3. 직무를 수행함에 있어 회사와 개인의 이해관계가 상충될 경우에는 회사의 입장에서 먼저 생각하고 회사의 이익에 기여하는 방향으로 결정하며,<br>판단이 어려운 때에는 즉시 상사나 윤리담당부서와 상의 후 처리해야 한다.</li>
										<li>4. 비품, 소모품, 시설 등 회사의 자산은 업무 활동을 위해서만 활용되어야 하며 개인적인 목적으로 활용되어서는 안된다.</li>
										<li>5. 회사의 정보통신 시스템은 사업수행이나 허가 받은 목적으로만 사용되어야 하며 개인적인 용도로 사용해서는 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 회사의 허가 없이 업무에 지장을 줄 수 있는 영리목적의 부업활동이나 이중취업을 해서는 안된다.</strong>
									<ul>
										<li>6. 회사의 허가 없이 본인의 영리를 위하여 업무에 지장을 줄 수 있는 회사업무 이외 부업활동이나 이중취업, 별도의 회사를 설립하여 운영하여서는 안된다.</li>
										<li>7. 회사와 거래관계가 있는 협력회사에 본인 또는 배우자/친인척 명의로 우회적인 투자를 해서는 안된다.</li>
										<li>8. 다단계, 학습지 등의 판매행위는 본인이 직접 하는 것은 물론이며, 가족이나 지인이 하는 것을 도와줄 목적으로 임직원, 협력회사, 이해관계자에게<br>물품 구매를 강요하는 것도 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 회사의 예산은 목적과 기준에 맞게 합리적이고 효율적으로 집행하여야 한다.</strong>
	 								<ul>
										<li>9. 모든 예산은 규정에 의한 원래의 용도에 맞게 사용해야 하며 불필요한 경비를 발생시키거나 임의로 다른 목적에 전용해서는 안된다.</li>
										<li>10. 회사의 예산은 효율성 측면에서 반드시 경제성을 검토하여 사용하여야 한다.</li>
										<li>11. 회사업무와 무관한 용도로 지출한 비용을 회사경비로 처리해서는 안된다.
											<ul>
												<li>(1) 접대비, 부서운영비, 출장비 등을 개인적인 접대나 교제비 등으로 사용해서는 안된다.</li>
												<li>(2) 법인카드를 개인적인 목적으로 사용해서는 안된다.</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
							<h4 id="anc05">제5장 정보의 보호 및 공유</h4>
							<ul>
								<li>
									<strong>· 회사의 영업비밀이나 보안을 요구하는 정보를 회사의 승인 없이 절대로 유출해서는 안된다.</strong>
									<ul>
										<li>1. 회사 정보를 회의, 대외강연, 세미나 등에서 강연·공개하거나 외부기관에 제공할 때에는 공식적인 승인 절차를 거쳐야만 한다.</li>
										<li>2. 관리자는 회사의 중요한 정보가 외부에 무단으로 유출되지 않도록 관리통제를 하여야 하며, 이를 위해 적절한 보안조치를 취해야 한다.</li>
									</ul>
								</li>
								<li>
									<strong>· 회사와 관련된 정보를 왜곡·날조·무단 훼손하거나, 허위사실이나 유언비어를 유포해서는 안된다.</strong>
									<ul>
										<li>3. 회사와 관련된 정보를 자의적으로 조작·변조하여 상사나 관련 부서의 의사결정 및 판단을 흐리게 하거나 오판을 하게 하는 행위를 해서는 안된다.</li>
										<li>4. 본인의 실수나 부정을 은폐·축소하기 위해 업무상 정보를 왜곡·날조해서는 안되며, 관련 자료 및 데이터를 조작/무단 훼손해서는 안된다.</li>
										<li>5. 임직원의 사생활에 대해 근거 없는 사실을 유포하거나, 과장 또는 험담을 해서는 안된다.</li>
									</ul>
								</li>
								<li>
									<strong>· 직무수행과 관련된 중요한 정보는 인지하는 즉시 업무에 필요한 사람과 공유를 해야 한다.</strong>
									<ul>
										<li>6. 회사업무에 도움이 되는 정보를 개인적으로 독점하거나 사장하여서는 안된다.</li>
										<li>7. 회사경영에 중요하다고 판단되는 정보는 시기를 놓치지 않고 보고하거나 전달해야 한다.</li>
										<li>8. 회사를 위해 꼭 필요한 정보라 하더라도, 이를 부당한 방법으로 취득하거나 유용해서는 안된다.</li>
									</ul>
								</li>
							</ul>
						</div>
						<p class="btnAe"><a href="http://www.ehyundai.com/newPortal/ir/ETH/ETH000008.do?ir=3" target="_blank" class="btncomm">사이버 신문고</a></p>
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