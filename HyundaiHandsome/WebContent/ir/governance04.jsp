<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

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
							<li class="breadcrumb-item"><a href="/ko/ir/governance01.do">기업지배구조</a></li>
							<li class="breadcrumb-item"><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li>
						</ol>
					</div>
					<h2 class="hs-row tit_page tit-bg-none">
						<span>기업지배구조</span>
					</h2>
					<div class="section irArea"> <!-- 섹션 1 -->
						<div class="hs-row tabs">
							<ul class="nav nav-tabs nav-justified rootTab">
								<li><a href="/ko/ir/governance01.do">회사개요</a></li>
								<li><a href="/ko/ir/governance02.do">주식 및 주주정보</a></li>
								<li><a href="/ko/ir/governance03.do">주주총회</a></li>
								<li class="on"><a href="/ko/ir/governance04.do">이사회 및 위원회</a></li><!-- 활성화된 페이지 li class="on" -->
								<li><a href="/ko/ir/governance05.do">감사기구</a></li>
								<li><a href="/ko/ir/governance06.do">평가정보</a></li>
							</ul>
						</div>

						<div class="hs-row clear">
							<h3 class="tit_subH3">이사회구성(등기이사) 현황</h3>
							<p class="txt-info">한섬은 전체 7명의 이사회로 구성되어 있습니다. (의장 : 김민덕)</p>
							<p class="txt-infoR btnAe mN30">
								<a class="btnDl" href="#none" onclick="downloadFile('944db81cf9079d2dca3fd394c6f63ab1');">이사회 규정 다운로드</a>
							</p>
							<div class="gboxArea eName">
								<ul class="eNameList">
									<li class="pCeo">
										<p><strong>김민덕</strong> <span>사내이사/대표이사(상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2021.03.28</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>대표이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>장호진</strong> <span>사내이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사내이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>나명식</strong> <span>사내이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사내이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>윤영식</strong> <span>사내이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사내이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>유창조</strong> <span>사외이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사외이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>조석현</strong> <span>사외이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사외이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
									<li>
										<p><strong>최현민</strong> <span>사외이사(비상근)</span></p>
										<ul>
											<li>
												<dl>
													<dt>선임일</dt>
													<dd>2020.03.27</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>임기</dt>
													<dd>2년</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt>소관업무</dt>
													<dd>사외이사</dd>
												</dl>
											</li>
											<li>책임 보험 가입</li>
										</ul>
									</li>
								</ul>
							</div>
							<h3 class="tit_subH3">기업지배구조헌장</h3>
							<div class="expl">
								<div class="imgA">
									<img src="../images/ir/ir_img02.jpg" alt="">
								</div>
								<div class="txtA">
									<h4>한섬 <em>(이하‘회사’)은</em></h4>
									<p class="infoEtxt">
										건전한 기업지배구조 구축 및 기업의 사회적 책임 의식을<br>
										바탕으로 주주의 권리, 이사회의 역할, 전문 감사기구의<br>
										독립적 운영 등을 담은 ‘한섬 기업지배구조 헌장’을 제정하였습니다.<br>
										이를 기반으로 주주의 가치와 기업의 가치를 높여 나가고<br>
										이해관계자와 상호 신뢰를 바탕으로 함께 성장해 나갈 수 있도록<br>
										상생의 가치를 추구하여 사회적 공익과 경제 발전에 기여할 수<br>
										있도록 지속적으로 노력해 나가고자 합니다.
									</p>
									<div class="btnAe">
										<a class="btnDl" href="#none" onclick="downloadFile('77dba956abb2f6bcc38e2ad2229f3329');">기업지배구조헌장 다운로드</a>
									</div>
								</div>
							</div>
							<h3 class="tit_subH3">이사회 운영현황</h3>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 12%;">
										<col style="width: 14%;">
										<col>
										<col style="width: 12%;">
										<col style="width: 12%;">
										<col style="width: 14%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">회차</th>
											<th rowspan="2">개최일자</th>
											<th rowspan="2">주요의제</th>
											<th colspan="2">참석이사수</th>
											<th rowspan="2">비고</th>
										</tr>
										<tr>
											<th>사내이사</th>
											<th class="tBr">사외이사</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>2020.02.10</td>
											<td class="tTl">
												1. 제33기 재무제표 및 영업보고서 승인의 건
											</td>
											<td>3</td>
											<td>3</td>
											<td>-</td>
										</tr>
										<tr>
											<td rowspan="2">2</td>
											<td rowspan="2">2020.02.21</td>
											<td class="tTl">
												1. 제33기 정기주주총회 소집의 건<br>
												2. 제33기 정기주주총회 목적사항 결정의 건<br>
												3. 대표이사 선임의 건<br>
												4. 임원 상여금 지급 규정 개정의 건<br>
												5. 이사회 및 위원회 규정 개정의 건<br>
												6. 2020년 사업계획 심의의 건 <br>
											</td>
											<td rowspan="2">3</td>
											<td rowspan="2">2</td>
											<td rowspan="2">-</td>
										</tr>
										<tr>
											<td class="tTl tBr">
												1. 보고사항<br>
												(1) 2019년 내부회계관리제도 운영실태 보고
											</td>											
										</tr>
										<tr>
											<td>3</td>
											<td>2020.03.24</td>
											<td class="tTl">
												1. 보상위원회 위원 선임의 건<br>
												2. 사외이사후보추천위원회 위원 선임의 건<br>
												3. 내부거래위원회 위원 선임의 건<br>
												4. 이사 보수 집행 승인의 건							
											</td>
											<td>4</td>
											<td>3</td>
											<td>-</td>
										</tr>
										<tr>
											<td>4</td>
											<td>2020.04.27</td>
											<td class="tTl">
												1. 유상증자 참여의 건
											</td>
											<td>2</td>
											<td>3</td>
											<td>-</td>
										</tr>
										<tr>
											<td rowspan="2">5</td>
											<td rowspan="2">2020.05.08</td>
											<td class="tTl">
												1. 한섬 해외법인 증자의 건(한도승인)
											</td>
											<td rowspan="2">4</td>
											<td rowspan="2">3</td>
											<td rowspan="2">-</td>
										</tr>
										<tr>
											<td class="tTl tBr">
												1. 보고사항<br>
												(1) 2020년 1분기 영업실적 보고
											</td>											
										</tr>
										<tr>
											<td>6</td>
											<td>2020.06.12</td>
											<td class="tTl">
												1. 한섬 신규사업장 설치의 건
											</td>
											<td>4</td>
											<td>2</td>
											<td>-</td>
										</tr>
										<tr>
											<td>7</td>
											<td>2020.08.11</td>
											<td class="tTl">
												1. 보고사항<br>
												(1) 2020년 상반기 영업실적 보고
											</td>
											<td>4</td>
											<td>3</td>
											<td>-</td>
										</tr>
										<tr>
											<td>8</td>
											<td>2020.11.06</td>
											<td class="tTl">
												1. 보고사항<br>
												(1) 2020년 3분기 영업실적 보고<br>
												(2) 2020년 ESG평가 결과 보고
											</td>
											<td>4</td>
											<td>3</td>
											<td>-</td>
										</tr>																										
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">이사회 내 위원회</h3>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 14%;">
										<col style="width: 11%;">
										<col style="width: 11%;">
										<col style="width: 11%;">
										<col>
										<col style="width: 19%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">위원회 명칭</th>
											<th colspan="3">구성</th>
											<th rowspan="2">주요기능</th>
											<th rowspan="2">위원회 규정</th>
										</tr>
										<tr>
											<th>위원장</th>
											<th>사내이사</th>
											<th class="tBr">사외이사</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>감사위원회</th>
											<td>조석현</td>
											<td>-</td>
											<td>
												조석현<br>
												유창조<br>
												최현민
											</td>
											<td class="tTl">
												<ul>
													<li>1. 이사 및 경영진의 업무 감독</li>
													<li>2. 외부감사인 감사 업무 감독 및 외부감사인 선정에 대한 승인</li>
													<li>3. 내부통제장치 및 내부감시장치 운영에 대한 점검</li>
												</ul>
											</td>
											<td>
												<p class="btnAe">
													<a class="btnDl" href="#none" onclick="downloadFile('573cf8cd8839379ed156bb2a33518f45');">규정 다운로드</a>
												</p>
											</td>
										</tr>
										<tr>
											<th>
												사외이사후보<br>
												추천위원회
											</th>
											<td>최현민</td>
											<td>김민덕</td>
											<td>
												조석현<br>
												유창조<br>
												최현민
											</td>
											<td class="tTl">
												<ul>
													<li>1. 주주총회에서 선임할 사외이사 후보 추천</li>
													<li>2. 기타 사외이사후보 추천을 위하여 필요한 사항</li>
												</ul>
											</td>
											<td>
												<p class="btnAe">
													<a class="btnDl" href="#none" onclick="downloadFile('60eb90311603572a5c829f99684e15ad');">규정 다운로드</a>
												</p>
											</td>
										</tr>
										<tr>
											<th>보상위원회</th>
											<td>유창조</td>
											<td>윤영식</td>
											<td>
												유창조<br>
												최현민
											</td>
											<td class="tTl">
												<ul>
													<li>1. 등기이사의 보상정책 및 보상수준 적정성 평가</li>
													<li>2. 관련자료의 제출 및 보고 요청</li>
												</ul>
											</td>
											<td>
												<p class="btnAe">
													<a class="btnDl" href="#none" onclick="downloadFile('8f82a70599d45e7ebb10aa288329ffdc');">규정 다운로드</a>
												</p>
											</td>
										</tr>
										<tr>
											<th>
												내부거래<br>
												위원회
											</th>
											<td>조석현</td>
											<td>김민덕</td>
											<td>
												조석현<br>
												유창조<br>
												최현민
											</td>
											<td class="tTl">
												<ul>
													<li>1. 대규모내부거래의 심사</li>
													<li>2. 관련자료의 제출 및 보고 요청</li>
													<li>3. 규정에 위반될 여지가 있는 거래에 대해 시정요청</li>
												</ul>
												<p class="exTxt">※ 독점규제 및 공정거래에 관한 법률에서 규정하는<br>특수관계인간의 거래에 대한 내용심사 </p>
											</td>
											<td>
												<p class="btnAe">
													<a class="btnDl" href="#none" onclick="downloadFile('ba2b51ecb207f2ebe20a3f6811831bc9');">규정 다운로드</a>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">이사 1인당 평균 보수현황</h3>
							<p class="txt-infoR btnAe">(2020년 연간기준, 단위: 천원)</p>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col style="width: 25%;">
										<col style="width: 25%;">
										<col style="width: 25%;">
										<col>
									</colgroup>
									<thead>
										<tr>
											<th>구분</th>
											<th>인원총수</th>
											<th>보수총액</th>
											<th>1인당 평균 보수금액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>
												등기이사<br>
												(사외이사, 감사위원회 위원 제외)
											</th>
											<td>4</td>
											<td>1,192,244</td>
											<td>298,061</td>
										</tr>
										<tr>
											<th>
												사외이사<br>
												(감사위원회 위원 제외)
											</th>
											<td>-</td>
											<td>-</td>
											<td>-</td>
										</tr>
										<tr>
											<th>감사위원회 위원</th>
											<td>4</td>
											<td>156,600</td>
											<td>39,150</td>
										</tr>
										<tr>
											<th>감사</th>
											<td>-</td>
											<td>-</td>
											<td>-</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h3 class="tit_subH3">이사 후보 추천현황</h3>
							<div class="">
								<table class="table liner-show">
									<colgroup>
										<col>
										<col style="width: 17%;">
										<col style="width: 17%;">
										<col style="width: 17%;">
										<col style="width: 17%;">
										<col style="width: 17%;">
									</colgroup>
									<thead>
										<tr>
											<th rowspan="2">구분</th>
											<th rowspan="2">인원총수</th>
											<th colspan="4">후보추천주체</th>
										</tr>
										<tr>
											<th>최대주주</th>
											<th>추천위원회</th>
											<th>소액주주</th>
											<th>기타</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>사내이사</th>
											<td>4</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>4</td>
										</tr>
										<tr>
											<th>사외이사</th>
											<td>3</td>
											<td>-</td>
											<td>3</td>
											<td>-</td>
											<td>-</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<form id="fileForm" name="fileForm" action="/ko/ir/fileDownload.do" method="post">
						<input type="hidden" name="fileIdEnc" id="fileIdEnc">
					</form>
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