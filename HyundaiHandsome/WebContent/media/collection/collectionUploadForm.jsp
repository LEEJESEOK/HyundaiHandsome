<!-- 
작성자 : 고석준
설명   : Collection을 새로 등록하는 jsp 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

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
<script>
	var brandss;
	var brandName;
	function changeBrandss(obj){
		brandss = obj.value;
		console.log(brandss);
	}
	function changeBrandName(obj){
		brandName = obj.value;
		console.log(brandName);
	}
	
	function checkForm(){//필수로 넣야하하는 값 체크하는 함수 
		var thumnailInput = document.querySelector("#thumnailInput").value;
		var imagesInput = document.querySelector("#imagesInput").value;
		var brandss = document.querySelector("#brandss").value;
		var brandName = document.querySelector("#brandName").value;
		var checkFormFlag = true;
		if(thumnailInput === '' || thumnailInput == undefined){
			alert('썸네일 이미지가 없습니다. 추가해주세요!!');
			checkFormFlag = false;
		}else if(imagesInput === '' || imagesInput == undefined){
			alert('Collection 이미지가 없습니다. 추가해주세요!!');
			checkFormFlag = false;
		}else if(brandss === '' || imagesInput == undefined){
			alert('입력된 Collection 시즌이 없습니다.');
			checkFormFlag = false;
		}else if(brandName === '' || brandName == undefined){
			alert('입력된 브랜드가 없습니다.');
			checkFormFlag = false;
		}
		return checkFormFlag;
	}
	
	function changeQueryString(obj){
		if(checkForm()){
			var action = document.querySelector("#collectionForm");
			var queryString = action.getAttribute("action");
			queryString += "brandss=" + brandss+"&brandName=" + brandName;
			action.setAttribute("action",queryString);
			console.log(action)
			action.submit();
		}
	}

</script>
<div class="container" style="paddig-top: 80px;">
	<div class="section box topBr">
		<form id="collectionForm" action="${contextPath}/media/collectionUpload.do?"  method="post" enctype="multipart/form-data" >
      썸네일 : <input id="thumnailInput" type="file" name="thumnail" ><br>
      이미지 리스트 : <input id="imagesInput" type="file" name="file2" multiple> <br>
      <div class="file-list"></div>
      시즌 이름 : <input id="brandss" type="text" name="brandss" onchange="changeBrandss(this)"> <br>
      브랜드 이름 : <input id="brandName" type="text" name="brandName" onchange="changeBrandName(this)"> <br>
 	  <input type="button" value="업로드" onclick="changeQueryString(this)" >
 	</form>
	</div>
</div>
	
<%@ include file="/footer.jsp"%>

    </div>
</body>
</html>