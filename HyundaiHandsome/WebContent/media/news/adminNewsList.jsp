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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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