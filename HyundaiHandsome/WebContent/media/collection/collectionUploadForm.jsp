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