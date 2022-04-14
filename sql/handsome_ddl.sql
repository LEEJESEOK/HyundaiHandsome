/***************************************************************************
테이블 : HANDSOME_LOG
프로그램 명 : 테이블의 DDL,DML 의 로그를 기록하는 테이블 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  고석준   1. 최초작성
***************************************************************************/
DROP SEQUENCE handsome_log_seq;

CREATE SEQUENCE handsome_log_seq INCREMENT BY 1 START WITH 1;

DROP TABLE handsome_log CASCADE CONSTRAINTS;

CREATE TABLE handsome_log (
    id          NUMBER PRIMARY KEY,
    table_name  VARCHAR2(100),
    crud        VARCHAR(10),
    log_content VARCHAR2(4000),
    log_date    DATE
);

/***************************************************************************
테이블 : MEMBER
프로그램 명 : HANDSOME 페이지 관리자 정보를 저장하는 테이블 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이지은   1. 최초작성
***************************************************************************/
DROP SEQUENCE member_seq;

CREATE SEQUENCE member_seq INCREMENT BY 1 START WITH 1;

DROP TABLE member CASCADE CONSTRAINTS;

CREATE TABLE member (
    name VARCHAR2(50) PRIMARY KEY, -- 회원 이름
    tel  VARCHAR2(50) NOT NULL,    -- 회원 연락처
    id   VARCHAR2(50) NOT NULL,    -- 회원 아이디
    pwd  VARCHAR2(400) NOT NULL     -- 회원 비밀번호 
);

/***************************************************************************
트리거 : LOG_MEMBER
프로그램 명 : member 테이블 로그 남기는 트리거
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-13  이지은   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER log_member AFTER
    INSERT OR UPDATE OR DELETE ON member
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'MEMBER',
                'INSERT',
                'MEMBER 테이블에 PK가 '
                || :new.id
                || '인 데이터가 INSERT 되었습니다.'
            );
        END;
    END IF;
END log_member;
/

/***************************************************************************
테이블 : DISCLOSURE
프로그램 명 : 공시정보의 정보를 넣는 테이블
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-04   문혁    1. 최초작성
***************************************************************************/
DROP SEQUENCE disclosure_seq;

CREATE SEQUENCE disclosure_seq INCREMENT BY 1 START WITH 1;

DROP TABLE disclosure CASCADE CONSTRAINTS;

CREATE TABLE disclosure (
    disclosure_id   NUMBER(10) PRIMARY KEY,
    disclosure_name VARCHAR2(200) NOT NULL,
    presenter       VARCHAR2(100) NOT NULL,
    indate          VARCHAR2(10) NOT NULL,
    url             VARCHAR2(100) NOT NULL
);

/***************************************************************************
테이블 : IR_PDF
프로그램 명 : IR의 PDF파일 uuid와 파일 이름을 저장한 테이블 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-04   문혁    1. 최초작성
***************************************************************************/
DROP TABLE ir_pdf CASCADE CONSTRAINTS;

CREATE TABLE ir_pdf (
    id        VARCHAR2(32) PRIMARY KEY,
    file_name VARCHAR2(200) NOT NULL
);

/***************************************************************************
뷰 : VW_DIS_DESC
프로그램 명 : 공시정보 페이지 pagination 구현에 필요한 쿼리문에 사용할 view
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-04   문혁    1. 최초작성
***************************************************************************/
DROP VIEW vw_dis_desc;

CREATE OR REPLACE VIEW vw_dis_desc AS
    ( SELECT
        ROWNUM num,
        d.*
    FROM
        (
            SELECT
                *
            FROM
                disclosure
            ORDER BY
                disclosure_id DESC
        ) d
    );

/***************************************************************************
트리거 : LOG_DISCLOSURE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05   문혁   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER LOG_DISCLOSURE
AFTER INSERT OR UPDATE OR DELETE ON DISCLOSURE
FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID, TABLE_NAME, CRUD, LOG_CONTENT) 
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL, 'DISCLOSURE', 'INSERT', 
                            'DISCLOSURE 테이블에 PK가 '|| :new.DISCLOSURE_ID ||'인 데이터가 INSERT 되었습니다.');
            END;
        ELSIF UPDATING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID,TABLE_NAME, CRUD, LOG_CONTENT)
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL, 'DISCLOSURE', 'UPDATE', 
                            'DISCLOSURE 테이블에 pk가 '|| :old.DISCLOSURE_ID ||'인 데이터가 UPDATE 되었습니다. '||
                            'DISCLOSURE_NAME : '|| :old.DISCLOSURE_NAME || ' to ' || :new.DISCLOSURE_NAME ||
                            ' PRESENTER : '|| :old.PRESENTER || ' to ' || :new.PRESENTER ||
                            ' INDATE : ' || :old.INDATE || ' to ' || :new.INDATE ||
                            ' URL : ' || :old.URL || ' to ' || :new.URL);
            END;
        ELSIF DELETING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID,TABLE_NAME, CRUD, LOG_CONTENT) 
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL,'DISCLOSURE', 'DELETE', 
                            'DISCLOSURE 테이블에 pk가 ' || :old.DISCLOSURE_ID||' 인 데이터가 DELETE 되었습니다. '||
                            ' 삭제된 데이터 내용'||CHR(10)||CHR(13)||
                            ' DISCLOSURE_NAME : ' || :old.DISCLOSURE_NAME || 
                            ' PRESENTER : ' || :old.PRESENTER || 
                            ' INDATE : ' || :old.INDATE ||
                            ' URL : ' || :old.URL);
            END;
        END IF;
    END LOG_DISCLOSURE;

/***************************************************************************
트리거 : LOG_IR_PDF
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05   문혁   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER LOG_IR_PDF
AFTER INSERT OR UPDATE OR DELETE ON IR_PDF
FOR EACH ROW
    BEGIN
        IF INSERTING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID, TABLE_NAME, CRUD, LOG_CONTENT) 
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL, 'IR_PDF', 'INSERT', 
                            'IR_PDF 테이블에 PK가 '|| :new.ID ||'인 데이터가 INSERT 되었습니다.');
            END;
        ELSIF UPDATING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID,TABLE_NAME, CRUD, LOG_CONTENT)
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL, 'IR_PDF', 'UPDATE', 
                            'IR_PDF 테이블에 pk가 '|| :old.ID ||'인 데이터가 UPDATE 되었습니다. '||
                            'FILE_NAME : '|| :old.FILE_NAME || ' to ' || :new.FILE_NAME);
            END;
        ELSIF DELETING THEN
            BEGIN
                INSERT INTO HANDSOME_LOG(ID,TABLE_NAME, CRUD, LOG_CONTENT) 
                     VALUES(HANDSOME_LOG_SEQ.NEXTVAL,'IR_PDF', 'DELETE', 
                            'IR_PDF 테이블에 pk가 ' || :old.ID||' 인 데이터가 DELETE 되었습니다. '||
                            ' 삭제된 데이터 내용'||CHR(10)||CHR(13)||
                            ' FILE_NAME : ' || :old.FILE_NAME);
            END;
        END IF;
    END LOG_IR_PDF;

/***************************************************************************
테이블 : BRAND
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP SEQUENCE brand_seq;

CREATE SEQUENCE brand_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER NOCYCLE NOKEEP
NOSCALE GLOBAL;

DROP TABLE brand CASCADE CONSTRAINTS;

CREATE TABLE brand (
    id          NUMBER(4, 0),
    type        NUMBER(4, 0),
    name        VARCHAR2(100 BYTE),
    ss          VARCHAR2(100 BYTE),
    description VARCHAR2(4000 BYTE),
    mall_type   NUMBER,
    mall_id     VARCHAR2(10 BYTE)
)
SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
TABLESPACE users;

CREATE UNIQUE INDEX brand_id_pk ON
    brand (
        id
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users;

CREATE UNIQUE INDEX brand_name_uk ON
    brand (
        name
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users;

ALTER TABLE brand MODIFY (
    type
        CONSTRAINT brand_type_nn NOT NULL ENABLE
);

ALTER TABLE brand MODIFY (
    name
        CONSTRAINT brand_name_nn NOT NULL ENABLE
);

ALTER TABLE brand
    ADD CONSTRAINT brand_id_pk PRIMARY KEY ( id )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

ALTER TABLE brand
    ADD CONSTRAINT brand_name_uk UNIQUE ( name )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

/***************************************************************************
테이블 : BRAND_TYPE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP SEQUENCE brand_type_seq;

CREATE SEQUENCE brand_type_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER NOCYCLE
NOKEEP NOSCALE GLOBAL;

DROP TABLE brand_type CASCADE CONSTRAINTS;

CREATE TABLE brand_type (
    id   NUMBER(4, 0),
    name VARCHAR2(100 BYTE)
)
SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
TABLESPACE users;

ALTER TABLE brand_type MODIFY (
    name
        CONSTRAINT brand_type_name_nn NOT NULL ENABLE
);

ALTER TABLE brand_type
    ADD CONSTRAINT brand_type_id_pk PRIMARY KEY ( id )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

ALTER TABLE brand_type
    ADD CONSTRAINT brand_type_name_uk UNIQUE ( name )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

ALTER TABLE brand
    ADD CONSTRAINT brand_type_fk FOREIGN KEY ( type )
        REFERENCES brand_type ( id )
    ENABLE;
      
      
/***************************************************************************
테이블 : MALL_TYPE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP SEQUENCE mall_type_seq;

CREATE SEQUENCE mall_type_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER NOCYCLE NOKEEP
NOSCALE GLOBAL;

DROP TABLE mall_type CASCADE CONSTRAINTS;

CREATE TABLE mall_type (
    id   NUMBER,
    name VARCHAR2(100 BYTE)
)
SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
    FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
TABLESPACE users;

CREATE UNIQUE INDEX mall_type_id_pk ON
    mall_type (
        id
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users;

CREATE UNIQUE INDEX mall_type_uri_uk ON
    mall_type (
        name
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users;

ALTER TABLE mall_type MODIFY (
    name
        CONSTRAINT mall_type_uri_nn NOT NULL ENABLE
);

ALTER TABLE mall_type
    ADD CONSTRAINT mall_type_id_pk PRIMARY KEY ( id )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

ALTER TABLE mall_type
    ADD CONSTRAINT mall_type_uri_uk UNIQUE ( name )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE users
    ENABLE;

ALTER TABLE brand
    ADD CONSTRAINT mall_type_fk FOREIGN KEY ( mall_type )
        REFERENCES mall_type ( id )
    ENABLE;
      
      
/***************************************************************************
테이블 : BRAND_IMG
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP SEQUENCE brand_img_seq;

CREATE SEQUENCE brand_img_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER NOCYCLE NOKEEP
NOSCALE GLOBAL;

DROP TABLE brand_img CASCADE CONSTRAINTS;

CREATE TABLE brand_img (
    id       NUMBER(6, 0),
    brand_id NUMBER(4, 0),
    uri      VARCHAR2(2000 BYTE)
)
SEGMENT CREATION DEFERRED
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING TABLESPACE users;

CREATE UNIQUE INDEX brand_img_id_pk ON
    brand_img (
        id
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS TABLESPACE users;

ALTER TABLE brand_img
    ADD CONSTRAINT brand_img_id_pk PRIMARY KEY ( id )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS TABLESPACE users
    ENABLE;

ALTER TABLE brand_img
    ADD CONSTRAINT brand_img_brand_id_fk FOREIGN KEY ( brand_id )
        REFERENCES brand ( id )
    ENABLE;

      
/***************************************************************************
뷰 : BEAUTY_BRAND_INFO
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP VIEW beauty_brand_info;

CREATE OR REPLACE FORCE EDITIONABLE VIEW beauty_brand_info (
    "ID",
    "TYPE",
    "NAME",
    "SS",
    "DESCRIPTION",
    "MALL_SCRIPT_TYPE",
    "MALL_ID"
) AS
    SELECT
        id,
        type,
        name,
        ss,
        description,
        concat('goBrandPav', to_char(mall_type, 'fm00')) AS mall_script_type,
        mall_id
    FROM
        brand
    WHERE
        type = pkg_handsome.sf_brand_type_index('beauty')
    ORDER BY
        id;

/***************************************************************************
뷰 : FASHION_BRAND_INFO
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP VIEW fashion_brand_info;

CREATE OR REPLACE FORCE EDITIONABLE VIEW fashion_brand_info (
    "ID",
    "TYPE",
    "NAME",
    "SS",
    "DESCRIPTION",
    "MALL_SCRIPT_TYPE",
    "MALL_ID"
) AS
    SELECT
        id,
        type,
        name,
        ss,
        description,
        concat('goBrandPav', to_char(mall_type, 'fm00')) AS mall_script_type,
        mall_id
    FROM
        brand
    WHERE
        type = pkg_handsome.sf_brand_type_index('fashion')
    ORDER BY
        id;

/***************************************************************************
뷰 : LIFESTYLE_BRAND_INFO
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
DROP VIEW lifestyle_brand_info;

CREATE OR REPLACE FORCE EDITIONABLE VIEW lifestyle_brand_info (
    "ID",
    "TYPE",
    "NAME",
    "SS",
    "DESCRIPTION",
    "MALL_SCRIPT_TYPE",
    "MALL_ID"
) AS
    SELECT
        id,
        type,
        name,
        ss,
        description,
        concat('goBrandPav', to_char(mall_type, 'fm00')) AS mall_script_type,
        mall_id
    FROM
        brand
    WHERE
        type = pkg_handsome.sf_brand_type_index('lifeStyle')
    ORDER BY
        id;

/***************************************************************************
트리거 : FILTER_UPPER_BRAND_TYPE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
CREATE OR REPLACE EDITIONABLE TRIGGER filter_upper_brand_type BEFORE
    INSERT OR UPDATE ON brand_type
    FOR EACH ROW
BEGIN
    :new.name := upper(:new.name);
END;
/

ALTER TRIGGER filter_upper_brand_type ENABLE;

/***************************************************************************
트리거 : LOG_BRAND
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
CREATE OR REPLACE EDITIONABLE TRIGGER log_brand AFTER
    INSERT OR UPDATE OR DELETE ON brand
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND',
                'INSERT',
                'pk : ' || :new.id
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND',
                'UPDATE',
                'pk : '
                || :old.id
                || ' -> '
                || :new.id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND',
                'DELETE',
                'pk : ' || :old.id
            );

        END;
    END IF;
END log_brand;
/

ALTER TRIGGER log_brand ENABLE;

/***************************************************************************
트리거 : LOG_BRAND_IMG
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
CREATE OR REPLACE EDITIONABLE TRIGGER log_brand_img AFTER
    INSERT OR UPDATE OR DELETE ON brand_img
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_IMG',
                'INSERT',
                'pk : ' || :new.id
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_IMG',
                'UPDATE',
                'pk : '
                || :old.id
                || ' -> '
                || :new.id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_IMG',
                'DELETE',
                'pk : ' || :old.id
            );

        END;
    END IF;
END log_brand_type;
/

ALTER TRIGGER log_brand_img ENABLE;

/***************************************************************************
트리거 : LOG_BRAND_TYPE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
CREATE OR REPLACE EDITIONABLE TRIGGER log_brand_type AFTER
    INSERT OR UPDATE OR DELETE ON brand_type
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_TYPE',
                'INSERT',
                'pk : ' || :new.id
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_TYPE',
                'UPDATE',
                'pk : '
                || :old.id
                || ' -> '
                || :new.id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'BRAND_TYPE',
                'DELETE',
                'pk : ' || :old.id
            );

        END;
    END IF;
END log_brand_type;
/

ALTER TRIGGER log_brand_type ENABLE;

/***************************************************************************
트리거 : LOG_MALL_TYPE
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  이제석   1. 최초작성
***************************************************************************/
CREATE OR REPLACE EDITIONABLE TRIGGER log_mall_type AFTER
    INSERT OR UPDATE OR DELETE ON mall_type
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'MALL_TYPE',
                'INSERT',
                'pk : ' || :new.id
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'MALL_TYPE',
                'UPDATE',
                'pk : '
                || :old.id
                || ' -> '
                || :new.id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'MALL_TYPE',
                'DELETE',
                'pk : ' || :old.id
            );

        END;
    END IF;
END log_brand_type;
/

ALTER TRIGGER log_mall_type ENABLE;

/***************************************************************************
테이블 : IMAGE
프로그램 명 :  
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  고석준   1. 최초작성
***************************************************************************/
DROP TABLE image CASCADE CONSTRAINTS;

CREATE TABLE image (
    id  VARCHAR2(100) PRIMARY KEY,
    uri VARCHAR2(100) NOT NULL
);

/***************************************************************************
테이블 : COLLECTION
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  고석준   1. 최초작성
***************************************************************************/
DROP SEQUENCE collection_seq;

CREATE SEQUENCE collection_seq INCREMENT BY 1 START WITH 1000;

DROP TABLE collection CASCADE CONSTRAINTS;

CREATE TABLE collection (
    id          NUMBER PRIMARY KEY,
    season_cd   VARCHAR2(100) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    thumnail_id VARCHAR2(100) NOT NULL
);

ALTER TABLE collection
    ADD CONSTRAINT fk_collection_thumnail FOREIGN KEY ( thumnail_id )
        REFERENCES image ( id );

/***************************************************************************
테이블 : COLLECTION_IMAGES
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  고석준   1. 최초작성
***************************************************************************/
DROP TABLE collection_images CASCADE CONSTRAINTS;

CREATE TABLE collection_images (
    id            NUMBER PRIMARY KEY,
    collection_id NUMBER NOT NULL,
    image_id      VARCHAR2(100) NOT NULL
);

ALTER TABLE collection_images
    ADD CONSTRAINT fk_collection FOREIGN KEY ( collection_id )
        REFERENCES collection ( id );

ALTER TABLE collection_images
    ADD CONSTRAINT fk_collection_image FOREIGN KEY ( image_id )
        REFERENCES image ( id );

/***************************************************************************
테이블 : NEWS
프로그램 명 : 
----------------------------------------------------------------------------
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-05  고석준   1. 최초작성
***************************************************************************/
DROP SEQUENCE news_seq;

CREATE SEQUENCE news_seq INCREMENT BY 1 START WITH 1000;

DROP TABLE news CASCADE CONSTRAINTS;

CREATE TABLE news (
    id          NUMBER PRIMARY KEY,
    title       VARCHAR2(100) NOT NULL,
    content     CLOB NOT NULL,
    image_id    VARCHAR2(100) NOT NULL,
    thumnail_id VARCHAR2(100) NOT NULL,
    create_date DATE DEFAULT sysdate,
    update_date DATE
);

ALTER TABLE news
    ADD CONSTRAINT fk_news_image FOREIGN KEY ( image_id )
        REFERENCES image ( id );

ALTER TABLE news
    ADD CONSTRAINT fk_news_thumnail FOREIGN KEY ( thumnail_id )
        REFERENCES image ( id );

/***************************************************************************
트리거 : LOG_COLLECTION
프로그램 명 : Collection 테이블 로그 남기는 트리거
----------------------------------------------------------------------------
실행
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-12  고석준   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER log_collection AFTER
    INSERT OR UPDATE OR DELETE ON collection
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION',
                'INSERT',
                'COLLECTION 테이블에 PK가 '
                || :new.id
                || '인 데이터가 INSERT 되었습니다.'
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION',
                'UPDATE',
                'COLLECTION 테이블에 pk가 '
                || :old.id
                || '인 데이터가 UPDATE 되었습니다. '
                || 'SEASON_CD: '
                || :old.season_cd
                || ' to '
                || :new.season_cd
                || ' NAME: '
                || :old.name
                || ' to '
                || :new.name
                || ' THUMNAIL_ID: '
                || :old.thumnail_id
                || ' to '
                || :new.thumnail_id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION',
                'DELETE',
                'COLLECTION 테이블에 pk가 '
                || :old.id
                || ' 인 데이터가 DELETE 되었습니다. '
                || ' 삭제된 데이터 내용'
                || CHR(10)
                || CHR(13)
                || ' SEASON_CD : '
                || :old.season_cd
                || ' NAME : '
                || :old.name
                || ' Thumnail : '
                || :old.thumnail_id
            );

        END;
    END IF;
END log_collection;
/

/***************************************************************************
트리거 : LOG_COLLECTION_IMAGES
프로그램 명 : Collection_images 테이블 로그 남기는 트리거
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-12  고석준   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER log_collection_images AFTER
    INSERT OR UPDATE OR DELETE ON collection_images
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION_IMAGES',
                'INSERT',
                'COLLECTION_IMAGES 테이블에 PK가 '
                || :new.id
                || '인 데이터가 INSERT 되었습니다.'
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION_IMAGES',
                'UPDATE',
                'COLLECTION_IMAGES 테이블에 PK가 '
                || :old.id
                || '인 데이터가 UPDATE 되었습니다.'
                || CHR(10)
                || CHR(13)
                || ' COLLECTION_ID : '
                || :old.collection_id
                || ' to '
                || :new.collection_id
                || CHR(10)
                || CHR(13)
                || ' IMAGE_ID : '
                || :old.image_id
                || ' to '
                || :new.image_id
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'COLLECTION_IMAGES',
                'DELETE',
                'COLLECTION_IMAGES 테이블에 PK가 '
                || :old.id
                || '인 데이터가 DELETE 되었습니다.'
                || CHR(10)
                || CHR(13)
                || '삭제된 데이터 내용'
                || CHR(10)
                || CHR(13)
                || ' COLLECTION_ID : '
                || :old.collection_id
                || CHR(10)
                || CHR(13)
                || ' IMAGE_ID : '
                || :old.image_id
            );

        END;
    END IF;
END log_collection_images;
/

/***************************************************************************
트리거 : LOG_IMAGE
프로그램 명 : image 테이블 로그 남기는 트리거
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-12  고석준   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER log_image AFTER
    INSERT OR UPDATE OR DELETE ON image
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'IMAGE',
                'INSERT',
                'IMAGE 테이블에 PK가 '
                || :new.id
                || '인 데이터가 INSERT 되었습니다.'
            );

        END;

    ELSIF updating THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'IMAGE',
                'UPDATE',
                'IMAGE 테이블에 PK가 '
                || :old.id
                || '인 데이터가 UPDATE 되었습니다.'
                || CHR(10)
                || CHR(13)
                || ' URI : '
                || :old.uri
                || ' to '
                || :new.uri
            );

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'IMAGE',
                'DELETE',
                'IMAGE 테이블에 PK가 '
                || :old.id
                || '인 데이터가 DELETE 되었습니다.'
                || CHR(10)
                || CHR(13)
                || '삭제된 데이터 내용'
                || CHR(10)
                || CHR(13)
                || ' URI : '
                || :old.uri
            );

        END;
    END IF;
END log_image;
/

/***************************************************************************
트리거 : LOG_NEWS
프로그램 명 : NEWS 테이블 로그 남기는 트리거
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-12  고석준   1. 최초작성
***************************************************************************/
CREATE OR REPLACE TRIGGER log_news AFTER
    INSERT OR UPDATE OR DELETE ON news
    FOR EACH ROW
BEGIN
    IF inserting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'NEWS',
                'INSERT',
                'NEWS 테이블에 PK가 '
                || :new.id
                || '인 데이터가 INSERT 되었습니다.'
            );

        END;

    ELSIF updating THEN
        BEGIN
            IF :old.content <> :new.content THEN
                BEGIN
                    INSERT INTO handsome_log (
                        id,
                        table_name,
                        crud,
                        log_content
                    ) VALUES (
                        handsome_log_seq.NEXTVAL,
                        'NEWS',
                        'UPDATE',
                        'NEWS 테이블에 PK가 '
                        || :old.id
                        || '인 데이터가 UPDATE 되었습니다.'
                        || CHR(10)
                        || CHR(13)
                        || ' IMAGE_ID : '
                        || :old.image_id
                        || ' to '
                        || :new.image_id
                        || CHR(10)
                        || CHR(13)
                        || ' THUMNAIL_ID : '
                        || :old.thumnail_id
                        || ' to '
                        || :new.thumnail_id
                        || CHR(10)
                        || CHR(13)
                        || ' CONTENT 의 내용이 변경되었습니다.'
                    );

                END;

            ELSIF :old.content = :new.content THEN
                BEGIN
                    INSERT INTO handsome_log (
                        id,
                        table_name,
                        crud,
                        log_content
                    ) VALUES (
                        handsome_log_seq.NEXTVAL,
                        'NEWS',
                        'UPDATE',
                        'NEWS 테이블에 PK가 '
                        || :old.id
                        || '인 데이터가 UPDATE 되었습니다.'
                        || CHR(10)
                        || CHR(13)
                        || ' IMAGE_ID : '
                        || :old.image_id
                        || ' to '
                        || :new.image_id
                        || CHR(10)
                        || CHR(13)
                        || ' THUMNAIL_ID : '
                        || :old.thumnail_id
                        || ' to '
                        || :new.thumnail_id
                    );

                END;
            END IF;

        END;
    ELSIF deleting THEN
        BEGIN
            INSERT INTO handsome_log (
                id,
                table_name,
                crud,
                log_content
            ) VALUES (
                handsome_log_seq.NEXTVAL,
                'NEWS',
                'DELETE',
                'NEWS 테이블에 PK가 '
                || :old.id
                || '인 데이터가 DELETE 되었습니다.'
                || CHR(10)
                || CHR(13)
                || '삭제된 데이터 내용'
                || CHR(10)
                || CHR(13)
                || ' IMAGE_ID : '
                || :old.image_id
                || CHR(10)
                || CHR(13)
                || ' THUMNAIL_ID : '
                || :old.thumnail_id
                || CHR(10)
                || CHR(13)
                || ' CREATE_DATE : '
                || :old.create_date
            );

        END;
    END IF;
END log_news;
/

/***************************************************************************
뷰 : V_COLLECTION_STAT
프로그램 명 : 
----  ----------  ------  --------------------------------------------------    
버전    작업일자    작성자   Description
----  ----------  ------  --------------------------------------------------
1.0   2022-04-12  고석준   1. 최초작성
***************************************************************************/
DROP VIEW v_collection_stat;

CREATE OR REPLACE VIEW v_collection_stat AS
    SELECT
        *
    FROM
        (
            SELECT
                COUNT(*)                       AS collection_count,
                decode(name, NULL, '합계', name) AS name
            FROM
                collection
            GROUP BY
                CUBE(name)
            ORDER BY
                collection_count
        ),
        (
            SELECT
                COUNT(*)                                 AS season_count,
                decode(season_cd, NULL, '합계', season_cd) AS season_cd
            FROM
                collection
            GROUP BY
                CUBE(season_cd)
            ORDER BY
                season_count
        )
WITH READ ONLY;

COMMIT;