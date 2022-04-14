<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 재무정보 페이지2. 테이블 내용 하드코딩
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
							<li class="breadcrumb-item"><a href="/ko/ir/financialInfo02.do">재무상태표</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>재무정보</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/ir/financialInfo01.do">요약재무제표</a></li>
								<li class="on"><a href="/ko/ir/financialInfo02.do">재무상태표</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/financialInfo03.do">손익계산서</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">연결 재무상태표</h3>
							<p class="txt-infoR btnAe">(단위: 원)</p>
							<div class="">
								<table class="table liner-show bBn">
									<colgroup>
										<col style="width: 10%;">
										<col style="width: 22%;">
										<col style="width: 34%;">
										<col style="width: 34%;">
									</colgroup>
									<thead>
										<tr>
											<th colspan="2">과목</th>
											<th>34기 (2020년 12월 31일 현재)</th>
											<th>33기 (2019년 12월 31일 현재)</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="9" class="tBb">자산</th>
											<td class="tTb tTdl_50">유동자산</td>
											<td>819,668,931,595</td>
											<td>719,847,891,277</td>											
										</tr>
										<tr>
											<td class="tTdl_50">- 현금 및 현금성자산</td>
											<td>43,393,377,539</td>
											<td>37,408,402,549</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 재고자산</td>
											<td>446,329,047,477</td>
											<td>447,593,653,037</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">비유동자산</td>
											<td>618,875,217,866</td>
											<td>603,796,653,657</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 투자부동산</td>
											<td>103,366,591,501</td>
											<td>101,653,836,414</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 유형자산</td>
											<td>324,411,229,734</td>
											<td>337,101,462,596</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 무형자산</td>
											<td>122,061,175,081</td>
											<td>92,786,131,666</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 기타비유동자산</td>
											<td>-</td>
											<td>-</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">자산총계</td>
											<td>1,438,544,149,461</td>
											<td>1,323,644,544,934</td>
										</tr>
										<tr>
											<th rowspan="3" class="tBb">부채</th>
											<td class="tTb tTdl_50">유동부채</td>
											<td>230,906,449,007</td>
											<td>218,044,654,314</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">비유동부채</td>
											<td>81,605,457,015</td>
											<td>60,045,608,133</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">부채총계</td>
											<td>312,511,906,022</td>
											<td>278,090,262,447</td>
										</tr>
										<tr>
											<th rowspan="8" class="tBb">자본</th>
											<td class="tTb tTdl_50">지배기업지분</td>
											<td>1,122,106,474,243</td>
											<td>1,045,554,282,487</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">- 자본금</td>
											<td>12,315,000,000</td>
											<td>12,315,000,000</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">- 자본잉여금</td>
											<td>122,204,783,737</td>
											<td>122,204,783,737</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">- 기타자본구성요소</td>
											<td>- 24,005,713,493</td>
											<td>- 22,205,713,493</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">- 기타포괄손익누계액</td>
											<td>- 12,686,540,355</td>
											<td>- 15,546,975,212</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">- 이익잉여금</td>
											<td>1,024,278,944,354</td>
											<td>948,787,187,455</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">비지배주주지분</td>
											<td>3,925,769,196</td>
											<td>-</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">자본총계</td>
											<td>1,126,032,243,439</td>
											<td>1,045,554,282,487</td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="tfTdr_50">
											<td colspan="2">부채와 자본 총계</td>
											<td>1,438,544,149,461</td>
											<td>1,323,644,544,934</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<h3 class="tit_subH3">별도 재무상태표</h3>
							<p class="txt-infoR btnAe">(단위: 원)</p>
							<div class="">
								<table class="table liner-show bBn">
									<colgroup>
										<col style="width: 10%;">
										<col style="width: 22%;">
										<col style="width: 34%;">
										<col style="width: 34%;">
									</colgroup>
									<thead>
										<tr>
											<th colspan="2">과목</th>
											<th>34기 (2020년 12월 31일 현재)</th>
											<th>33기 (2019년 12월 31일 현재)</th>											
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="8" class="tBb">자산</th>
											<td class="tTb tTdl_50">유동자산</td>											
											<td>813,881,920,015</td>
											<td>718,505,903,497</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 현금 및 현금성자산</td>											
											<td>35,495,576,177</td>
											<td>37,051,712,277</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 재고자산</td>
											<td>445,055,949,243</td>
											<td>446,588,233,525</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">비유동자산</td>
											<td>622,693,302,93</td>
											<td>603,697,864,392</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 투자부동산</td>
											<td>103,366,591,501</td>
											<td>101,653,836,414</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 유형자산</td>
											<td>323,577,997,101</td>
											<td>336,479,060,354</td>
										</tr>
										<tr>
											<td class="tTdl_50">- 무형자산</td>
											<td>120,921,394,903</td>
											<td>92,762,732,843</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">자산총계</td>
											<td>1,436,575,223,008</td>
											<td>1,322,203,767,889</td>
										</tr>
										<tr>
											<th rowspan="3" class="tBb">부채</th>
											<td class="tTb tTdl_50">유동부채</td>
											<td>230,277,358,463</td>
											<td>215,434,860,490</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">비유동부채</td>
											<td>79,805,457,015</td>
											<td>60,045,608,133</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">부채총계</td>
											<td>310,082,815,478</td>
											<td>275,480,468,623</td>
										</tr>
										<tr>
											<th rowspan="6" class="tBb">자본</th>
											<td class="tTb tTdl_50">자본금</td>
											<td>12,315,000,000</td>
											<td>12,315,000,000</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">자본잉여금</td>
											<td>130,806,679,341</td>
											<td>130,806,679,341</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">기타자본구성요소</td>
											<td>- 22,205,713,493</td>
											<td>- 22,205,713,493</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">기타포괄손익누계액</td>
											<td>- 12,391,853,812</td>
											<td>- 15,262,961,623</td>
										</tr>
										<tr>
											<td class="tTb tTdl_50">이익잉여금</td>
											<td>1,017,968,295,494</td>
											<td>941,070,295,041</td>
										</tr>
										<tr class="trBb sum">
											<td class="tTdl_50">자본총계</td>
											<td>1,126,429,407,530</td>
											<td>1,046,723,299,266</td>
										</tr>
									</tbody>
									<tfoot>
										<tr class="tfTdr_50">
											<td colspan="2">부채와 자본 총계</td>
											<td>1,436,575,223,008</td>
											<td>1,322,203,767,889</td>
										</tr>
									</tfoot>
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