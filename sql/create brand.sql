---

DROP SEQUENCE mall_type_seq;
-- mall_type 테이블 id sequence
CREATE SEQUENCE mall_type_seq INCREMENT BY 1 START WITH 1;

DROP SEQUENCE brand_type_seq;
-- brand_type 테이블 id sequence
CREATE SEQUENCE brand_type_seq INCREMENT BY 1 START WITH 1;

DROP SEQUENCE brand_seq;
-- brand 테이블 id sequence
CREATE SEQUENCE brand_seq INCREMENT BY 1 START WITH 1;

DROP TABLE mall_type CASCADE CONSTRAINTS;
-- 쇼핑몰 분류 테이블
CREATE TABLE mall_type (
    id   NUMBER
        CONSTRAINT mall_type_id_pk PRIMARY KEY,
    name VARCHAR2(100)
        CONSTRAINT mall_type_uri_uk UNIQUE
        CONSTRAINT mall_type_uri_nn NOT NULL
);

DROP TABLE brand_type CASCADE CONSTRAINTS;
-- 브랜드 분류 테이블
CREATE TABLE brand_type (
    id   NUMBER(4)
        CONSTRAINT brand_type_id_pk PRIMARY KEY,
    name VARCHAR2(100)
        CONSTRAINT brand_type_name_uk UNIQUE
        CONSTRAINT brand_type_name_nn NOT NULL
);

DROP TABLE brand CASCADE CONSTRAINTS;
-- 브랜드 정보 테이블
-- id, 분류, 이름, 키워드, 설명, 쇼핑몰 분류, 쇼핑몰 브랜드 id
CREATE TABLE brand (
    id          NUMBER(4)
        CONSTRAINT brand_id_pk PRIMARY KEY,
    type        NUMBER(4)
        CONSTRAINT brand_type_nn NOT NULL,
    name        VARCHAR2(100)
        CONSTRAINT brand_name_uk UNIQUE
        CONSTRAINT brand_name_nn NOT NULL,
    ss          VARCHAR2(100),
    description VARCHAR2(4000),
    mall_type   NUMBER,
    mall_id     VARCHAR2(10),
    CONSTRAINT brand_type_fk FOREIGN KEY ( type )
        REFERENCES brand_type ( id ),
    CONSTRAINT mall_type_fk FOREIGN KEY ( mall_type )
        REFERENCES mall_type ( id )
);

DROP TABLE brand_img CASCADE CONSTRAINTS;
-- 브랜드 이미지 파일 정보
-- 브랜드 id, 파일 URI
CREATE TABLE brand_img (
    id       NUMBER(6)
        CONSTRAINT brand_img_id_pk PRIMARY KEY,
    brand_id NUMBER(4),
    uri      VARCHAR2(2000),
    CONSTRAINT brand_img_brand_id_fk FOREIGN KEY ( brand_id )
        REFERENCES brand ( id )
);