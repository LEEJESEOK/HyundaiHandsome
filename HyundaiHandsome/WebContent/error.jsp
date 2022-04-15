<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>HYUNDAI HANDSOME</title>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
	    <link rel="stylesheet" href="${contextPath}/css/font.css">
	    <link rel="stylesheet" href="${contextPath}/css/ko_common.css">
	    <link rel="stylesheet" href="${contextPath}/css/ko_style.css">
		<link rel="icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" href="${contextPath}/images/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${contextPath}/images/apple-touch-icon.png" sizes="180x180">
		<link rel="icon" href="${contextPath}/images/favicon-32x32.png" sizes="32x32" type="image/png">
		<link rel="icon" href="${contextPath}/images/favicon-16x16.png" sizes="16x16" type="image/png">
	</head>
	<body>
		<div id="wrap" class="comm">
			<div class="container">
				<div class="comm_box">
					<h1 class="logo"><img src="${contextPath}/images/common_tit01.png" alt="현대 한섬"></h1>
					<div class="comm_cont typ2">
						<h2>요청하신 페이지를 찾을 수 없습니다.</h2>
						<p>페이지의 주소가 잘못 입력되었거나,<br>주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.</p>
					</div>
					<p class="btnAe"><a href="${contextPath}/main.do" class="btncomm">메인으로 이동</a></p>
				</div>
				<p class="copyright">COPYRIGHT ⓒ 2020 HANDSOME. ALL RIGHTS RESERVED<br><br>
					고석준 문혁 이제석 이지은
				</p>
			</div>
		</div>
	</body>
</html>