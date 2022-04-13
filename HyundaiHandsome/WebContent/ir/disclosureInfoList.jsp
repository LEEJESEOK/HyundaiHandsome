<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
							<li class="breadcrumb-item"><a href="/ko/ir/disclosureInfoList.do">공시정보</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>공시정보</span>
					</h2>
					
					<div class="section box"> <!-- 섹션 1 -->
						<h3 class="tit_subH3">공시자료</h3>
						<form id="listForm" name="listForm" method="get">
							<input type="hidden" name="pageIndex" id="pageIndex" value="1">
							<div id="discList" class="box mN30">
								<div class="dataBoard_list">
									<p class="table_sup">정보제공 : DART 전자공시시스템</p>
									
									<!-- 검색 -->
									<div style="margin:auto; max-width:500px; float:right;">
										<input type="search" id= "search-disclosure" class="form-control " placeholder="검색 키워드를 입력하세요!" name="keyword" value="${param.keyword }"/>
										<button id="searchBtn" class="btn btn-secondary" type="submit" style="float:right; background:lightgray">검색</button>
									</div>
									<table class="table liner-cols">
										<colgroup>
											<col style="width: 12%;">
											<col>
											<col style="width: 12%;">
											<col style="width: 15%;">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>번호</th>
												<th>보고서명</th>
												<th>제출인</th>
												<th>일자</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${requestScope.disList}" var="d">
											<tr>
												<td style="text-align: center">${d.disclosureId}</td>
												<td class="tTdl_40">
													<a href= "#none" onclick="openDisInfo('http://${d.url}')">${d.disclosureName}</a>
												</td>
												<td style="text-align: center">${d.presenter}</td>
												<td style="text-align: center">${d.indate }</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div id= "page-list" class="hs-row page-pagination align-center"> <!-- page the number -->
								<ul class="pagination">
									<c:set var="page" value="${(param.pageIndex == null)?1:param.pageIndex}" />
									<c:set var="startNum" value="${page-(page-1)%10}" />
									<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(total/10),'.' )}" />
									
									<li><a href="#" class="btn_prevD" onclick="goToThisPage(1); return false;"><span>first</span></a></li>
									<li><a href="#" class="btn_prev" onclick="goToThisPage(${(startNum == 1)?1:startNum-1}); return false;"><span>prev</span></a></li>
									<c:forEach var="i" begin="0" end="9">
									<c:if test="${(startNum+i) <= lastNum }">
									<li class = "page-number ${(param.pageIndex==(startNum+i))?'active':''}">
									<a href="#" onclick="goToThisPage(${startNum+i}); ${(param.pageIndex==(startNum+i))?'':'return false;'}">${startNum+i}</a>
									</c:if>
									</c:forEach>
									<li><a href="#" class="btn_next" onclick="goToThisPage(${startNum+10}); return false;"><span>next</span></a></li>
									<li><a href="#" class="btn_nextD" onclick="goToThisPage(${lastNum}); return false;"><span>last</span></a></li>
								</ul>
							</div>
						</form>
					</div>
					<div class="hs-row box-overspill page-turn"> <!-- page the turn -->
						<a href="https://finance.naver.com/item/main.nhn?code=020000" target="_blank" class="col-md col-md-6">
							<div class="align-left page-prev"><span>주가정보</span></div>
						</a>
						<a href="/ko/ir/irArchiveList.do" class="col-md col-md-6">
							<div class="align-right page-next"><span>IR 자료실</span></div>
						</a>
					</div>
					<!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
				</div>
			</div>
			<!-- // container -->
			<script type="text/javaScript" language="javascript" defer="defer">

				function goToThisPage(pageIndex) {
					document.listForm.pageIndex.value = pageIndex;
					document.listForm.action = "/ko/ir/disclosureInfoList.do";
					document.listForm.submit();
				}
				// 작동안함..
				var pageList = document.getElementById("page-list");
				var pages = pageList.getElementsByClassName("page-number");
				for (var i=0; i<pages.length; i++){
					pages[i].addEventListener("click", function() {
						var current = document.getElementsByClassName("active");
						current[0].className = current[0].className.replace(" active", "");
						this.className += " active";
					});
				}

			// 공시정보 상세화면 url 주소로 이동			
				function openDisInfo(url) {
					var name = '공시정보 상세화면';
					var option = "width = 1200, height = 800, top = 100, left = 100, location = no"
					window.open(url, name, option);
				}
			</script>

<%@ include file="/footer.jsp" %>

    </div>
</body>
</html>