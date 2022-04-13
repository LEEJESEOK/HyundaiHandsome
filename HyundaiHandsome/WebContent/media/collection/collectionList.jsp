<!-- 
작성자 : 고석준
설명   : Collection리스트 화면 jsp 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, media.collection.*"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

	<script>
		$(document).ready(function(){
	
			$(".modal").on('show.bs.modal', function() {
				setTimeout(function() {
					var swiperPop = new Swiper('.swipPop', {
						// pagination: '.swiper-pagination',
						// nextButton: '.swiper-button-next',
						// prevButton: '.swiper-button-prev',
					});
				}, 500);
			});

			
			showMinBrandList();	
			
	
		});
		function showMinBrandList() {
			$('.dropdown-menu li').hide();
			for(var i = 0; i < 7; i++) {
				$('.dropdown-menu li:nth-child('+(i+1)+')').show();
			}
			$('.dropdown-menu li:nth-last-child(2)').show();
		}

		function showMaxBrandList() {
			$('.dropdown-menu li').show();
			$('.dropdown-menu li:nth-last-child(2)').hide();
		}
		
		function getCollectionDet(collectionId){
			console.log("collection clicked!!",collectionId);
			//클릭시 페이지가 바뀌지 않고 모달창에 정보가 보여줘야해 ajax를 사용하였다.
			$.ajax({
				type: "post",
				url: "collectionDetAjax.do",
				data: {"id" : collectionId},
				dataType: "json",
				success: getCollectionDetCallback,
				/* success: function(result, textStatus) {
					alert('호출완료');
					$.each(result, function(key, val){
						console.log(key,' : ', val);
						console.log(key,' : ', val['imageId']);
						console.log(key,' : ', val['imageURI']);
						console.log(key,' : ', val['brandSS']);
						console.log(key,' : ', val['brandName']);
						
						
					});
				}, */
				error : function(xhr,status,error){
					alert("collectionDetAjax 호출 에러 발생 ");
				},
				complete: function(data,textStatus){
					
					
				}
			})
		}
		
		function getCollectionDetCallback(res) {
			var result = res;
			console.log('result : ', res[0].brandSS, ' : ' , res[0].brandName);
			$('#lbpTitle').html(result[0].brandSS);
			$('#lbpBrandNm').html(result[0].brandName);
			$('#lbpDescr').html(result[0].brandSS + ' ' + result[0].brandName);
			
			var lbpImgListHtml = '';
			var imgList = result;
			for(var i=0; i<imgList.length; i++) {
				lbpImgListHtml += '<li class="swiper-slide swip-bg" onclick="pickLbpImg(this);">\n';
				lbpImgListHtml += '	<img src="${contextPath}'+imgList[i].imageURI+'/'+imgList[i].imageId+'" alt="'+imgList[i].imageId+'" width="200" height="300">\n';
				lbpImgListHtml += '</li>\n';
			}
			var notificationHtml = '';
			for(var i=0 ; i<imgList.length; i++){
				notificationHtml += '<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>\n';
			}
			$("#notification").html(notificationHtml);
			$("#lbpImgList").html(lbpImgListHtml);
			$('#lbpBigImg').attr('src', '');
			var imgSrc = $("#lbpImgList").children().eq(0).children().eq(0).attr('src');
			$('#lbpBigImg').attr('src', imgSrc);
			setSwiperLbp();
			$('#lookbookPhoto').modal();
			
		}
		function setSwiperLbp() {
			// lookbook swiper
			var swiperLbp = new Swiper('.swipPop', {
				spaceBetween: 40,
				slidesPerView: 3,
				slidesPerGroup: 3,
				loopFillGroupWithBlank : true,
				pagination : { 
					el : '.swiper-pagination',
					type: 'fraction',
					clickable : true, 
				},
				navigation : { 
					clickable : true, 
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev', 
				},
				loop: true,
				observer: true,
				observeParents: true,
				slideToClickedSlide: true,
				loopedSlides: 30
			});
		}

		function pickLbpImg(obj) {
			console.log('called pickLbpImg : ', obj);
			var imgSrc = $(obj).children().eq(0).attr('src');
			$('#lbpBigImg').attr('src', imgSrc);
		}

		function closeLbp() {
			console.log('closeLbp!!');
			$('#lbpTitle').html('&nbsp;');
			$('#lbpBrandNm').html('&nbsp;');
			$('#lbpDescr').html('&nbsp;');
			$("#lbpImgList").empty();
			$('#lbpBigImg').attr('src', '');
		}

		function closeLbv() {
			console.log('closeLbv!!');
			$('#lbvTitle').html('&nbsp;');
			$('#lbvBrandNm').html('&nbsp;');
			$('#lbvDescr').html('&nbsp;');
			$('#lbvVidPlayArea').attr('src', '');
		}

		$("#lookbookVideo").click(function(event){
			console.log('lookbookVideo is clicked!!!');
			if(!$(this).hasClass('in')) {
				closeLbv();
			}
		});
		
	</script>
	
	<br>
	<div id="contents" class="container" style="padding-top: 80px;">
	<div class="page-body-wrapper">
	<div class="hs-row box">
		<ol class="breadcrumb col-r">
			<li class="breadcrumb-item"><a href="${contextPath }/main.do">HOME</a></li>
			<li class="breadcrumb-item"><a href="${contextPath }/media/collectionList.do">MEDIA</a></li>
			<li class="breadcrumb-item"><a href="${contextPath }/media/collectionList.do">Collection</a></li>
		</ol>
	</div>
	<h2 class="hs-row tit_page tit-bg-none">
		<span><em class="f_jost">Collection</em></span>
	</h2>
	<!-- Collection에 있는 브랜드 이름들을 보여주기 위한 부분 -->
	<div class="section box topBr">
		<div class="dropdown imgBoard_sort2">
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<ul>
					<li style="">
						<a class="dropdown-item all on" href="${contextPath }/media/collectionList.do" id="brand_All">
							<span>ALL</span>
						</a>
					</li>
					<c:forEach var="names" items="${requestScope.nameList }">
						<li style="">
							<c:choose>
								<c:when test="${names eq requestScope.brandName }">
									<a class="dropdown-item on" href="${contextPath }/media/collectionList.do?brandName=${names }"><span>${names }</span></a>		
								</c:when>
								<c:when test="${names != requestScope.brandName }">
									<a class="dropdown-item" href="${contextPath }/media/collectionList.do?brandName=${names }"><span>${names }</span></a>
								</c:when>
							</c:choose>
							
						</li>
					</c:forEach>
					<li style="">
						<a class="dropdown-item more" href="#none" onclick="showMaxBrandList();"><span>MORE</span></a>
					</li>
					<li style="display: none;">
						<a class="dropdown-item more cls" href="#none" onclick="showMinBrandList();"><span>LESS</span></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	

	<!-- CollectionList 부분  -->
	<div id="CollectionList" class="box">
		<div class="imgBoard_length">
			전체 <span class="emp">${requestScope.totalRows}</span> 개
		</div>
		<div class="imgBoard_list coll">
			<c:set var="collection"  value="${requestScope.collectionList }"  />
			<table>
				<c:forEach var="i" begin="0" end="1">
					<tr>
						<c:forEach var="j" begin="0" end="3">	
							<td>
								<c:set var="collectionIndex" value="${i*4 + j}" />
								<c:if test="${collection[collectionIndex].collectionId != null }">
								<a href="#none" onclick="getCollectionDet('${collection[collectionIndex].collectionId}')">
								<img src="${contextPath}${collection[collectionIndex].thumnailURI}${collection[collectionIndex].thumnailId}" style="width:320px; height:490px;" /><br>
								<p class="brandSS">${collection[collectionIndex].brandSS }</p>
								<p class="brandName">${collection[collectionIndex].brandName }</p>
								
								</a>
								</c:if>
								
							</td>
						</c:forEach>
					</tr>
				</c:forEach>
				
				
			</table>
		</div>
		
	</div>
	
	<!-- 페이징 부분  -->
	<div class="hs-row page-pagination align-center">
		<ul class="pagination">
			<li><a class="btn_prevD" href="${contextPath }/media/collectionList.do?brandName=${requestScope.brandName }&pageIndex=1"></a></li>
			<c:forEach var="i" begin="1" end="${requestScope.selectedRows }">
				<c:choose>
					<c:when test="${i eq requestScope.indexPage }">
						<li class="active"><a  href="${contextPath }/media/collectionList.do?brandName=${requestScope.brandName }&pageIndex=${i}">${i }</a> </li>
					</c:when>
					<c:when test="${i != requestScope.indexPage }">
						<li><a href="${contextPath }/media/collectionList.do?brandName=${requestScope.brandName }&pageIndex=${i}">${i }</a></li>
					</c:when>
				</c:choose>
			</c:forEach>
			<li><a class="btn_nextD" href="${contextPath }/media/collectionList.do?brandName=${requestScope.brandName }&pageIndex=${requestScope.selectedRows}"></a></li>
		</ul>
	</div>
	
	<!-- 모달 창 처리 부분  -->
	<div class="modal fade in" id="lookbookPhoto" role="dialog" aria-hidden="false" >
		<div class="modal-backdrop fade in" style="height: 980px;"></div>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" onclick="closeLbp();">x</button>
				</div>
				<div class="modal-body" id="lookpop">
					<div class="hs-row box- clear">
						<div class="col-md">
							<div class="brand-img">
								<img src="" style="width:560px; height:850px;" id="lbpBigImg">
							</div>
						</div>
						<div class="col-md">
							<div class="brand-info">
								<p class="brandSS" id="lbpTitle">??????</p>
								<p class="brandName" id="lbpBrandNm">??????</p>
								<span class="brandDescr" id="lbpDescr"> </span>
								<div class="swiper-container swipPop img3set swiper-container-initialized swiper-container-horizontal">
									<ul class="swiper-wrapper" id="lbpImgList" style="transition-duration: 0ms; tansform: translate3d(0px, 0px, 0px);"> <!-- style 속성 없애도 될듯? -->
										<!-- <li class="swiper-side swip-bg swiper-slide-duplicate swper-side-active" onclick="pickLbpImg(this);" data-swiper-slide-index="0" style="wdith: 680px;">
											<img src = "/HyundaiHandsome/images/media/collection/d55bc84a-a73d-4822-b8d1-92ae17948ea0.jpg" width="200" height="300">
										</li> 여기가 동적으로 변하는 곳  --> -->
									</ul>
									<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide"> </div>
									<div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" >  </div>
									<div class="swiper-pagination swiper-pagination-fraction">
										<span class="swiper-pagination-current"></span> <!-- 동적으로 변 -->
										" / "
										<span class="swiper-pagination-tatal"></span> <!-- 동적을 변 -->
									</div>
									<div id="notification">
									
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<%@ include file="/footer.jsp" %>
	    </div>
</body>
</html>