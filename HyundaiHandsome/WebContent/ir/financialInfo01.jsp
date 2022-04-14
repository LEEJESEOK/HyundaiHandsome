<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 재무정보 페이지1. 테이블 내용 하드코딩
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
    <!-- <script src="../js/js.js"></script> -->
</head>
<body>
    <div class="wrap">
    
    <%@ include file="/header.jsp"%>
    
<style>
.table > tbody > tr > td, .table > tfoot > tr > td { text-align: right;}
.table > tbody > tr > td:nth-child(1), .table > tfoot > tr > td:nth-child(1) { text-align: center !important;}
</style>
			<!--  container -->
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">IR</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/financialInfo01.do">재무정보</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/financialInfo01.do">요약재무제표</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>재무정보</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li class="on"><a href="/ko/ir/financialInfo01.do">요약재무제표</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/financialInfo02.do">재무상태표</a></li>
								<li><a href="/ko/ir/financialInfo03.do">손익계산서</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">재무현황</h3>
							<p class="txt-infoR btnAe">(단위: 백만원)</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">구분</th>
											<th colspan="2">연결</th>
											<th colspan="2">별도</th>
										</tr>
										<tr>
											<th class="tBrn">2020년</th>
											<th>2019년</th>
											<th class="tBrn">2020년</th>
											<th>2019년</th>
										</tr>
									</thead>
									<tbody>
										<tr class="trBbn">
											<td>유동자산</td>
											<td>819,669</td>
											<td>719,848</td>
											<td>813,882</td>
											<td>718,506</td>
											</span>
										</tr>
										<tr class="trBbn">
											<td>비유동자산</td>
											<td>618,875</td>
											<td>603,797</td>
											<td>622,693</td>
											<td>603,698</td>
										</tr>
										<tr class="sum">
											<td>자산총계</td>
											<td>1,438,544</td>
											<td>1,323,645</td>
											<td>1,436,575</td>
											<td>1,322,204</td>
										</tr>
										<tr class="trBbn">
											<td>유동부채</td>
											<td>230,906</td>
											<td>218,045</td>
											<td>230,277</td>
											<td>215,435</td>
										</tr>
										<tr class="trBbn">
											<td>비유동부채</td>
											<td>81,605</td>
											<td>60,046</td>
											<td>79,805</td>
											<td>60,046</td>
										</tr>
										<tr class="sum">
											<td>부채총계</td>
											<td>312,512</td>
											<td>278,090</td>
											<td>310,083</td>
											<td>275,480</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td>자본총계</td>
											<td>1,126,032</td>
											<td>1,045,554</td>
											<td>1,126,492</td>
											<td>1,046,723</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<h3 class="tit_subH3">손익현황</h3>
							<p class="txt-infoR btnAe">(단위: 백만원)</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">구분</th>
											<th colspan="2">연결</th>
											<th colspan="2">별도</th>
										</tr>
										<tr>
											<th class="tBrn">2020년</th>
											<th>2019년</th>
											<th class="tBrn">2020년</th>
											<th>2019년</th>
										</tr>
									</thead>
									<tbody>
										<tr class="trBbn sum">
											<td>매출액</td>
											<td>1,195,900</td>
											<td>1,259,802</td>
											<td>1,194,780</td>
											<td>994,561</td>
										</tr>
										<tr class="trBbn sum">
											<td>영업이익</td>
											<td>102,053</td>
											<td>106,550</td>
											<td>104,835</td>
											<td>95,749</td>
										</tr>
										<tr class="trBbn">
											<td>법인세비용차감전<br>순이익</td>
											<td>112,211</td>
											<td>113,509</td>
											<td>113,818</td>
											<td>101,202</td>
										</tr>
										<tr class="trBbn sum">
											<td>당기순이익</td>
											<td>84,889</td>
											<td>85,261</td>
											<td>86,496</td>
											<td>75,602</td>
										</tr>
										<tr>
											<td>총포괄이익</td>
											<td>88,038</td>
											<td>64,330</td>
											<td>89,655</td>
											<td>54,725</td>
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