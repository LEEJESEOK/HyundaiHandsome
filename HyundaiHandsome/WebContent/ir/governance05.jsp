<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 기업지배구조 페이지5.
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

        <!--  container -->
			<div id="contents" class="container">
				<div class="page-body-wrapper">
					<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
					<div class="hs-row box">
						<ol class="breadcrumb col-r">
							<li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">IR</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">기업지배구조</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance05.do">감사기구</a></li>
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
								<li class="on"><a href="/ko/ir/governance05.do">감사기구</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/governance06.do">평가정보</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">감사위원회 현황</h3>
							<p class="txt-info">회사는 감사에 갈음하여 감사위원회를 둔다. 감사위원회는 3인 이상의 이사로 구성한다.</p>
							<p class="txt-info">위원의 3분의 2 이상은 사외이사이어야 하고, 사외이사가 아닌 위원은 상법 제542조의10 제2항의 요건을 갖추어야한다.</p>
							<p class="txt-info">감사위원회는 이 회사의 회계와 업무를 감사한다. 감사위원회는 회의의 목적사항과 소집의 이유를 기재한 서면을 이사회에 제출하여 임시총회의 소집을 청구할 수 있다.</p>
							<p class="txt-info">직무를 수행하기 위하여 필요한 때에는 자회사에 대하여 영업의 보고를 요구할 수 있다. 이 경우 자회사가 지체없이 보고를 하지 아니할 때 또는</p>
							<p class="txt-info">그 보고의 내용을 확인할 필요가 있는 때에는 자회사의 업무와 재산상태를 조사할 수 있다. 감사위원회는 외부감사인의 선임에 있어 이를 승인한다.</p>
							<div class="gboxArea eName">
								<ul class="eNameList">
									<li class="pCeo">
										<p><strong>조석현</strong> <span>감사위원장</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li class="txtFull">
												<dl>
													<dt>주요경력</dt>
													<dd>조석현 법률사무소 변호사</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<p><strong>유창조</strong> <span>감사위원</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li class="txtFull">
												<dl>
													<dt>주요경력</dt>
													<dd>동국대학교 경영학과 교수</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<p><strong>최현민</strong> <span>감사위원</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li class="txtFull">
												<dl>
													<dt>주요경력</dt>
													<dd>법무법인 지평 고문</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<p class="imgLogo"><img src="../images/ir/ir_logo01.png" alt=""><strong>삼일회계법인</strong> <span>외부감사인</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2019.03.28</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>최근감사의견</dt>
													<dd>적정의견</dd>
												</dl>
											</li>
											<li class="txtFull">
												<dl>
													<dt>계약기간</dt>
													<dd>2019.01.01 ~ 2021.12.31</dd>
												</dl>
											</li>
										</ul>
									</li>
								</ul>
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