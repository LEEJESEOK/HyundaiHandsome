<!-- 
작성자 : 고석준
설명   : 새로운 News를 업로드 하는 화면, 네이버 스마트 에디터를 사용해서 라이브러리가 필요하다.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- 
참조 :
네이버 스마트 에디터 깃허브 링크 https://github.com/naver/smarteditor2

스마트 에디터 사용 예제 코드 블로그 링크 : https://velog.io/@duckchanahn/%EB%84%A4%EC%9D%B4%EB%B2%84%EC%8A%A4%EB%A7%88%ED%8A%B8%EC%97%90%EB%94%94%ED%84%B0-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0
 -->

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
<%@ include file="/header.jsp" %>
<script type="text/javascript" src="${contextPath}/libs/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
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
	
	function checkForm(){
		console.log('checkForm called');
		var thumnailInput = document.querySelector("#thumnailInput").value;
		var imagesInput = document.querySelector("#imageInput").value;
		var title = document.querySelector("#title").value;
		var txtContent = document.querySelector("#txtContent").value;
		var checkFormFlag = true;
		if(thumnailInput === '' || thumnailInput == undefined){
			alert('썸네일 이미지가 없습니다. 추가해주세요!!');
			checkFormFlag = false;
		}else if(imagesInput === '' || imagesInput == undefined){
			alert('뉴스 내 넣을 이미지가 없습니다. 추가해주세요!!');
			checkFormFlag = false;
		}else if(title === '' || title == undefined){
			alert('뉴스의 제목이 없습니다. 추가해주세요!!');
			checkFormFlag = false;
		}else if(txtContent === '<p><br></p>' || txtContent == undefined){
			alert('입력된 기사 내용이 없습니다. ');
			checkFormFlag = false;
		}
		return checkFormFlag;
	}
	
	function changeQueryString(obj){
		oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []); //스마트 에디터 값을 텍스트컨텐츠로 전달  
		
		
		if(checkForm()){
			var action = document.querySelector("#newsForm");
			console.log(action)
			action.submit();
		}
	}

</script>


<div id="contents" class="container" style="padding-top: 80px;">
	<div class="section box topBr">
		<form id="newsForm" action="${contextPath}/media/newsUpload.do"  method="post" enctype="multipart/form-data" >
	      <h5 >썸네일 이미지</h5><input type="file" id="thumnailInput" name="thumnailId" >
	      <h5 >고화질 이미지</h5><input type="file" id="imageInput" name="imageId" >
	      <h5>제목</h5><input type="text" id="title" name="title" placeholder="제목을 입력하세요.">
	      <textarea id="txtContent" rows="10" cols="100" style="width: 100%;" name="content" text="썸네일 사진 선택"></textarea>
	      <!-- textarea 밑에 script 작성하기 -->
			<script id="smartEditor" type="text/javascript"> 
				var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
				    oAppRef: oEditors,
				    elPlaceHolder: "txtContent",  //textarea ID 입력
				    sSkinURI: "${contextPath}/libs/smarteditor/SmartEditor2Skin.html",  //martEditor2Skin.html 경로 입력
				    fCreator: "createSEditor2",
				    htParams : { 
				    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
				        bUseToolbar : true, 
					// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
					bUseVerticalResizer : false, 
					// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
					bUseModeChanger : false 
				    }
				});
			</script>
		  <div id="se2_sample" style="margin:10px 0;">
		  	<input type="button" value="뉴스 업로드 하기" onclick="changeQueryString(this)" >
		  </div>
	 	  
	 	</form>
	</div>
	
 </div>
<%@ include file="/footer.jsp" %>

    </div>
</body>
</html>