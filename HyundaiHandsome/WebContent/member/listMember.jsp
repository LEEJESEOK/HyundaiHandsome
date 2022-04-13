<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
 
<!DOCTYPE html>
<html lang="ko">
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
		<link rel="icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${contextPath}/images/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="${contextPath}/images/favicon-16x16.png" sizes="16x16" type="image/png">
	</head>
	<body>
		<div class="wrap">
			<%@ include file="../header.jsp"%>
			<br><br><br><br><br><br><br><br><h1 style="font-size: 40px; text-align: center;">HANDSOME 페이지 관리</h1><br><br><br><br>
			<div class="section box">
				<div class="hs-row tabs">
					<ul class="nav nav-tabs nav-justified rootTab">
						<li class="on"><a href="${contextPath}/member/listMember.do">관리자 목록</a></li>
						<li><a href="${contextPath}/member/addMember.do">관리자 추가</a></li>
						<li><a href="${contextPath}/member/manageMedia.do">MEDIA UPLOAD</a></li>
					</ul>
				</div>
			</div>
			<div class="section box">
				<h3 class="tit_subH3">HANDSOME 페이지 관리자 목록</h3>
				<div id="discList" class="box mN30">
					<div class="dataBoard_list">
						<table class="table liner-cols">
							<colgroup>
								<col style="width: 33%;">
								<col style="width: 33%;">
								<col style="width: 33%;">
							</colgroup>
							<thead>
								<tr>
									<th>이름</th>
									<th>연락처</th>
									<th>ID</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${empty memberList }" > <!-- memberList에 데이터가 없을 경우 -->
								    	<tr>
								      		<td>
								         		<p align="center">
								            		<b><span style="font-size:9pt;">등록된 관리자가 없습니다.</span></b>
								        		</p>
								      		</td>  
								    	</tr>
									</c:when>
								  	<c:when test="${!empty memberList }" > <!-- memberList에 데이터가 있을 경우 -->
								  		<c:forEach  var="member" items="${memberList }" > <!-- member 정보 출력 -->
								    		<tr align="center">
									  			<td>${member.name }</td>
									  			<td>${member.tel }</td>
									  			<td>${member.id }</td>
									 		</tr>
								    	</c:forEach>
								  	</c:when>
								</c:choose>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<br><br><br><br><br>
			<%@ include file="../footer.jsp"%>
		</div>
	</body>
</html>