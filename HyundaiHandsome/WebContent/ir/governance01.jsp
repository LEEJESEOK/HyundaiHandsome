<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- 
작성자 : 문혁
설명  : 기업지배구조 페이지1
 -->
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
                        <li class="breadcrumb-item"><a href="/ko/ir/governance01.do">기업지배구조</a></li>
                        <li class="breadcrumb-item"><a href="/ko/ir/governance01.do">회사개요</a></li>
                    </ol>
                </div>
                <h2 class="hs-row tit_page tit-bg-none">
                    <span>기업지배구조</span>
                </h2>
                <div class="section irArea"> <!-- 섹션 1 -->
                    <div class="hs-row tabs">
                        <ul class="nav nav-tabs nav-justified rootTab">
                            <li class="on"><a href="/ko/ir/governance01.do">회사개요</a></li>
                            <li><a href="/ko/ir/governance02.do">주식 및 주주정보</a></li>
                            <li><a href="/ko/ir/governance03.do">주주총회</a></li>
                            <li><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li>
                            <li><a href="/ko/ir/governance05.do">감사기구</a></li>
                            <li><a href="/ko/ir/governance06.do">평가정보</a></li>
                        </ul>
                    </div>

                    <div class="hs-row clear">
                        <h3 class="tit_subH3">회사개요</h3>
                        <div class="expl">
                            <div class="imgA">
                                <img src="../images/ir/ir_img01.jpg" alt="">
                            </div>
                            <div class="txtA">
                                <h4>
                                    Handsome leading global</br>
                                    fashion and lifestyle
                                </h4>
                                <ul class="historyList">
                                    <li>
                                        <dl>
                                            <dt>회사명</dt>
                                            <dd>주식회사 한섬</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>대표이사</dt>
                                            <dd>김민덕</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>설립일</dt>
                                            <dd>1987. 05. 25</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>상장일</dt>
                                            <dd>1996. 07. 03</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>자본금</dt>
                                            <dd>123억 원</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>자산총계</dt>
                                            <dd>1조 4,385억 원</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>대표업종</dt>
                                            <dd>의복</dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt>본점주소</dt>
                                            <dd>서울시 강남구 도산대로 523</dd>
                                        </dl>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="hs-row box-overspill page-turn"> <!-- page the turn -->
                    <a href="/ko/ir/irArchiveList.do" class="col-md col-md-6">
                        <div class="align-left page-prev"><span>IR 자료실</span></div>
                    </a>
                    <a href="/ko/ir/financialInfo01.do" class="col-md col-md-6">
                        <div class="align-right page-next"><span>재무정보</span></div>
                    </a>
                </div>
                <!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
            </div>
        </div>
        <!-- // container -->
        
<%@ include file="/footer.jsp" %>

    </div>
</body>
</html>