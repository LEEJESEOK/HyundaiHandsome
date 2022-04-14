<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 기업지배구조 페이지2. 테이블 내용 하드코딩
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
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">기업지배구조</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance02.do">주식 및 주주정보</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>기업지배구조</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/ir/governance01.do">회사개요</a></li>
								<li class="on"><a href="/ko/ir/governance02.do">주식 및 주주정보</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/governance03.do">주주총회</a></li>
								<li><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li>
								<li><a href="/ko/ir/governance05.do">감사기구</a></li>
								<li><a href="/ko/ir/governance06.do">평가정보</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">주식발행내역</h3>
							<p class="txt-infoR">(1주당 액면금액 : 500원)</p>
							<div class="gboxArea">
								<ul class="stockIsList">
									<li>
										<strong>발행주식총수</strong>
										<p>24,630,000<span>주</span></p>
									</li>
									<li>
										<strong>액면총액</strong>
										<p>12,315,000,000<span>원</span></p>
									</li>
									<li>
										<strong>자기주식 보유수량</strong>
										<p>2,660,406<span>주</span></p>
									</li>
								</ul>
							</div>
							<p class="txt-infoR mt20">※ 당사 발행주식은 모두 보통주로 구성되어 있습니다</p>
							<h3 class="tit_subH3">주주구성</h3>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<c:forEach var="i" begin="0" end="4">
										<col style="width: 20%;">
										</c:forEach>
									</colgroup>
									<thead>
										<tr>
											<th>구분</th>
											<th>성명</th>
											<th>주식의 종류</th>
											<th>소유주식수</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>최대주주 등</th>
											<td>㈜현대홈쇼핑</td>
											<td>보통주식</td>
											<td>8,532,763</td>
											<td>자사주 제외</td>
										</tr>
										<tr>
											<th rowspan="3">주요주주</th>
											<td>국민연금공단</td>
											<td>보통주식</td>
											<td>2,891,352</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>Fidelity Management and Research Company</td>
											<td>보통주식</td>
											<td>2,463,224</td>
											<td>&nbsp;</td>
										</tr>
										<tr class="sum">
											<td>합계</td>
											<td>보통주식</td>
											<td>5,354,576</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<th rowspan="8">등기임원</th>
											<td>김민덕</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>장호진</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>나명식</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>윤영식</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>조석현</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>유창조</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>최현민</td>
											<td>보통주식</td>
											<td>-</td>
											<td>&nbsp;</td>
										</tr>
										<tr class="sum">
											<td>합계</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">배당현황</h3>
							<p class="txt-infoR">(단위 : 백만원)</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col>
										<col style="width: 16%;">
										<col style="width: 16%;">
										<col style="width: 16%;">
										<col style="width: 16%;">
									</colgroup>
									<thead>
										<tr>
											<th>구분</th>
											<th>2020년 제34기</th>
											<th>2019년 제33기</th>
											<th>2018년 제32기</th>
											<th>2017년 제31기</th>
											<th>2016년 제30기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>배당총액</th>
											<td>9,886</td>
											<td>9,886</td>
											<td>8,788</td>
											<td>7,689</td>
											<td>6,591</td>
										</tr>
										<tr>
											<th>주당 현금배당금</th>
											<td>450(원)</td>
											<td>450(원)</td>
											<td>400(원)</td>
											<td>350(원)</td>
											<td>300(원)</td>
										</tr>
										<tr>
											<th>배당성향(%)</th>
											<td>11.4</td>
											<td>13.1</td>
											<td>12.6</td>
											<td>14.1</td>
											<td>11.6</td>
										</tr>
										<tr>
											<th>배당수익률(%)</th>
											<td>1.49</td>
											<td>1.43</td>
											<td>1.10</td>
											<td>1.11</td>
											<td>0.86</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="txt-infoR mt20">※ 당사는 주식배당을 하고 있지 않습니다</p>
							<h3 class="tit_subH3">집중 투표제 및 서면 투표제 도입</h3>
							<div class="dualTbl">
								<div class="tbl_flA">
									<table class="table liner-show" style="width:580px;">
										<colgroup>
											<col style="width: 45%;">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<th>집중 투표제 도입일자</th>
												<td>-</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="tbl_frA">
									<table class="table liner-show" style="width:580px;">
										<colgroup>
											<col style="width: 45%;">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<th>서면 투표제 도입일자</th>
												<td>-</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<h3 class="tit_subH3">자사주펀드 가입현황</h3>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 25%;">
										<col style="width: 25%;">
										<col style="width: 25%;">
										<col>
									</colgroup>
									<thead>
										<tr>
											<th>가입일자</th>
											<th>가입금액</th>
											<th>가입기관</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="/ko/ir/irArchiveList.do" class="col-md col-md-6">
							<div class="align-left page-prev"><span>IR 자료실</span></div>
						</a>
						<a href="/ko/ir/financialInfo01.do" class="col-md col-md-6">
							<div class="align-right page-next"><span>재무정보</span></div>
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