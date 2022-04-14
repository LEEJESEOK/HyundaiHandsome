CREATE OR REPLACE PACKAGE BODY "PKG_HANDSOME" AS
-- 제석
    -- 브랜드 정보 테이블 insert 프로시저
    PROCEDURE sp_insert_brand (
        p_type        brand_type.name%TYPE,
        p_name        brand.name%TYPE,
        p_ss          brand.ss%TYPE,
        p_description brand.description%TYPE,
        p_mall_type   brand_type.name%TYPE,
        p_mall_id     brand.mall_id%TYPE
    ) IS
    BEGIN
        INSERT INTO brand (
            id,
            type,
            name,
            ss,
            description,
            mall_type,
            mall_id
        ) VALUES (
            brand_seq.NEXTVAL,
            sf_brand_type_index(p_type),
            p_name,
            p_ss,
            p_description,
            sf_mall_type_index(p_mall_type),
            p_mall_id
        );

        COMMIT;
    END;

    -- 브랜드 정보 테이블 update 프로시저
    PROCEDURE sp_update_brand (
        p_type        brand_type.name%TYPE,
        p_name        brand.name%TYPE,
        p_ss          brand.ss%TYPE,
        p_description brand.description%TYPE,
        p_mall_type   brand_type.name%TYPE,
        p_mall_id     brand.mall_id%TYPE
    ) IS
    BEGIN
        UPDATE brand
        SET
            type = sf_brand_type_index(p_type),
            name = p_name,
            ss = p_ss,
            description = p_description,
            mall_type = sf_brand_type_index(p_type),
            mall_id = mall_id
        WHERE
            id = p_type;

        COMMIT;
    END;

    -- 브랜드 정보 테이블 delete 프로시저
    PROCEDURE sp_delete_brand (
        p_id brand.id%TYPE
    ) IS
    BEGIN
        DELETE FROM brand
        WHERE
            id = p_id;

        COMMIT;
    END;

    -- 브랜드 이미지 insert 프로시저
    PROCEDURE sp_insert_brand_img (
        p_brand_id brand_img.brand_id%TYPE,
        p_uri      brand_img.uri%TYPE
    ) IS
    BEGIN
        INSERT INTO brand_img (
            id,
            brand_id,
            uri
        ) VALUES (
            brand_img_seq.NEXTVAL,
            p_brand_id,
            p_uri
        );

        COMMIT;
    END;

    -- 브랜드 이미지 update 프로시저
    PROCEDURE sp_update_brand_img (
        p_id       brand_img.id%TYPE,
        p_brand_id brand_img.brand_id%TYPE,
        p_uri      brand_img.uri%TYPE
    ) IS
    BEGIN
        UPDATE brand_img
        SET
            brand_id = p_brand_id,
            uri = p_uri
        WHERE
            id = p_id;

        COMMIT;
    END;

    -- 브랜드 이미지 delete 프로시저
    PROCEDURE sp_delete_brand_img (
        p_id brand_img.id%TYPE
    ) IS
    BEGIN
        DELETE FROM brand_img
        WHERE
            id = p_id;

        COMMIT;
    END;

    -- 패션 브랜드 select 함수
    FUNCTION sf_select_fashion_brand RETURN select_brand_table
        PIPELINED
    IS
        v_brand_row select_brand_type;
    BEGIN
        FOR rec_data IN (
            SELECT 
                brand.*,
                popheaduri,
                popuri,
                thumbnailuri
            FROM
                brand,
                (
                    SELECT 
                        pophead.uri   popheaduri,
                        pop.uri       popuri,
                        thumbnail.uri thumbnailuri
                    FROM
                             brand_img pophead
                        JOIN brand_img pop ON pophead.brand_id = pop.brand_id
                                              AND pophead.uri > pop.uri
                        JOIN brand_img thumbnail ON pop.brand_id = thumbnail.brand_id
                                                    AND pop.uri > thumbnail.uri
                                                    AND thumbnail.uri IS NOT NULL
                    ORDER BY
                        pophead.id
                )
            WHERE
                type = sf_brand_type_index('fashion')
        ) LOOP
            v_brand_row.id := rec_data.id;
            v_brand_row.type := rec_data.type;
            v_brand_row.name := rec_data.name;
            v_brand_row.ss := rec_data.ss;
            v_brand_row.description := rec_data.description;
            v_brand_row.malluri := sf_encode_malluri(rec_data.mall_type, rec_data.mall_id);
            v_brand_row.thumbnailuri := rec_data.thumbnailuri;
            v_brand_row.popheaduri := rec_data.popheaduri;
            v_brand_row.popuri := rec_data.popuri;
            PIPE ROW ( v_brand_row );
        END LOOP;
    END;

    FUNCTION sf_select_one_brand (
        p_brand_type_name brand_type.name%TYPE
    ) RETURN select_brand_table
        PIPELINED
    IS
        v_brand_row select_brand_type;
    BEGIN
        FOR rec_data IN (
            SELECT
                brand.*,
                pophead.uri popheaduri,
                pop.uri    popuri
            FROM
                     brand
                JOIN brand_img pophead ON brand.id = pophead.brand_id
                JOIN brand_img pop ON pophead.brand_id = pop.brand_id
                                      AND pophead.uri < pop.uri
            WHERE
                brand.type = sf_brand_type_index(p_brand_type_name)
        ) LOOP
            v_brand_row.id := rec_data.id;
            v_brand_row.type := rec_data.type;
            v_brand_row.name := rec_data.name;
            v_brand_row.ss := rec_data.ss;
            v_brand_row.description := rec_data.description;
            v_brand_row.malluri := sf_encode_malluri(rec_data.mall_type, rec_data.mall_id);
            v_brand_row.popheaduri := rec_data.popheaduri;
            v_brand_row.popuri := rec_data.popuri;
            PIPE ROW ( v_brand_row );
        END LOOP;
    END;
    
    -- mall_type id 검색 함수
    -- param : mall_type.name
    -- return : mall_type.id
    FUNCTION sf_mall_type_index (
        p_name mall_type.name%TYPE
    ) RETURN mall_type.id%TYPE IS
        v_ret mall_type.id%TYPE;
    BEGIN
        SELECT DISTINCT
            id
        INTO v_ret
        FROM
            mall_type
        WHERE
            upper(name) LIKE upper(p_name);

        RETURN v_ret;
    END;

    -- brand_type id 검색 함수
    -- param : brand_type.name
    -- return : brand_type.id
    FUNCTION sf_brand_type_index (
        p_name brand_type.name%TYPE
    ) RETURN brand_type.id%TYPE IS
        v_ret brand_type.id%TYPE;
    BEGIN
        SELECT DISTINCT
            id
        INTO v_ret
        FROM
            brand_type
        WHERE
            upper(name) LIKE upper(p_name);

        RETURN v_ret;
    END;

    -- mallurl 반환 함수
    -- param : brand.mall_type, brand.mall_id
    -- return : url
    -- mall_type에 따라 다른 형식의 브랜드관 링크 반환
    FUNCTION sf_encode_malluri (
        p_mall_type brand.mall_type%TYPE,
        p_mall_id   brand.mall_id%TYPE
    ) RETURN VARCHAR2 IS
        v_ret VARCHAR2(2000);
    BEGIN
        CASE p_mall_type
            WHEN 1 THEN
                v_ret := 'http://www.thehandsome.com/ko/b/br' || p_mall_id;
            WHEN 2 THEN
                v_ret := 'http://www.thehandsome.com/ko/c/br'
                         || p_mall_id
                         || '/br'
                         || p_mall_id;
            WHEN 3 THEN
                v_ret := 'https://www.hfashionmall.com/display/brand?brndCtgryNo=' || p_mall_id;
        END CASE;

        RETURN v_ret;
    END;

-- 석준
    FUNCTION f_count_collection (
        p_brandname VARCHAR2
    ) RETURN count_collection_table
        PIPELINED
    IS
        v_rslt count_collection_type;
    BEGIN
        FOR count_cur IN (
            SELECT
                COUNT(*) AS count
            FROM
                (
                    SELECT
                        ROWNUM      AS rnum,
                        a.id        AS collection_id,
                        a.season_cd AS season_cd,
                        a.name      AS name,
                        b.id        AS thumnail_id,
                        b.uri       AS uri
                    FROM
                        collection a,
                        image      b
                    WHERE
                            a.thumnail_id = b.id
                        AND a.name LIKE decode(p_brandname, NULL, '%', p_brandname)
                    ORDER BY
                        ROWNUM
                )
        ) LOOP
            v_rslt := count_collection_type(count_cur.count);
            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_COUNT_COLLECTION함수 : COLLECTION COUNT시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_count_news RETURN count_news_table
        PIPELINED
    IS
        v_rslt count_news_type;
    BEGIN
        FOR count_cur IN (
            SELECT
                COUNT(*) AS count
            FROM
                news
        ) LOOP
            v_rslt := count_news_type(count_cur.count);
            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_COUNT_NEWS함수 : 뉴스 count시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_collection_brand_name RETURN select_collection_brand_table
        PIPELINED
    IS
        v_rslt select_collection_brand_type;
    BEGIN
        FOR list_cur IN (
            SELECT DISTINCT
                name
            FROM
                collection
            ORDER BY
                name
        ) LOOP
            v_rslt := select_collection_brand_type(list_cur.name);
            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_COLLECTION_BRAND_NAME함수 : COLLECTION BRAND NAME SELECT시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_collection_det (
        p_collection_id IN NUMBER
    ) RETURN select_collection_det_table
        PIPELINED
    IS
        v_rslt select_collection_det_type;
    BEGIN
        FOR list_cur IN (
            SELECT
                b.id   AS image_id,
                b.uri,
                c.season_cd,
                c.name AS brand_name
            FROM
                collection_images a,
                image             b,
                collection        c
            WHERE
                    a.image_id = b.id
                AND c.id = a.collection_id
                AND a.collection_id = p_collection_id
        ) LOOP
            v_rslt := select_collection_det_type(list_cur.image_id, list_cur.uri, list_cur.season_cd, list_cur.brand_name);

            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_COLLECTION_DETT함수 : Collection DET select시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_collection_list (
        p_brandname IN VARCHAR2,
        p_indexpage IN NUMBER
    ) RETURN select_collection_list_table
        PIPELINED
    IS
        v_rslt select_collection_list_type;
    BEGIN
        FOR list_cur IN (
            SELECT
                *
            FROM
                (
                    SELECT
                        ROWNUM   AS rnum,
                        a.id     AS collection_id,
                        a.season_cd,
                        a.name,
                        b.id     AS thumnail_id,
                        b.uri,
                        COUNT(*) AS count
                    FROM
                        collection a,
                        image      b
                    WHERE
                            a.thumnail_id = b.id
                        AND a.name LIKE decode(p_brandname, NULL, '%', p_brandname)
                    GROUP BY
                        a.id,
                        a.season_cd,
                        a.name,
                        b.id,
                        b.uri,
                        ROWNUM
                    ORDER BY
                        ROWNUM
                )
            WHERE
                    rnum >= 1 + ( p_indexpage - 1 ) * 8
                AND rnum <= 8 * p_indexpage
        ) LOOP
            v_rslt := select_collection_list_type(list_cur.rnum, list_cur.collection_id, list_cur.season_cd, list_cur.name, list_cur.
            thumnail_id,
                                                 list_cur.uri, list_cur.count);

            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_COLLECTION_LIST함수 : Collection select시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_collection_stat (
        p_stat_cd IN VARCHAR2 -- 1.SEASON 2.NAME
    ) RETURN select_collection_stat_table
        PIPELINED
    IS
        v_rslt select_collection_stat_type;
    BEGIN
        IF upper(p_stat_cd) = 'SEASON' THEN
            BEGIN
                FOR list_cur IN (
                    SELECT
                        season_count,
                        season_cd
                    FROM
                        v_collection_stat
                    GROUP BY (
                        season_count,
                        season_cd
                    )
                    ORDER BY
                        season_count
                ) LOOP
                    v_rslt := select_collection_stat_type(list_cur.season_count, list_cur.season_cd);
                    PIPE ROW ( v_rslt );
                END LOOP;

            END;

        ELSIF upper(p_stat_cd) = 'NAME' THEN
            BEGIN
                FOR list_cur IN (
                    SELECT
                        collection_count,
                        name
                    FROM
                        v_collection_stat
                    GROUP BY (
                        collection_count,
                        name
                    )
                    ORDER BY
                        collection_count
                ) LOOP
                    v_rslt := select_collection_stat_type(list_cur.collection_count, list_cur.name);
                    PIPE ROW ( v_rslt );
                END LOOP;

            END;
        ELSE
            BEGIN
                raise_application_error(-20001, 'F_SELECT_COLLECTION_STAT함수 : 오바른 파라미터 값을 넣지 않았습니다. SEASON, NAME 둘중 하나를 파라미터로 사용해주세요.');
                RETURN;
            END;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_COLLECTION_STAT함수 : '
                                            || p_stat_cd
                                            || '조회시 에러 발생 '
                                            || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_news_list_table (
        p_pageindex IN NUMBER
    ) RETURN select_news_list_table
        PIPELINED
    IS
        v_rslt select_news_list_type;
    BEGIN
        FOR list_cur IN (
            SELECT
                *
            FROM
                (
                    SELECT
                        ROWNUM                             AS rnum,
                        id,
                        title,
                        to_char(create_date, 'YYYY.MM.DD') AS create_date,
                        thumnail_id,
                        uri
                    FROM
                        (
                            SELECT
                                a.id,
                                a.title,
                                create_date,
                                a.thumnail_id,
                                b.uri
                            FROM
                                news  a,
                                image b
                            WHERE
                                a.thumnail_id = b.id
                            ORDER BY
                                create_date DESC
                        )
                )
            WHERE
                    rnum >= 1 + ( p_pageindex - 1 ) * 6
                AND rnum <= 6 * p_pageindex
        ) LOOP
            v_rslt := select_news_list_type(list_cur.rnum, list_cur.id, list_cur.title, list_cur.create_date, list_cur.thumnail_id,
                                           list_cur.uri);

            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_NEWS_LIST_TABLEG함수 : 뉴스 SELECT시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    FUNCTION f_select_newsdet (
        p_newsid IN NUMBER
    ) RETURN select_newsdet_table
        PIPELINED
    IS
        v_rslt select_newsdet_type;
    BEGIN
        FOR list_cur IN (
            SELECT
                a.id,
                a.title,
                a.content,
                a.image_id,
                b.uri,
                to_char(a.create_date, 'YYYY.MM.DD') AS create_date,
                prev_id,
                prev_title,
                next_id,
                next_title
            FROM
                (
                    SELECT
                        id,
                        title,
                        image_id,
                        create_date,
                        content,
                        LAG(id)
                        OVER(
                            ORDER BY
                                create_date DESC
                        ) AS prev_id,
                        LAG(title)
                        OVER(
                            ORDER BY
                                create_date DESC
                        ) AS prev_title,
                        LEAD(id)
                        OVER(
                            ORDER BY
                                create_date DESC
                        ) AS next_id,
                        LEAD(title)
                        OVER(
                            ORDER BY
                                create_date DESC
                        ) AS next_title
                    FROM
                        news
                )     a,
                image b
            WHERE
                    a.id = p_newsid
                AND a.image_id = b.id
        ) LOOP
            v_rslt := select_newsdet_type(list_cur.id, list_cur.title, list_cur.content, list_cur.image_id, list_cur.uri,
                                         list_cur.create_date, list_cur.prev_id, list_cur.prev_title, list_cur.next_id, list_cur.next_title);

            PIPE ROW ( v_rslt );
        END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            raise_application_error(-20001, 'F_SELECT_NEWSDET함수 : 뉴스DET SELECT시 에러 발생 ' || sqlerrm);
            RETURN;
    END;

    PROCEDURE p_insert_news (
        p_title       IN news.title%TYPE,
        p_content     IN news.content%TYPE,
        p_image_id    IN news.image_id%TYPE,
        p_thumnail_id IN news.thumnail_id%TYPE
    ) IS
/*
    프로그램 ID : P_INSERT_NEWS
    프로그램 명 : News insert
    ----------------------------------------------------------------------------
    실행
    CALL P_INSERT_NEWS('title','content','image_id','thumnail_id'); 
    ****************************************************************************
    REVISIONS
    ----  ----------  ------  --------------------------------------------------    
    버전   작업일자      작성자    Description
    ----  ----------  ------  --------------------------------------------------
    1.0   2022-04-06 고석준  1. 최초작성
*/
    BEGIN
        BEGIN
            BEGIN
                INSERT INTO image (
                    id,
                    uri
                ) VALUES (
                    p_image_id,
                    '/images/media/news/'
                );

            EXCEPTION
                WHEN OTHERS THEN
                    raise_application_error(-20001, p_image_id
                                                    || 'IMAGE INSERT시 에러 발생 '
                                                    || sqlerrm);
            END;

            BEGIN
                INSERT INTO image (
                    id,
                    uri
                ) VALUES (
                    p_thumnail_id,
                    '/images/media/news/'
                );

            EXCEPTION
                WHEN OTHERS THEN
                    raise_application_error(-20001, p_thumnail_id
                                                    || 'THUMNAIL INSERT시 에러 발생'
                                                    || sqlerrm);
            END;

        END;

        BEGIN
            INSERT INTO news (
                id,
                title,
                content,
                image_id,
                thumnail_id,
                create_date
            ) VALUES (
                news_seq.NEXTVAL,
                p_title,
                p_content,
                p_image_id,
                p_thumnail_id,
                sysdate
            );

        EXCEPTION
            WHEN OTHERS THEN
                raise_application_error(-20001, p_title
                                                || ' NEWS INSERT시 에러 발생'
                                                || sqlerrm);
        END;

        COMMIT;
    END;

    PROCEDURE p_insertcollection (
        v_season_cd  IN collection.season_cd%TYPE,
        v_brand_name IN collection.name%TYPE,
        v_file_name  IN image.id%TYPE,
        v_thumnail   IN INT
    )
/*
    프로그램 ID : P_INSERTCOLLECTION
    프로그램 명 : News insert
    ----------------------------------------------------------------------------
    실행
    CALL P_INSERTCOLLECTION('season_cd','name','image_id','thumnail_id'); 
    ****************************************************************************
    REVISIONS
    ----  ----------  ------  --------------------------------------------------    
    버전   작업일자      작성자    Description
    ----  ----------  ------  --------------------------------------------------
    1.0   2022-04-06 고석준  1. 최초작성
    1.2   2022-04-08 고석준  2. URI 소문자로 수정.
*/ IS
        v_collection_id    collection.id%TYPE;
        v_collection_fk_id collection_images.id%TYPE;
    BEGIN
        INSERT INTO image (
            id,
            uri
        ) VALUES (
            v_file_name,
            '/images/media/collection/'
        );

        IF v_thumnail = 1 THEN
            BEGIN
                v_collection_id := collection_seq.nextval;
                INSERT INTO collection (
                    id,
                    season_cd,
                    name,
                    thumnail_id
                ) VALUES (
                    v_collection_id,
                    v_season_cd,
                    v_brand_name,
                    v_file_name
                );

            END;

        ELSE
            BEGIN
                SELECT
                    id
                INTO v_collection_fk_id
                FROM
                    collection
                WHERE
                        season_cd = v_season_cd
                    AND name = v_brand_name;

                INSERT INTO collection_images (
                    id,
                    collection_id,
                    image_id
                ) VALUES (
                    collection_seq.NEXTVAL,
                    v_collection_fk_id,
                    v_file_name
                );

            END;
        END IF;

        COMMIT;
    END;

    PROCEDURE p_news_delete (
        p_id news.id%TYPE
    )
/*
    프로그램 ID : P_NEWS_DELETE
    프로그램 명 : 뉴스 내용 삭제 
    ----------------------------------------------------------------------------
    실행
    CALL P_NEWS_DELETE(10); 
    ****************************************************************************
    REVISIONS
    ----  ----------  ------  --------------------------------------------------    
    버전   작업일자      작성자    Description
    ----  ----------  ------  --------------------------------------------------
    1.0   2022-04-12 고석준  1. 최초작성
    1.1   2022-04-12 고석준  2. Fk 조건때문에 news를 지우고 IMAge를 지우는 것으로 순서를 바꿈 
*/ IS
        v_image_id    news.image_id%TYPE;
        v_thumnail_id news.thumnail_id%TYPE;
    BEGIN
        BEGIN
            SELECT
                image_id,
                thumnail_id
            INTO
                v_image_id,
                v_thumnail_id
            FROM
                news
            WHERE
                id = p_id;

        EXCEPTION
            WHEN no_data_found THEN
                raise_application_error(-20001, 'P_NEWS_DELETE 에서 지울 뉴스가 없습니다.' || sqlerrm);
                RETURN;
        END;

        BEGIN
            DELETE news
            WHERE
                id = p_id;

        EXCEPTION
            WHEN OTHERS THEN
                raise_application_error(-20003, 'P_NEWS_DELETE 에서 NEWS 삭제 시 에러발생!! ' || sqlerrm);
                RETURN;
        END;
    --썸네일 메인이미지 지우기 
        BEGIN
            DELETE image
            WHERE
                id = v_image_id; --sampleImage.png
            DELETE image
            WHERE
                id = v_thumnail_id;--sampleThumnail.png
        EXCEPTION
            WHEN OTHERS THEN
                raise_application_error(-20002, 'P_NEWS_DELETE 에서 지울 이미지가 없습니다.' || sqlerrm);
        END;

        COMMIT;
    END;

    PROCEDURE p_news_update (
        p_id          IN news.id%TYPE,
        p_title       IN news.title%TYPE,
        p_image_id    IN news.image_id%TYPE,
        p_thumnail_id IN news.thumnail_id%TYPE,
        p_content     IN news.content%TYPE
    )
/*
    프로그램 ID : P_NEWS_UPDATE
    프로그램 명 : 뉴스 내용 업데이트 
    ----------------------------------------------------------------------------
    실행
    CALL P_NEWS_UPDATE(10,'TITLE', 'IMAGE_ID', 'THUMNAIL_ID','CONTENT'); 
    ****************************************************************************
    REVISIONS
    ----  ----------  ------  --------------------------------------------------    
    버전   작업일자      작성자    Description
    ----  ----------  ------  --------------------------------------------------
    1.0   2022-04-12 고석준  1. 최초작성
*/ IS
        v_image_id    news.image_id%TYPE;
        v_thumnail_id news.thumnail_id%TYPE;
    BEGIN
    --썸네일 이미지 삽입 
        BEGIN
            INSERT INTO image (
                id,
                uri
            ) VALUES (
                p_image_id,
                '/images/media/news/'
            );

            INSERT INTO image (
                id,
                uri
            ) VALUES (
                p_thumnail_id,
                '/images/media/news/'
            );

        EXCEPTION
            WHEN OTHERS THEN
                raise_application_error(-20001, 'P_NEWS_UPDATE 에서 이미지 삽입시 에러 발생!! ' || sqlerrm);
                RETURN;
        END;

        BEGIN
            UPDATE news
            SET
                title = p_title,
                image_id = p_image_id,
                thumnail_id = p_thumnail_id,
                content = p_content,
                update_date = sysdate
            WHERE
                id = p_id;

        EXCEPTION
            WHEN OTHERS THEN
                raise_application_error(-20001, 'P_NEWS_UPDATE 에서 NEWS 업데이트 시 에러 발생!! ' || sqlerrm);
                RETURN;
        END;

        COMMIT;
    END;

-- 혁
    PROCEDURE deletepdf (
        p_id IN ir_pdf.id%TYPE
    ) IS
    BEGIN
        DELETE FROM ir_pdf
        WHERE
            id = p_id;

        COMMIT;
    END deletepdf;

    PROCEDURE insertpdf (
        p_id        IN ir_pdf.id%TYPE,
        p_file_name IN ir_pdf.file_name%TYPE
    ) IS
    BEGIN
        INSERT INTO ir_pdf (
            id,
            file_name
        ) VALUES (
            p_id,
            p_file_name
        );

        COMMIT;
    END insertpdf;

    PROCEDURE updatepdf (
        p_id        IN ir_pdf.id%TYPE,
        p_file_name IN ir_pdf.file_name%TYPE
    ) IS
    BEGIN
        UPDATE ir_pdf
        SET
            file_name = p_file_name
        WHERE
            id = p_id;

        COMMIT;
    END updatepdf;
    --
    FUNCTION fn_selectfilename (
        p_id IN ir_pdf.id%TYPE
    ) RETURN VARCHAR2 IS
        r_1 VARCHAR2(200);
    BEGIN
        SELECT
            file_name
        INTO r_1
        FROM
            ir_pdf
        WHERE
            id = p_id;

        RETURN r_1;
    END fn_selectfilename;

    --
    PROCEDURE insertdisclosure (
        p_disclosure_id   IN disclosure.disclosure_id%TYPE,
        p_disclosure_name IN disclosure.disclosure_name%TYPE,
        p_presenter       IN disclosure.presenter%TYPE,
        p_indate          IN disclosure.indate%TYPE,
        p_url             IN disclosure.url%TYPE
    ) IS
    BEGIN
        INSERT INTO disclosure (
            disclosure_id,
            disclosure_name,
            presenter,
            indate,
            url
        ) VALUES (
            p_disclosure_id,
            p_disclosure_name,
            p_presenter,
            p_indate,
            p_url
        );

        COMMIT;
    END insertdisclosure;
    --
    PROCEDURE deletedisclosure (
        p_disclosure_id IN disclosure.disclosure_id%TYPE
    ) IS
    BEGIN
        DELETE FROM disclosure
        WHERE
            disclosure_id = p_disclosure_id;

        COMMIT;
    END deletedisclosure;
    -- 전체 공시정보 수
    FUNCTION fn_selecttotdisclosure RETURN NUMBER IS
        r_1 NUMBER;
    BEGIN
        SELECT
            COUNT(*)
        INTO r_1
        FROM
            disclosure;

        RETURN r_1;
    END fn_selecttotdisclosure;    

    -- 파이프라인 함수
    FUNCTION fn_selectsamedisclosure (
        p_name IN disclosure.disclosure_name%TYPE
    ) RETURN disclosure_table
        PIPELINED
    IS
    BEGIN
        FOR cur IN (
            SELECT
                disclosure_id,
                disclosure_name,
                presenter,
                indate,
                url
            FROM
                disclosure
            WHERE
                disclosure_name LIKE '%'
                                     || p_name
                                     || '%'
            ORDER BY
                disclosure_id DESC
        ) LOOP
            PIPE ROW ( disclosure_type(cur.disclosure_id, cur.disclosure_name, cur.presenter, cur.indate, cur.url) );
        END LOOP;

        RETURN;
    END fn_selectsamedisclosure;

-- 지은
    -- 관리자 정보 추가
    PROCEDURE sp_member_insert (
        p_name IN member.name%TYPE,
        p_tel  IN member.tel%TYPE,
        p_id   IN member.id%TYPE,
        p_pwd  IN member.pwd%TYPE
    ) IS
    BEGIN
        INSERT INTO member (
            name,
            tel,
            id,
            pwd
        ) VALUES (
            p_name,
            p_tel,
            p_id,
            sys.FUNC_ENCRYPT(p_pwd)
        );

        COMMIT;
    END sp_member_insert;

    -- 로그인 시 아이디와 비밀번호 일치 확인
    FUNCTION sf_member_login (
        p_id  IN member.id%TYPE,
        p_pwd IN member.pwd%TYPE
    ) RETURN VARCHAR IS
        v_login VARCHAR(10);
    BEGIN
        SELECT
            decode(COUNT(*), 1, 'TRUE', 'FALSE')
        INTO v_login
        FROM
            member
        WHERE
                id = p_id
            AND SYS.FUNC_DECRYPT(pwd) = p_pwd;

        RETURN v_login;
    END sf_member_login;

    -- 특정 관리자의 정보 조회 
    FUNCTION sf_member_info (
        p_id IN member.id%TYPE
    ) RETURN pkg_handsome.member_table
        PIPELINED
    IS
        mem_rec pkg_handsome.member_type;
    BEGIN
        FOR func_cur IN (
            SELECT
                name,
                tel,
                id
            FROM
                member
            WHERE
                id = p_id
        ) LOOP
            mem_rec.name := func_cur.name;
            mem_rec.tel := func_cur.tel;
            mem_rec.id := func_cur.id;
            PIPE ROW ( mem_rec );
        END LOOP;
    END sf_member_info;

END pkg_handsome;
/
commit;
