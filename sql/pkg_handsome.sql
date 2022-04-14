drop package pkg_handsome;
CREATE OR REPLACE PACKAGE "PKG_HANDSOME" AS
-- 제석
    --  브랜드 정보 select 결과 레코드
    TYPE select_brand_type IS RECORD (
        id           brand.id%TYPE,
        type         brand.type%TYPE,
        name         brand.name%TYPE,
        ss           brand.ss%TYPE,
        description  brand.description%TYPE,
        malluri      VARCHAR2(2000),
        thumbnailuri brand_img.uri%TYPE,
        popheaduri   brand_img.uri%TYPE,
        popuri       brand_img.uri%TYPE
    );
    -- 브랜드 정보 select 결과 테이블
    TYPE select_brand_table IS
        TABLE OF select_brand_type;
        
    -- 브랜드 정보 테이블 insert 프로시저
    PROCEDURE sp_insert_brand (
        p_type        brand_type.name%TYPE,
        p_name        brand.name%TYPE,          -- 브랜드 이름
        p_ss          brand.ss%TYPE,
        p_description brand.description%TYPE,   -- 브랜드 설명
        p_mall_type   brand_type.name%TYPE,     -- 브랜드관 종류
        p_mall_id     brand.mall_id%TYPE        -- 브랜드관 id
    );

    -- 브랜드 정보 테이블 update 프로시저
    PROCEDURE sp_update_brand (
        p_type        brand_type.name%TYPE,
        p_name        brand.name%TYPE,
        p_ss          brand.ss%TYPE,
        p_description brand.description%TYPE,
        p_mall_type   brand_type.name%TYPE,
        p_mall_id     brand.mall_id%TYPE
    );
    
    -- 브랜드 정보 테이블 delete 프로시저
    PROCEDURE sp_delete_brand (
        p_id brand.id%TYPE
    );

    -- 브랜드 이미지 insert 프로시저
    PROCEDURE sp_insert_brand_img (
        p_brand_id brand_img.brand_id%TYPE,
        p_uri      brand_img.uri%TYPE
    );

    -- 브랜드 이미지 update 프로시저
    PROCEDURE sp_update_brand_img (
        p_id       brand_img.id%TYPE,
        p_brand_id brand_img.brand_id%TYPE,
        p_uri      brand_img.uri%TYPE
    );

    -- 브랜드 이미지 delete 프로시저
    PROCEDURE sp_delete_brand_img (
        p_id brand_img.id%TYPE
    );

    -- 패션 브랜드 select 함수
    FUNCTION sf_select_fashion_brand RETURN select_brand_table
        PIPELINED;

    --
    FUNCTION sf_select_one_brand (
        p_brand_type_name brand_type.name%TYPE
    ) RETURN select_brand_table
        PIPELINED;

    -- mall_type id 검색 함수
    -- param : mall_type.name
    -- return : mall_type.id
    FUNCTION sf_mall_type_index (
        p_name mall_type.name%TYPE
    ) RETURN mall_type.id%TYPE;

    -- brand_type id 검색 함수
    -- param : brand_type.name
    -- return : brand_type.id
    FUNCTION sf_brand_type_index (
        p_name brand_type.name%TYPE
    ) RETURN brand_type.id%TYPE;

    -- mallurl 반환 함수
    -- param : brand.mall_type, brand.mall_id
    -- return : url
    -- mall_type에 따라 다른 형식의 브랜드관 링크 반환
    FUNCTION sf_encode_malluri (
        p_mall_type brand.mall_type%TYPE,
        p_mall_id   brand.mall_id%TYPE
    ) RETURN VARCHAR2;

-- 석준
    TYPE select_news_list_type IS RECORD (
        rnum        NUMBER,
        id          NUMBER,
        title       VARCHAR2(100),
        create_date VARCHAR2(100),
        thumnail_id VARCHAR2(100),
        uri         VARCHAR2(100)
    );
-- 2. 테이블 타입 객체 생성
    TYPE select_news_list_table IS
        TABLE OF select_news_list_type;

--1. OBJECT 타입 생성
    TYPE count_news_type IS RECORD (
        count NUMBER
    );

--2. 테이블 타입 객체 생성
    TYPE count_news_table IS
        TABLE OF count_news_type;


--1. OBJECT 타입 생성
    TYPE select_newsdet_type IS RECORD (
        id          NUMBER,
        title       VARCHAR2(100),
        content     CLOB,
        image_id    VARCHAR2(100),
        uri         VARCHAR2(100),
        create_date VARCHAR2(100),
        prev_id     VARCHAR2(100),
        prev_title  VARCHAR2(100),
        next_id     VARCHAR2(100),
        next_title  VARCHAR2(100)
    );

--2. 테이블 타입 객체 생성
    TYPE select_newsdet_table IS
        TABLE OF select_newsdet_type;

--1. OBJECT 타입 생성
    TYPE select_collection_list_type IS RECORD (
        rnum          NUMBER,
        collection_id NUMBER,
        season_cd     VARCHAR2(100),
        name          VARCHAR2(100),
        thumnail_id   VARCHAR2(100),
        uri           VARCHAR2(100),
        count         NUMBER
    );

--2. 테이블 타입 객체 생성
    TYPE select_collection_list_table IS
        TABLE OF select_collection_list_type;


--1. OBJECT 타입 생성
    TYPE select_collection_brand_type IS RECORD (
        name VARCHAR2(100)
    );


--2. 테이블 타입 객체 생성
    TYPE select_collection_brand_table IS
        TABLE OF select_collection_brand_type;

--1. OBJECT 타입 생성
    TYPE count_collection_type IS RECORD (
        count NUMBER
    );

--2. 테이블 타입 객체 생성
    TYPE count_collection_table IS
        TABLE OF count_collection_type;

--1. OBJECT 타입 생성
    TYPE select_collection_det_type IS RECORD (
        image_id   VARCHAR2(100),
        uri        VARCHAR2(100),
        season_cd  VARCHAR2(100),
        brand_name VARCHAR2(100)
    );

--2. 테이블 타입 객체 생성
    TYPE select_collection_det_table IS
        TABLE OF select_collection_det_type;
    PROCEDURE p_insert_news (
        p_title       IN news.title%TYPE,
        p_content     IN news.content%TYPE,
        p_image_id    IN news.image_id%TYPE,
        p_thumnail_id IN news.thumnail_id%TYPE
    );

    PROCEDURE p_insertcollection (
        v_season_cd  IN collection.season_cd%TYPE,
        v_brand_name IN collection.name%TYPE,
        v_file_name  IN image.id%TYPE,
        v_thumnail   IN INT
    );

    PROCEDURE p_news_delete (
        p_id news.id%TYPE
    );

    PROCEDURE p_news_update (
        p_id          IN news.id%TYPE,
        p_title       IN news.title%TYPE,
        p_image_id    IN news.image_id%TYPE,
        p_thumnail_id IN news.thumnail_id%TYPE,
        p_content     IN news.content%TYPE
    );

    FUNCTION f_count_collection (
        p_brandname VARCHAR2
    ) RETURN count_collection_table
        PIPELINED;

    FUNCTION f_count_news RETURN count_news_table
        PIPELINED;

    FUNCTION f_select_collection_brand_name RETURN select_collection_brand_table
        PIPELINED;

    FUNCTION f_select_collection_det (
        p_collection_id IN NUMBER
    ) RETURN select_collection_det_table
        PIPELINED;

    FUNCTION f_select_collection_list (
        p_brandname IN VARCHAR2,
        p_indexpage IN NUMBER
    ) RETURN select_collection_list_table
        PIPELINED;

    TYPE select_collection_stat_type IS RECORD (
        count   NUMBER,
        stat_cd VARCHAR2(100)
    );
    TYPE select_collection_stat_table IS
        TABLE OF select_collection_stat_type;
    FUNCTION f_select_collection_stat (
        p_stat_cd IN VARCHAR2 -- 1.SEASON 2.NAME
    ) RETURN select_collection_stat_table
        PIPELINED;

    FUNCTION f_select_news_list_table (
        p_pageindex IN NUMBER
    ) RETURN select_news_list_table
        PIPELINED;

    FUNCTION f_select_newsdet (
        p_newsid IN NUMBER
    ) RETURN select_newsdet_table
        PIPELINED;

-- 혁
-- pdf 파일 추가
    PROCEDURE insertpdf (
        p_id        IN ir_pdf.id%TYPE,
        p_file_name IN ir_pdf.file_name%TYPE
    );
    -- pdf 파일 삭제
    PROCEDURE deletepdf (
        p_id IN ir_pdf.id%TYPE
    );
    -- pdf 파일 이름변경
    PROCEDURE updatepdf (
        p_id        IN ir_pdf.id%TYPE,
        p_file_name IN ir_pdf.file_name%TYPE
    );
    -- uuid를 이용한 파일 이름 조회 함수
    FUNCTION fn_selectfilename (
        p_id IN ir_pdf.id%TYPE
    ) RETURN VARCHAR2;

    -- 새로운 공시 추가
    PROCEDURE insertdisclosure (
        p_disclosure_id   IN disclosure.disclosure_id%TYPE,
        p_disclosure_name IN disclosure.disclosure_name%TYPE,
        p_presenter       IN disclosure.presenter%TYPE,
        p_indate          IN disclosure.indate%TYPE,
        p_url             IN disclosure.url%TYPE
    );
    -- 공시 삭제
    PROCEDURE deletedisclosure (
        p_disclosure_id IN disclosure.disclosure_id%TYPE
    );

    -- 전체 공시정보 수 조회
    FUNCTION fn_selecttotdisclosure RETURN NUMBER;

    -- 레코드 타입 생성
    TYPE disclosure_type IS RECORD (
        disclosure_id   NUMBER(10),
        disclosure_name VARCHAR2(200),
        presenter       VARCHAR2(100),
        indate          VARCHAR2(10),
        url             VARCHAR2(100)
    );
    -- 반환할 테이블 타입 생성
    TYPE disclosure_table IS
        TABLE OF disclosure_type;

    -- 파이프 라인 함수
    FUNCTION fn_selectsamedisclosure (
        p_name IN disclosure.disclosure_name%TYPE
    ) RETURN disclosure_table
        PIPELINED;

-- 지은
    -- 레코드 타입 생성
    TYPE member_type IS RECORD (
        name member.name%TYPE,
        tel  member.tel%TYPE,
        id   member.id%TYPE
    );
    -- 테이블 타입 생성
    TYPE member_table IS
        TABLE OF pkg_handsome.member_type;
    -- 관리자 정보 추가
    PROCEDURE sp_member_insert (
        p_name IN member.name%TYPE,
        p_tel  IN member.tel%TYPE,
        p_id   IN member.id%TYPE,
        p_pwd  IN member.pwd%TYPE
    );
    -- 로그인 시 아이디와 비밀번호 일치 확인
    FUNCTION sf_member_login (
        p_id  IN member.id%TYPE,
        p_pwd IN member.pwd%TYPE
    ) RETURN VARCHAR;
    -- 특정 관리자의 정보 조회 
    FUNCTION sf_member_info (
        p_id IN member.id%TYPE
    ) RETURN pkg_handsome.member_table
        PIPELINED;

END;
/
