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
							<li class="breadcrumb-item"><a href="/ko/ir/irArchiveList.do">IR 자료실</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>IR 자료실</span>
					</h2>
					<div class="section irArea">
						<form id="listForm" name="listForm" method="get">
							<input type="hidden" name="pageIndex" id="pageIndex" value="1">
							<div id="" class="birAreax">
								<div class="pdfBoard_list">
									<ul>
										<c:if test="${param.pageIndex == null || param.pageIndex == '1' }">
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>사업보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('bf5c67b88783bc77b1ef9b421521f449');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>별도 감사보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('fa9a831574d7e48029bb3d2baa8f10d2');">
														PDF 다운로드 
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>연결 감사보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('776e3c1e1bc8a7df9e7ddcdcffa9f145');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>4분기 실적발표</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('1fb5bbc820157cc7230755d972fe4298');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>3분기 실적발표</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('12043d696f1c80c578d011fa42c7fb33');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>2분기 실적발표</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('f3bf425079da816b0c9b5179ffa72c34');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2021년</p>
													<p>1분기 실적발표</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('4df111d280b2757f41c978cccb6f614b');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2020년</p>
													<p>사업보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('9797f8026ca37e429f4f75310886c979');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										</c:if>
										<c:if test="${param.pageIndex == '2' }">
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2020년</p>
													<p>별도 감사보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('164103af5f130c6e4e84f013aa4934ff');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										<li>
											<div class="pdfBox">
												<div class="col-md">
													<p class="year">2020년</p>
													<p>연결 감사보고서</p>
												</div>
												<p class="col-r btnAe">
													<a class="btnDl gy" href="#none" onclick="downloadFile('9dc2b1cb2106e02945f5fe94ca2bb13b');">
														PDF 다운로드
													</a>
												</p>
											</div>
										</li>
										</c:if>
									</ul>
								</div>
							</div>
							<div class="hs-row page-pagination align-center"><!-- page the number -->
								<ul class="pagination">
									<c:if test="${param.pageIndex == null || param.pageIndex == '1' }"> 
									<li class="active"><a href="#">1</a></li>
									<li><a href="#" onclick="goToThisPage(2); return false;">2</a></li>
									</c:if>
									<c:if test="${param.pageIndex == '2' }"> 
									<li><a href="#" onclick="goToThisPage(1); return false;">1</a></li>
									<li class="active"><a href="#">2</a></li>
									</c:if>
								</ul>
							</div>
						</form>
						<form id="fileForm" name="fileForm" action="/ko/ir/fileDownload.do" method="post">
							<input type="hidden" name="fileIdEnc" id="fileIdEnc">
						</form>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->

						<a href="/ko/ir/disclosureInfoList.do" class="col-md col-md-6">
							<div class="align-left page-prev"><span>공시정보</span></div>
						</a>

						<a href="/ko/ir/governance01.do" class="col-md col-md-6">
							<div class="align-right page-next"><span>기업지배구조</span></div>
						</a>
					</div>
					<!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				</div>
			</div>
			<!-- // container -->
			<script type="text/javaScript" language="javascript" defer="defer">

				function goToThisPage(pageIndex) {
					document.listForm.pageIndex.value = pageIndex;
					document.listForm.action = "/ko/ir/irArchiveList.do";
					document.listForm.submit();
				}

			</script>
        
<%@ include file="/footer.jsp" %>

    </div>
</body>
</html>