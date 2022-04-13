<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

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

        <!--  container -->
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">IR</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">기업지배구조</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance03.do">주주총회</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>기업지배구조</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/ir/governance01.do">회사개요</a></li>
								<li><a href="/ko/ir/governance02.do">주식 및 주주정보</a></li>
								<li class="on"><a href="/ko/ir/governance03.do">주주총회</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li>
								<li><a href="/ko/ir/governance05.do">감사기구</a></li>
								<li><a href="/ko/ir/governance06.do">평가정보</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">제 34기 정기주주총회 의결권 행사 현황</h3>
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
											<th rowspan="2">의결권 있는 주식 총 수</th>
											<th colspan="2">주주총회 참석 주식수</th>
											<th rowspan="2">최대주주 등 제외참석률(%)</th>
										</tr>
										<tr>
											<th>최대주주 등</th>
											<th class="tBr">소액주주 등</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>21,969,594</td>
											<td>8,532,763</td>
											<td>9,475,653</td>
											<td>43.13</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">제 34기 정기주주총회 안건별 결과</h3>
							<p class="txt-infoR">일시 : 2021년 3월 23일</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 13%;">
										<col>
										<col style="width: 15%;">
										<col style="width: 11%;">
										<col style="width: 11%;">
										<col style="width: 11%;">
										<col style="width: 13%;">
									</colgroup>
									<thead>
										<tr>
											<th>안건</th>
											<th>내용</th>
											<th>결의내용</th>
											<th>찬성<br>(%)</th>
											<th>반대<br>(%)</th>
											<th>기권<br>(%)</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>제1호 의안</th>
											<td class="tTl">제34기 재무제표 및 연결재무제표<br>승인의 건</td>
											<td>원안대로 승인</td>
											<td>93.86</td>
											<td>5.1</td>
											<td>1.04</td>
											<td>주당 450원 배당</td>
										</tr>
										<tr>
											<th>제2호 의안</th>
											<td class="tTl">정관 일부 변경의 건</td>
											<td>원안대로 승인</td>
											<td>99.85</td>
											<td>0.15</td>
											<td>0</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<th>제3호 의안</th>
											<td class="tTl">이사 선임의 건</td>
											<td>원안대로 승인</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<th>제 3-1호 의안</th>
											<td class="tTl">사내이사 김민덕 선임의 건</td>
											<td>원안대로 승인</td>
											<td>78.78</td>
											<td>21.22</td>
											<td>0</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<th>제 4호 의안</th>
											<td class="tTl">이사 보수한도 승인의 건</td>
											<td>원안대로 승인</td>
											<td>98.38</td>
											<td>1.62</td>
											<td>0</td>
											<td>&nbsp;</td>
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