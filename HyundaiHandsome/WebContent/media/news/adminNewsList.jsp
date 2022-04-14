<!-- 
작성자 : 고석준
설명   : 관리자 페이지에서 News목록을 볼 수 있는 JSP
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, media.news.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
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
<%@ include file="/header.jsp"%>

<div id="contents" class="container" style="padding-top: 80px;">
	<div class="page-body-wrapper">
		<div class="hs-row box">
			<ol class="breadcrumb col-r">
				<li class="breadcrumb-item"><a href="${contextPath }/main.do">HOME</a></li>
				<li class="breadcrumb-item"><a
					href="${contextPath }/media/adminNewsList.do">MEDIA</a></li>
				<li class="breadcrumb-item"><a
					href="${contextPath }/media/adminNewsList.do">News</a></li>
			</ol>
		</div>
		<h2 class="hs-row tit_page tit-bg-none">
			<span><em class="f_jost">News</em></span>
		</h2>
		<br>
		<!-- adminNewsList 부분  -->
		<div id="newsList" class="box">
			<div class="imgBoard_length">
				전체 <span class="emp">${requestScope.totalRows}</span> 개
			</div>
			<div class="md">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>삭제</th>
					</tr>
					<c:forEach items="${newsList }" var="news" varStatus="status">
						<tr style="border-bottom: 1px solid gray">
							<td>${status.count + (indexPage-1)*6 } </td>
							<td><c:out value="${news.title }" /></td>
							<td><a href="${contextPath }/media/newsDelete.do?id=${news.id}"> 삭제</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>

		<!-- 페이징 부분  -->
		<div class="hs-row page-pagination align-center">
			<ul class="pagination">
				<li><a class="btn_prevD"
					href="${contextPath }/media/adminNewsList.do?pageIndex=1"></a></li>
				<c:forEach var="i" begin="1" end="${requestScope.selectedRows }">
					<c:choose>
						<c:when test="${i eq requestScope.indexPage }">
							<li class="active"><a
								href="${contextPath }/media/adminNewsList.do?pageIndex=${i}">${i }</a>
							</li>
						</c:when>
						<c:when test="${i != requestScope.indexPage }">
							<li><a
								href="${contextPath }/media/adminNewsList.do?pageIndex=${i}">${i }</a></li>
						</c:when>
					</c:choose>
				</c:forEach>
				<li><a class="btn_nextD"
					href="${contextPath }/media/adminNewsList.do?pageIndex=${requestScope.selectedRows}"></a></li>
			</ul>
		</div>


	</div>
</div>
<%@ include file="/footer.jsp"%>
    </div>
</body>
</html>