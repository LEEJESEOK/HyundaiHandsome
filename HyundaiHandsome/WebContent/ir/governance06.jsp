<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 기업지배구조 페이지6. 파일다운로드 추가
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
							<li class="breadcrumb-item"><a href="/ko/ir/governance06.do">평가정보</a></li>
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
								<li><a href="/ko/ir/governance03.do">주주총회</a></li>
								<li><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li>
								<li><a href="/ko/ir/governance05.do">감사기구</a></li>
								<li class="on"><a href="/ko/ir/governance06.do">평가정보</a></li><!-- 활성화된 페이지 li class="on" -->
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">신용등급</h3>
							<div class="dualTbl">
								<div class="tbl_flB">
									<p class="rankBox">A1</p>
								</div>
								<div class="tbl_frB">
									<table class="table liner-show">
										<colgroup>
											<col>
											<col style="width: 34%;">
											<col style="width: 34%;">
										</colgroup>
										<thead>
											<tr>
												<th rowspan="2">평가기관</th>
												<th colspan="2">평가유가증권 신용등급 (2020.12.28)</th>
											</tr>
											<tr>
												<th>전자단기사채</th>
												<th>기업어음</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>한국신용평가㈜</td>
												<td>A1</td>
												<td>A1</td>
											</tr>
											<tr>
												<td>한국기업평가㈜</td>
												<td>A1</td>
												<td>A1</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<h3 class="tit_subH3">2021년 ESG 평가 결과</h3>
							<p class="txt-infoR">평가기관 : 한국기업지배구조원</p>
							<div class="gboxArea eName">
								<ul class="eRankList">
									<li>
										<ul>
											<li>종합등급</li>
											<li>A</li>
										</ul>
									</li>
									<li>
										<ul>
											<li>환경</li>
											<li>A</li>
										</ul>
									</li>
									<li>
										<ul>
											<li>사회</li>
											<li>A<sup>+</sup></li>
										</ul>
									</li>
									<li>
										<ul>
											<li>지배구조</li>
											<li>A</li>
										</ul>
									</li>
								</ul>
							</div>
							<h3 class="tit_subH3">2021년 UN SDGBI 국내 최우수 그룹 선정</h3>
							<div class="unSdgbi">
								<img src="../images/ir/ir_img03.jpg?dt=20211122_1 " alt="2020 SDGBI Sustainable Development Goals Business Index">
								<p>
									한섬은 UN SDGs협회가 주관하는<br>
									UN SDGBI (Sustainable Development Goals<br>
									Business Index, 지속가능발전목표경영지수) 최우수 그룹에<br>
									선정되었습니다. SDGBI는 2016년부터 발표된 전 세계 최초의<br>
									유엔 지속가능개발목표(SDGs) 기반 경영분석 지수로,<br>
									국제적으로 인정받는 지속가능경영-ESG 평가지표입니다.
								</p>
							</div>
							<h3 class="tit_subH3">이사의 회사와의 자기거래 내역</h3>
							<p class="txt-infoR btnAe mN60">
								<a class="btnDl" href="#none" onclick="downloadFile('1fd6c84ced5b519fcd0b7a8f6965e2ba');">상장회사 표준공시정보관리규정 다운로드</a>
							</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<c:forEach var="i" begin="0" end="3">
										<col style="width: 25%;">
										</c:forEach>
									</colgroup>
									<thead>
										<tr>
											<th>거래이사성명</th>
											<th>거래일자</th>
											<th>거래내용</th>
											<th>거래금액</th>
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
					<form id="fileForm" name="fileForm" action="/ko/ir/fileDownload.do" method="post">
						<input type="hidden" name="fileIdEnc" id="fileIdEnc">
					</form>
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