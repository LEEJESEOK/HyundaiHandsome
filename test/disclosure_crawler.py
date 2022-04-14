''''''''''''''''''''''''''''''''''''''''''''''' 
작성자 : 문혁
설명  : IR파트 공시정보 데이터 크롤링  
''''''''''''''''''''''''''''''''''''''''''''''' 

import dart_fss as dart
# dart-fss
# 대한민국 금융감독원에서 운영하는 다트(DART) 사이트 크롤링 및 재무제표 추출을 위한 라이브러리

import sys 
sys.stdout = open('dart.txt','a')
# 출력결과 텍스트 파일에 저장

# Open DART API KEY 설정
api_key = '2b3a38e1c39e121767a7bef32a972d63cef0492a'
dart.set_api_key(api_key=api_key)

# DART 에 공시된 회사 리스트 불러오기
corp_list = dart.get_corp_list()

# 반환된 회사 리스트 중에서 '한섬'과 일치하는 공시 대상 검색
handsome = corp_list.find_by_corp_name('한섬', exactly=True)[0]

# 1999년부터 현재까지 모든 공시정보 조회
# page_no 를 넣지않으면 기본적으로 1페이지에 해당하는 100개 결과값만 출력하여 9페이지까지 바꿔가며 실행
fs = handsome.search_filings(bgn_de='19990101', sort='date', sort_mth='asc', page_no= '1', page_count='100') 

# 기타 정보 제외한 공시 정보만 따로 저장
report = fs.to_dict()['report_list']

# 제출번호, 보고서명, 제출인, 날짜 출력
for i in range(len(report)):
    # print(report[i]['report_nm'], report[i]['flr_nm'], report[i]['rcept_dt'][0:4]+'.'+report[i]['rcept_dt'][4:6]+'.'+report[i]['rcept_dt'][6:8],'dart.fss.or.kr/dsaf001/main.do?rcpNo='+report[i]['rcp_no'])
    # DB에 삽입할 쿼리문 형식으로 출력
    print("insert into disclosure(disclosure_id, disclosure_name, presenter, indate, url) values(disclosure_seq.nextval, '"+report[i]['report_nm']+"', ", "'"+report[i]['flr_nm']+"', ", "'"+report[i]['rcept_dt'][0:4]+'.'+report[i]['rcept_dt'][4:6]+'.'+report[i]['rcept_dt'][6:8]+"', ","'"+'dart.fss.or.kr/dsaf001/main.do?rcpNo='+report[i]['rcp_no']+"');")
