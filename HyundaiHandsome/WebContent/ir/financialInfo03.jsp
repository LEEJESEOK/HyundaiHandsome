<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 재무정보 페이지3. 테이블 내용 하드코딩
 -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>한섬 ｜ HANDSOME Corp.</title>
    <link rel="stylesheet" href="../css/font.css">
    <link rel="stylesheet" href="../css/ko_common.css">
    <link rel="stylesheet" href="../css/ko_style.css">
    <link rel="stylesheet" href="../css/swiper.min.css">
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/cmmn.js"></script>
    <script src="../js/swiper.min.js"></script>
    <link rel="icon" href="${contextPath}/images/common/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="${contextPath}/images/common/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon" href="${contextPath}/images/common/apple-touch-icon.png" sizes="180x180" />
	<link rel="icon" href="${contextPath}/images/common/favicon-32x32.png" sizes="32x32" type="image/png" />
	<link rel="icon" href="${contextPath}/images/common/favicon-16x16.png" sizes="16x16" type="image/png" />
    <!-- <script src="../js/js.js"></script> -->
</head>
<body>
    <div class="wrap">
    
    <%@ include file="/header.jsp"%>

        <!--  container -->
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">IR</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/financialInfo01.do">재무정보</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/financialInfo03.do">손익계산서</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>재무정보</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/ir/financialInfo01.do">요약재무제표</a></li>
								<li><a href="/ko/ir/financialInfo02.do">재무상태표</a></li>
								<li class="on"><a href="/ko/ir/financialInfo03.do">손익계산서</a></li><!-- 활성화된 페이지 li class="on" -->
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">연결 손익계산서</h3>
							<p class="txt-infoR btnAe">(단위: 원)</p>
							<div class="">
								<table class="table liner-show bBn">
									<colgroup>
										<col>
										<col style="width: 39%;">
										<col style="width: 39%;">
									</colgroup>
									<thead>
										<tr>
											<th>과목</th>
											<th>34기 (2020년 1월 1일 ~2020년 12월 31일)</th>
											<th>33기 (2019년 1월 1일 ~2019년 12월 31일)</th>
										</tr>
									</thead>
									<tbody>
										<tr class="sum">
											<td class="tTdl_50">매출액</td>
											<td>1,195,899,640,313</td>
											<td>1,259,801,685,199</td>
										</tr>
										<tr>
											<td class="tTdl_50">매출원가</td>
											<td>490,189,971,546</td>
											<td>508,407,455,969</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">매출총이익</td>
											<td>705,709,668,767</td>
											<td>751,394,229,230</td>
										</tr>
										<tr>
											<td class="tTdl_50">판매비와 관리비</td>
											<td>603,656,694,224</td>
											<td>644,844,430,366</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">영업이익</td>
											<td>102,052,974,543</td>
											<td>106,549,798,864</td>
										</tr>
										<tr>
											<td class="tTdl_50">법인세비용차감전순이익</td>
											<td>112,211,360,359</td>
											<td>113,509,240,143</td>
										</tr>
										<tr>
											<td class="tTdl_50">법인세비용</td>
											<td>27,322,575,869</td>
											<td>28,248,270,508</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">당기순이익</td>
											<td>84,888,784,490</td>
											<td>85,260,969,635</td>
										</tr>
										<tr>
											<td class="tTdl_50">기타포괄손익</td>
											<td>3,149,057,382</td>
											<td>- 20,930,553,634</td>
										</tr>
										<tr>
											<td class="tTdl_50">총포괄이익</td>
											<td>88,037,841,872</td>
											<td>64,330,416,001</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h4 class="tit_subH4s">주당손익</h4>
							<div class="">
								<table class="table liner-rows">
									<colgroup>
										<col>
										<col style="width: 39%;">
										<col style="width: 39%;">
									</colgroup>
									<tbody>
										<tr>
											<th class="tTdl_50">기본주당순이익</th>
											<td>3,873</td>
											<td>3,881</td>
										</tr>
										<tr class="trBb">
											<th class="tTdl_50">희석주당순이익(손실)</th>
											<td>3,873</td>
											<td>3,881</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">별도 손익계산서</h3>
							<p class="txt-infoR btnAe">(단위: 원)</p>
							<div class="">
								<table class="table liner-show bBn">
									<colgroup>
										<col>
										<col style="width: 39%;">
										<col style="width: 39%;">
									</colgroup>
									<thead>
										<tr>
											<th>과목</th>
											<th>34기 (2020년 12월 31일 현재)</th>
											<th>33기 (2019년 12월 31일 현재)</th>
										</tr>
									</thead>
									<tbody>
										<tr class="sum">
											<td class="tTdl_50">매출액</td>
											<td>1,194,779,636,319</td>
											<td>994,560,575,546</td>
										</tr>
										<tr>
											<td class="tTdl_50">매출원가</td>
											<td>489,460,158,923</td>
											<td>421,442,498,055</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">매출총이익</td>
											<td>705,319,477,396</td>
											<td>573,118,077,491</td>
										</tr>
										<tr>
											<td class="tTdl_50">판매비와 관리비</td>
											<td>600,484,948,937</td>
											<td>477,369,342,037</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">영업이익</td>
											<td>104,834,528,459</td>
											<td>95,748,735,454</td>
										</tr>
										<tr>
											<td class="tTdl_50">법인세비용차감전순이익</td>
											<td>113,818,271,097</td>
											<td>101,202,176,830</td>
										</tr>
										<tr>
											<td class="tTdl_50">법인세비용</td>
											<td>27,322,575,869</td>
											<td>25,600,454,693</td>
										</tr>
										<tr class="sum">
											<td class="tTdl_50">당기순이익</td>
											<td>86,495,695,228</td>
											<td>75,601,722,137</td>
										</tr>
										<tr>
											<td class="tTdl_50">기타포괄손익</td>
											<td>3,159,730,336</td>
											<td>- 20,876,489,608</td>
										</tr>
										<tr>
											<td class="tTdl_50">총포괄이익</td>
											<td>89,655,425,564</td>
											<td>54,725,232,529</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h4 class="tit_subH4s">주당손익</h4>
							<div class="">
								<table class="table liner-rows">
									<colgroup>
										<col>
										<col style="width: 39%;">
										<col style="width: 39%;">
									</colgroup>
									<tbody>
										<tr>
											<th class="tTdl_50">기본주당순이익</th>
											<td class="">3,937</td>
											<td class="">3,441</td>
										</tr>
										<tr class="trBb">
											<th class="tTdl_50">희석주당순이익(손실)</th>
											<td>3,937</td>
											<td>3,441</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="/ko/ir/governance01.do" class="col-md col-md-6">
							<div class="align-left page-prev"><span>기업지배구조</span></div>
						</a>
						<a href="https://finance.naver.com/item/main.nhn?code=020000" target="_blank" class="col-md col-md-6">
							<div class="align-right page-next"><span>주가정보</span></div>
						</a>
					</div>
					<!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				</div>
			</div>
			<!-- // container -->
        
<%@ include file="/footer.jsp" %>

    </div>
</body>
</html>