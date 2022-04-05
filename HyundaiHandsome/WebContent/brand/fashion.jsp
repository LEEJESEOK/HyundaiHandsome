<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html lang="ko">

    <head>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-52LSKCSTND"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'G-52LSKCSTND');
        </script>
        <title>한섬 ｜ HANDSOME Corp.</title>
        <meta name="description" content="삶의 모든 영역에서 아름다운 경험을 제공하는 스타일 크리에이터, 한섬" />
        <meta name="google-site-verification" content="QtTwloyz4KGmLhU4TqXI8B8alxsywZwO5-JgZisza5k" />
        <meta name="naver-site-verification" content="4027c0c0f6f3cecc2c3c4f38c6b50faf599d29e3" />
        <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <link rel="icon" href="../images/common/favicon.ico" type="image/x-icon">
        <link rel="shortcut icon" href="../images/common/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="../images/common/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="../images/common/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="../images/common/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="stylesheet" href="../css/font.css">
        <link rel="stylesheet" href="../css/swiper.min.css">
        <link rel="stylesheet" href="../css/ko_common.css">
        <link rel="stylesheet" href="../css/ko_style.css">
        <script src="../js/jquery-3.5.1.min.js"></script>
        <script src="../js/swiper.min.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/cmmn.js"></script>
    </head>

    <body>
        <div class="wrap">
            <jsp:include page="../gnb.jsp" />
            <script type="text/javascript">
                $(document).ready(function() {
                    setLangHref();
                    setHtop();
                });

                function setLangHref() {
                    /* var href = window.location.href;
                    href = href.replace(/(\/ko\/|\/en\/|\/zh\/)/g, '/lang/');
                    var hrefKo = href.replace('/lang/', '/ko/');
                    var hrefEn = href.replace('/lang/', '/en/');
                    var hrefZh = href.replace('/lang/', '/zh/');
                    $('#langKo').attr('href', hrefKo);
                    $('#langEn').attr('href', hrefEn);
                    $('#langZh').attr('href', hrefZh); */
                    $('#langKo').attr('href', '/ko/main.do');
                    $('#langEn').attr('href', '/en/main.do');
                    $('#langZh').attr('href', '/zh/main.do');
                }

                function setHtop() {
                    var pathname = window.location.pathname;
                    var menuHref = pathname.replace(
                        /(02.do|03.do|04.do|05.do|06.do)/g, '01.do');
                    menuHref = menuHref.replace(/(Det.do)/g, '.do');
                    if ('/ko/main.do' == menuHref || '/' == menuHref ||
                        '' == menuHref) {
                        $('#header').removeClass('sub');
                    } else {
                        $('#header').addClass('sub');
                        $('.container').css('padding-top', '87px');
                    }
                }

                // header scroll
                $(function() {
                    $(window).scroll(function() {
                        var scroll = $(this).scrollTop();
                        var headerH = $(".header").height();
                        if ($(window).scrollTop() > headerH) {
                            $(".header").addClass("minify");
                            return false;
                        } else {
                            $(".header").removeClass("minify");
                            return false;
                        }
                    });
                });

                //Toggle : top-utill-area
                $(".utill-lang").click(function() {
                    $(".selectList").slideToggle(340, function() {});
                    $(this).toggleClass('on');
                });

                //Tab : click on-off
                $(function() {
                    $('.tabs li').click(function() {
                        $('.tabs li.on').removeClass('on');
                        $(this).addClass('on');
                    });
                });
            </script>

            <!--  container -->
            <div id="contents" class="container">
                <div class="page-body-wrapper">
                    <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
                    <div class="hs-row tit_swip">
                        <!-- Swiper -->
                        <div class="swiper-container swipTop">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo1.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-time.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo2.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-system.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo3.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-sjsj.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo4.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-lanvin-collection.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo5.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-the-cashmere.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo6.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-time-homme.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <p class="swiper--logo">
                                        <img src="../images/thumbs/bdlogo/brandLogo7.png?dt=20211122_1" alt="">
                                    </p>
                                    <img src="../images/thumbs/brand-system-homme.jpg?dt=20211122_1" class="swiper--img" alt="">
                                </div>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next swipnav" style="background-image: url('../images/thumbs/bdlogo/brandLogo2.png?dt=20211122_1');"></div>
                            <div class="swiper-button-prev swipnav" style="background-image: url('../images/thumbs/bdlogo/brandLogo4.png?dt=20211122_1');"></div>
                        </div>
                    </div>
                    <div class="hs-row box">
                        <ol class="breadcrumb col-r">
                            <li class="breadcrumb-item"><a href="/ko/main.do">HOME</a></li>
                            <li class="breadcrumb-item"><a href="/ko/brand/fashion.do">BRAND</a></li>
                            <li class="breadcrumb-item"><a href="/ko/brand/fashion.do">패션</a></li>
                        </ol>
                    </div>

                    <h3 class="hs-row tit_page tit-bg-none tit_bar">
                        한섬은 국내 최고의 브랜드와 함께 럭셔리부터 캐주얼까지 <br>다양한 수입 브랜드 및 <em>한섬 만의
							차별화된 편집숍을 전개하고 있습니다.</em>
                    </h3>

                    <div class="section box-overspill">
                        <!-- 섹션 1 -->
                        <div id="brandList" class="box">
                            <!-- TODO -->
                            <div class="hs-row">
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="0"> <img src="../images/thumbs/brand-list-1_1.jpg?dt=20211122_1" alt="">
                                            <span>TIME</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="1"> <img src="../images/thumbs/brand-list-1_2.jpg?dt=20211122_1" alt="">
                                            <span>MINE</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="2"> <img src="../images/thumbs/brand-list-1_3.jpg?dt=20211122_1" alt="">
                                            <span>LANVIN COLLECTION</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="3"> <img src="../images/thumbs/brand-list-1_4.jpg?dt=20211122_1" alt="">
                                            <span>OBZÉÉ</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="4"> <img src="../images/thumbs/brand-list-1_5.jpg?dt=20211122_1" alt="">
                                            <span>the CASHMERE</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="5"> <img src="../images/thumbs/brand-list-1_6.jpg?dt=20211122_1" alt="">
                                            <span>LÄTT</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="6"> <img src="../images/thumbs/brand-list-1_7.jpg?dt=20211122_1" alt="">
                                            <span>SYSTEM</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="7"> <img src="../images/thumbs/brand-list-1_8.jpg?dt=20211122_1" alt="">
                                            <span>SJSJ</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class=" cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="8"> <img src="../images/thumbs/brand-list-1_9.jpg?dt=20211122_1" alt="">
                                            <span>O'2nd</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="9"> <img src="../images/thumbs/brand-list-1_10.jpg?dt=20211122_1" alt=""> <span>SJYP</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="10"> <img src="../images/thumbs/brand-list-1_11.jpg?dt=20211122_1" alt=""> <span>DÉCKE</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="11"> <img src="../images/thumbs/brand-list-1_12.jpg?dt=20211122_1" alt=""> <span>rouge &amp; lounge</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="12"> <img src="../images/thumbs/brand-list-1_13.jpg?dt=20211122_1" alt=""> <span>TIME HOMME</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="13"> <img src="../images/thumbs/brand-list-1_14.jpg?dt=20211122_1" alt=""> <span>SYSTEM HOMME</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="14"> <img src="../images/thumbs/brand-list-1_15.jpg?dt=20211122_1" alt=""> <span>TOMMY HILFIGER</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="15"> <img src="../images/thumbs/brand-list-1_16.jpg?dt=20211122_1" alt=""> <span>TOMMY JEANS</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="16"> <img src="../images/thumbs/brand-list-1_17.jpg?dt=20211122_1" alt=""> <span>CLUB MONACO</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="17"> <img src="../images/thumbs/brand-list-1_18.jpg?dt=20211122_1" alt=""> <span>DKNY</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="18"> <img src="../images/thumbs/brand-list-1_19.jpg?dt=20211122_1" alt=""> <span>CK CALVIN KLEIN</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="19"> <img src="../images/thumbs/brand-list-1_20.jpg?dt=20211122_1" alt=""> <span>BALLY</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="20"> <img src="../images/thumbs/brand-list-1_21.jpg?dt=20211122_1" alt=""> <span>LANVIN</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="21"> <img src="../images/thumbs/brand-list-1_22.jpg?dt=20211122_1" alt=""> <span>ROCHAS</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="22"> <img src="../images/thumbs/brand-list-1_23.jpg?dt=20211122_1" alt=""> <span>3.1 PHILLIP LIM</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="24"> <img src="../images/thumbs/brand-list-1_24.jpg?dt=20211122_1" alt=""> <span>MUE</span></a>
                                    </li>
                                </ul>
                                <ul class="cubes">
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="25"> <img src="../images/thumbs/brand-list-1_25.jpg?dt=20211122_1" alt=""> <span>TOM GREYHOUND</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="26"> <img src="../images/thumbs/brand-list-1_26.jpg?dt=20211122_1" alt=""> <span>FOURM STUDIO</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="27"> <img src="../images/thumbs/brand-list-1_27.jpg?dt=20211122_1" alt=""> <span>FOURM THE STORE</span></a>
                                    </li>
                                    <li class="cubes-item">
                                        <a href="#myModal" data-toggle="modal" data-target="#myModal" data="28"> <img src="../images/thumbs/brand-list-1_29.jpg?dt=20211122_1" alt=""> <span>FOURM MEN’S LOUNGE</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>


                    <!-- // MODAL-->
                    <div class="modal fade " id="myModal" role="dialog">
                        <!-- 사용자 지정 : id명 -->
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">×</button>
                                </div>
                                <div class="modal-body" id="brandpop">
                                    <!-- Swiper -->
                                    <div class="swiper-container swipPop">
                                        <!-- TODO -->
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide swip-bg" id="brandTime">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-1.jpg?dt=20211122_1" alt="TIME 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">TIME</p>
                                                            <p class="brandSS">POETIC SCENES</p>
                                                            <span class="brandDesc"> 1993년 런칭한 브랜드 TIME은 섬세하고
																주의 깊은 시선, 일상적이면서 매혹적인 우아함으로 타임 만의 궤도를 그리며 시대에 맞는 새로운 모습을
																제안합니다. 당당하고 품격있는 라이프스타일을 지닌 현대 여성들을 위한 세련되고 정제된 실루엣과
																고급스러운 소재, 최상의 제품력으로 타임리스한 브랜드 가치를 완성합니다. 런칭 이후 브랜드 인지도와
																제품 신뢰도에 있어 독보적인 영역을 만들어 국내 여성복 마켓을 선도하는 브랜드입니다. </span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('01');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-1.jpg?dt=20211122_1" alt="TIME 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandMine">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-2.jpg?dt=20211122_1" alt="MINE 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">MINE</p>
                                                            <p class="brandSS">ARTISTIC FEMININITY</p>
                                                            <span class="brandDesc"> MINE은 Artistic한 감성을 바탕으로
																쿠틔르적 섬세함과 품격을 미니멀하게<br> 표현하여 여성스러움을 보다 세련되고 아트적인
																	느낌으로 연출합니다.<br> 섬세한 여성의 마인드를 고급스럽고 엘레강스한 감성으로 표현하며
																		고유의 컨셉에<br> 트랜드를 가미,다양한 변화를 제안합니다. 1988년 런칭 이후
																			현재까지 명성을<br> 이어오는 국내 최초의 캐릭터 브랜드로써 뚜렸한 컨셉과 정체성을
																				제안하며<br> 지속적으로 사랑 받고 있는 브랜드입니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('02');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-2.jpg?dt=20211122_1" alt="MINE 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandLanvinCollection">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-3.jpg?dt=20211122_1" alt="LanvinCollection 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">LANVIN COLLECTION</p>
                                                            <p class="brandSS">NEW ELEGANCE</p>
                                                            <span class="brandDesc"> 2009년 런칭한 랑방 컬렉션은 한섬에서
																전개하고 있는 LANVIN의 라이선스<br> 브랜드로 하우스 특유의 유니크하고 페미닌한
																	아이덴티티를 기반으로<br> 부드럽고 우아한 여성스러움을 표방합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('19');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-3.jpg?dt=20211122_1" alt="LanvinCollection 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandObzee">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-4.jpg?dt=20211122_1" alt="Obzee 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">OBZÉÉ</p>
                                                            <p class="brandSS">ACCESSIBLE FEMININITY</p>
                                                            <span class="brandDesc"> 1993년 런칭한 국내 럭셔리 캐릭터 브랜드로
																자리매김한 OBZÉÉ는 품격있는<br> 우아함과 자신만의 확고한 스타일을 추구하는 여성들을
																	위해 세련되고 페미닌한<br> 트렌드를 제시합니다. 쿠틔르적인 섬세함과 동시에 시크함을
																		모던하게<br> 재해석하여 현대 여성의 스타일을 표현합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('43');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-4.jpg?dt=20211122_1" alt="Obzee 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandTheCashmere">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-5.jpg?dt=20211122_1" alt="brandTheCashmere 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">the CASHMERE</p>
                                                            <p class="brandSS">ESSENTIAL &amp; LUXURY SIMPLICITY</p>
                                                            <span class="brandDesc"> the CASHMERE는 삶의 본질적인 가치에
																집중하기를 원하는 소비자를 위해<br> 최상의 소재와 절제된 디자인을 추구하는 캐시미어 전문
																	브랜드입니다.<br> 하이엔드 브랜드에서 주로 사용하는 이탈리아 및 스코틀랜드 캐시미어
																		원사를<br> 70% 이상 사용하여 고급스러움을 극대화시키고 간결한 실루엣, 실용적인<br>
																				디테일, 여유로운 핏감을 통해 편안하면서도 품격 있는 퀄리티를 추구합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('08');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-5.jpg?dt=20211122_1" alt="brandTheCashmere 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandLatt">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-6.jpg?dt=20211122_1" alt="Latt 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">LÄTT</p>
                                                            <p class="brandSS">DELIGHTFUL LUX CONTEMPORARY</p>
                                                            <span class="brandDesc"> 부드럽고 밝은 애티튜드, 위트와 여유를 즐기는
																Life Style을 추구하는 여성을 위한 브랜드 LÄTT(래트)는 스웨덴어로 ‘가볍다’는 뜻으로,
																세련되고 차별화된 컬러 팔레트와 동시대적인 감각을 공유하여 Delightful Style 을
																제안합니다. 고급스러운 퀄리티, 편안한 실루엣과 유니크함을 통해 여유로운 일상에 세련된 룩을
																선보입니다. </span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('31');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-6.jpg?dt=20211122_1" alt="Latt 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandSystem">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-7.jpg?dt=20211122_1" alt="SYSTEM 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">SYSTEM</p>
                                                            <p class="brandSS">MIX MATCH LAYER</p>
                                                            <span class="brandDesc"> SYSTEM은 브랜드 런칭 당시의 컨셉인
																‘Mix Match Layer’를 현재까지 꾸준히<br> 이어오면서 시대를 앞서가는 트렌드를
																	누구보다 빠르게 접목하여 현재까지도<br> 국내 최고의 영 캐릭터 캐주얼로 인정받고
																		있습니다. 시크하고 정교한<br> 테일러링과 섬세하지만 절제된 디테일로 자유롭고 트렌드에
																			민감한 젊은 도시<br> 여성들의 스타일을 제안하고 있습니다. 고유의 우수한 디자인과
																				제품력 등 최고<br> 품질을 기대하는 고객의 신뢰를 최우선으로 베스트 브랜드의
																					위상을 지켜가고<br> 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('03');" style="display: inline-block;">브랜드관 바로가기</button>
                                                                <a href="http://www.system.co.kr/ko/sy/main.do" target="_blank" class="btn btn-block btnPop system-btn">SYSTEM
																	STUDIOS</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-7.jpg?dt=20211122_1" alt="SYSTEM 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandSjsj">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-8.jpg?dt=20211122_1" alt="SJSJ 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">SJSJ</p>
                                                            <p class="brandSS">YOUNG ARTISTIC CASUAL</p>
                                                            <span class="brandDesc"> 1997년 런칭한 SJSJ는 젊은 예술가들의
																창의적인 작품 활동에서 영감을 받아<br> 아티스틱한 여성 캐주얼 브랜드로서의 아이덴티티를
																	구축해 왔습니다.<br> 심플하고 자연스러운 실루엣에 에너제틱한 컬러감, 아트적인 그래픽
																		요소들을<br> 더해 창의적이면서도 감성적인 스타일을 제안하여 상상력과 섬세함을 갖춘<br>
																				개성있는 젊은 여성들의 사랑을 받고 있는 브랜드입니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('04');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-8.jpg?dt=20211122_1" alt="SJSJ 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandO2nd">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-9.jpg?dt=20211122_1" alt="O'2nd 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">O'2nd</p>
                                                            <p class="brandSS">COLOR, TASTE, HUMOR</p>
                                                            <span class="brandDesc"> O’2nd은 ‘Pop Boutique’ 컨셉을
																통해 예술과 문화에서 영감을 받아 새로운<br> 캐주얼 문화를 창조하는 브랜드입니다.<br>
																		팝한 감성과 아티스틱한 터치로 유머러스한 감성을 표현해냄으로써 자신만의<br> 개성을
																			지닌 패션 커뮤니케이터에게 어필되고 있습니다. 지속적인 아티스트와의<br> 협업으로
																				신선한 아이디어와 트렌드를 제안하여 브랜드만의 색깔을 드러내고<br> 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('45');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-9.jpg?dt=20211122_1" alt="O'2nd 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandSjyp">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-10.jpg?dt=20211122_1" alt="SJYP 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">SJYP</p>
                                                            <p class="brandSS">MODERN, CLEAN, FRESH</p>
                                                            <span class="brandDesc"> 트렌디한 럭셔리 캐주얼을 지향하는 SJYP는
																프리미엄 데님에 실험적인 감성을<br> 담아 개성있는 라이프스타일을 제안하며, 브랜드 특유의
																	팝한 컬러와 유니크한<br> 패턴을 결합하여 젊고 자유분방한 감성을 전달하며, 2014년
																		런칭 이후 현재까지<br> 글로벌 인지도를 높여왔습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA21A02');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-10.jpg?dt=20211122_1" alt="SJYP 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandDecke">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-11.jpg?dt=20211122_1" alt="DECKE 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">DÉCKE</p>
                                                            <p class="brandSS">ALTERNATIVE LUXURY</p>
                                                            <span class="brandDesc"> 글로벌 핸드백 &amp; 주얼리 브랜드
																DÉCKE는 소재에 관한 깊이 있는 시각과<br> 접근을 통해 가죽 본연의 아름다움을 살린
																	세련된 스타일과 개성 있는<br> 오리지널리티를 추구합니다. 고급 소재와 DÉCKE만의
																		감성으로 현대 여성들의<br> 개성있는 컨템포러리 룩과의 자유로운 믹스매치가 가능한
																			스타일을 제안합니다.<br> 음악, 그래픽, 미디어 아트 문화 전반을 통해 표현되는
																				해체와 융합의<br> 콜라보레이션을 통해 DÉCKE의 브랜드 스토리와 스타일을
																					전달합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA21A04');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-11.jpg?dt=20211122_1" alt="DECKE 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandRougeLounge">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-12.jpg?dt=20211122_1" alt="rouge &amp; lounge 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">rouge &amp; lounge</p>
                                                            <p class="brandSS">UNEXPECTED MODERN CLASSIC AS ADVANCED CONTEMPORARY</p>
                                                            <span class="brandDesc"> 어드밴스드 컨템포러리 액세서리 브랜드
																rouge &amp; lounge는 ‘일을 사랑하는<br> 여성’을 상징하는 rouge와
																	‘자신만의 시간을 통해 재충전’하는 lounge의 상반된<br> 의미를 담고 있습니다.
																		장인정신을 기반으로 유니크하고 아이코닉한 소재를<br> 활용하여 현대적인 감각과 기술을
																			접목시킨 컨템포러리한 스타일을 완성합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA21A01');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-12.jpg?dt=20211122_1" alt="rouge &amp; lounge 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandTimeHomme">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-13.jpg?dt=20211122_1" alt="Time HOMME 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">TIME HOMME</p>
                                                            <p class="brandSS">DELICATE LUXURY &amp; MODERN CLASSIC
                                                            </p>
                                                            <span class="brandDesc"> TIME HOMME는 섬세한 실루엣의 클래식
																포멀 웨어와 모던한 캐주얼 웨어를<br> 결합한 Soft Luxury를 표방합니다. 감각적인
																	디자인과 고급소재의 캐주얼을<br> 믹스하여 국내 남성복 시장에서 브랜드가 아닌 TIME
																		HOMME만의 특별한<br> 스타일을 만들어 가고 있습니다. 2000년 런칭 당시 영역이
																			모호했던 남성 캐릭터<br> 캐주얼 라인에 내셔널 브랜드로 과감하게 도전장을 던진 후,
																				세련된 디자인과 수입<br> 명품을 능가하는 제품력으로 고객 충성도를 쌓으며 리딩
																					브랜드의 자리를 지키고<br> 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('06');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-13.jpg?dt=20211122_1" alt="Time HOMME 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandSystemHomme">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-14.jpg?dt=20211122_1" alt="System HOMME 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">SYSTEM HOMME</p>
                                                            <p class="brandSS">SLIM &amp; STYLSH URBAN CASUAL</p>
                                                            <span class="brandDesc"> SYSTEM HOMME는 자신만의 개성과
																스타일을 추구하는 이들을 위한 브랜드입니다. 모던한 디자인과 브랜드만의 시크한 실루엣을 제안하며
																고급스러운 소재, 트렌디한 디테일로 차별화된 어반 캐주얼을 선보이고 있습니다. 2008년 런칭 이후,
																SYSTEM HOMME가 전개하는 시크한 테일러링과 스타일리시한 캐주얼 아이템은 해외 패션
																인플루언서들과 젊은 남성들에게 큰 인기를 끌고 있습니다. </span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('07');" style="display: inline-block;">브랜드관 바로가기</button>
                                                                <a href="http://www.system.co.kr/ko/sy/main.do" target="_blank" class="btn btn-block btnPop system-btn">SYSTEM
																	STUDIOS</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-14.jpg?dt=20211122_1" alt="System HOMME 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandTommyHilfiger">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-15.jpg?dt=20211122_1" alt="TOMMY HILFIGER 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">TOMMY HILFIGER</p>
                                                            <p class="brandSS">CLASSIC AMERICAN COOL WITH A TWIST</p>
                                                            <span class="brandDesc"> 타미 힐피거는 1985년 뉴욕 베이스의
																디자이너 브랜드로 런칭한 이래,<br> 전 세계적으로 완벽한 프리미엄 라이프스타일을 대표하는
																	브랜드로 자리매김하고<br> 있습니다. 타미 힐피거는 대표적인 아메리칸 캐주얼 브랜드로,
																		클래식하고<br> 세련된 미국의 감성을 담아 남성, 여성, 데님, 아동 라인까지
																			발전시켜왔으며,<br> 미국 팝 문화 정신에서 영감을 받은 다양한 스타일의 모던하고
																				신선한 패션을<br> 제안합니다. 국내에는 2003년 첫 선을 보인 이후 특유의
																					재치를 가미한 아메리칸<br> 클래식 프레피룩을 통해 국내 고객들의 라이프스타일을
																						이끌어 가고 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA08');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-15.jpg?dt=20211122_1" alt="TOMMY HILFIGER 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandTommyJeans">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-16.jpg?dt=20211122_1" alt="TOMMY JEANS 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">TOMMY JEANS</p>
                                                            <p class="brandSS">AMERICAN DENIM CLASSICS WITH A MODERN, CASUAL EDGE</p>
                                                            <span class="brandDesc"> 타미 진스는 모던하고 엣지 있는 캐주얼 무드의
																아메리칸 데님 클래식에서 영감을<br> 받은 브랜드입니다. 젊은 에너지와 타미 진스의 전통에
																	가미하며, 프리미엄 데님에<br> 주력한 남성과 패션 컬렉션을 선보이며, 18세부터
																		30세까지 데님을 즐겨입는<br> 소비자를 타겟층으로 하고 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA08A03');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-16.jpg?dt=20211122_1" alt="TOMMY JEANS 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandClubMonaco">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-17.jpg?dt=20211122_1" alt="CLUB MONACO 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">CLUB MONACO</p>
                                                            <p class="brandSS">AFFORDABLE LUXURY WITH A MODERN SENSIBILITY
                                                            </p>
                                                            <span class="brandDesc"> 1985년에 런칭한 뉴욕 감성의 컨템포러리
																브랜드로 도회적인 감각에 실용성을<br> 더하여 시티 라이프를 즐기는 여성과 남성에게
																	어필하고 있습니다.<br> 2009년부터 국내 라이선스를 진행했으며, 브랜드 고유의 시크한
																		감성에 트렌드를<br> 접목한 디자인을 선보이고 있습니다 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('44');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-17.jpg?dt=20211122_1" alt="CLUB MONACO 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandDkny">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-18.jpg?dt=20211122_1" alt="DKNY 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">DKNY</p>
                                                            <p class="brandSS">ADVANCED CONTEMPORARY</p>
                                                            <span class="brandDesc"> DKNY는 뉴욕을 대표하는 럭셔리 브랜드로,
																뉴욕의 감성과 역동적인 에너지를<br> 모던하게 표현하고 있습니다. 고품격의 도회적 세련미를
																	추구하며, 스타일리쉬한<br> 현대 여성과 남성의 라이프스타일에 맞는 부드럽고 감각적인
																		디자인을 제안합니다.<br> 미국을 포함한 세계 25개국에 240개의 스토어에서 판매되고
																			있으며, 국내에는<br> 2006년에 첫 선을 보였습니다 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA09');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-18.jpg?dt=20211122_1" alt="DKNY 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandCk">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-19.jpg?dt=20211122_1" alt="CALKIN KLEIN 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">CK CALVIN KLEIN</p>
                                                            <p class="brandSS">SEXY, URBAN, TRENDY, YOUTHFUL</p>
                                                            <span class="brandDesc"> 섹시, 도시적, 트렌디, 젊음을 표방하는 뉴
																럭셔리 디자이너 브랜드<br> CK CALVIN KLEIN은 쿨함과 엣지를 겸비한 컨템포러리
																	라인으로, 독특한 엣지와<br> 정교한 관능미를 극대화한 아이코닉, 에센셜, 패셔너블한
																		아이템을 선보이고<br> 있습니다. 2012년 국내에 첫 선을 보였으며 홍콩을 비롯한
																			아시아, 유럽 시장에서<br> 60여 개의 스토어에서 판매되고 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav03('BDMA07');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-19.jpg?dt=20211122_1" alt="CALKIN KLEIN 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandBally">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-20.jpg?dt=20211122_1" alt="BALLY 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">BALLY</p>
                                                            <p class="brandSS">INNOVATION, FUCTIONALITY, ELEGANCE</p>
                                                            <span class="brandDesc"> 1851년 탄생한 스위스 명품 브랜드
																BALLY는 최고급 가죽 소재와 장인정신을 통해 기품 있는 클래식 스타일을 추구합니다. 가죽
																액세서리와 함께 남성복과 패션복도 함께 선보이며 토탈 패션 브랜드로 진화 중입니다. 한섬과의 계약
																체결로 국내에서 성공적으로 성장하고 있습니다. </span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('21');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-20.jpg?dt=20211122_1" alt="BALLY 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandLanvinParis">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-21.jpg?dt=20211122_1" alt="LANVIN 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">LANVIN</p>
                                                            <p class="brandSS">ELEGANT EVOLUTION OF FRENCH CLASSIC
                                                            </p>
                                                            <span class="brandDesc"> 1889년, 디자이너 잔느 랑방은 그녀의 나이
																22세에 단독 꾸띄르 하우스를 오픈하여<br> 파리의 상류사회 패션시장을 선도합니다.
																	창조적이면서도 우아하고 과감한 작품<br> 세계를 통해 패션계의 여왕으로 자리잡은 잔느는
																		현대 여성의 대명사로<br> 인식되었습니다. 이후 코코샤넬과 함께 패션계의 양대산맥이라고
																			불리우며 전통과<br> 혁신, 퀄리티와 프랑스적인 우아함, 시크함과 모던함을 동시에
																				표방해온 랑방은<br> 섬세한 디테일과 최상의 품질로 새로운 시각의 매혹적인 럭셔리
																					스타일을 제시하며<br> 부동의 명품 브랜드로 그 명성을 이어나가고 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('20');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-21.jpg?dt=20211122_1" alt="LANVIN 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandRochasParis">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-22.jpg?dt=20211122_1" alt="ROCHAS 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">ROCHAS</p>
                                                            <p class="brandSS">PARISIAN CHIC & SOPHISTICATED SENSUALITY
                                                            </p>
                                                            <span class="brandDesc"> 쿠튀리에 마셀 로샤스가 1925년 런칭한
																여성복 브랜드로 우아한 이브닝 라인과<br> 캐주얼한 데이웨어로 파리의 젊은 여성들에게 사랑
																	받았습니다.<br> 현재는 크리에이티브 디렉터 알레싼드로 델라쿠아가 현대 여성을 위해<br>
																			글래머러스한 동시에 실용적인 데이웨어 까지 아우르는 다채로운 룩을 선보입니다.<br>
																				여성스러운 실루엣과 역동적인 컬러, 프린트, 디테일의 조화로 로맨틱하면서<br>
																					세련된 여성상을 표현합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('37');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-22.jpg?dt=20211122_1" alt="ROCHAS 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandPhillipLim">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-23.jpg?dt=20211122_1" alt="3.1 PHILLIP LIM 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">3.1 PHILLIP LIM</p>
                                                            <p class="brandSS">NEW MODERN LUXURY</p>
                                                            <span class="brandDesc"> 2005년 미국 디자이너 필립림이 런칭한 뉴
																럭셔리 브랜드. 미니멀리즘과 클래식,<br> 모던의 경계를 넘나드는 절제된 스타일의 디자인이
																	특징입니다.<br> 필립림은 첫 번째 컬렉션을 선보인 후, 미국패션협회의 '떠오르는 스타
																		여성복<br> 디자이너' 상과 CFDA 신인상을 받으며 미국을 대표하는 디자이너로
																			자리매김하게<br> 되었습니다. 간결함, 쿨함, 시크함 속에 깃든 독보적인 세련미로
																				젊은 여성들에게<br> 사랑받고 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('41');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-23.jpg?dt=20211122_1" alt="3.1 PHILLIP LIM 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            s
                                            <div class="swiper-slide swip-bg" id="brandMue">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-24.jpg?dt=20211125_1" alt="MUE 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">MUE</p>
                                                            <p class="brandSS">ATTRACTIVE HIGH-END SELECTION</p>
                                                            <span class="brandDesc"> MUE는 2004년에 오픈한 한섬의 럭셔리
																편집숍으로, 브랜드 고유의 감성과<br> 문화적인 아이덴티티를 공유하는 ‘갤러리형
																	편집숍’이라는 새로운 개념을<br> 표방합니다. 럭셔리 브랜드와 독특한 감성의 디자이너
																		브랜드를 적절하게 구성해<br> 다양한 예술과 문화적 영감이 조화된 공간에서 자신만의
																			특별한 감성과 스타일을<br> 만들어 갈 수 있는 공간입니다. 브랜드 가치와
																				아이덴티티를 부각시킬 수 있는<br> 아이템만을 선별하여 진정한 럭셔리 패션피플들을
																					위한 특별한 경험을 제공하고<br> 있습니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('16');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-24.jpg?dt=20211125_1" alt="MUE 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandTomGreyhound">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-25.jpg?dt=20211122_1" alt="TOM GREYHOUND 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">TOM GREYHOUND</p>
                                                            <p class="brandSS">IMAGINATIVE STYLE INFLUENCER</p>
                                                            <span class="brandDesc"> TOM GREYHOUND는 2008년에 오픈한
																캐주얼 수입 편집숍으로, ‘이상한 나라의<br> 앨리스’를 컨셉으로 재미있는 상상력이 더해진
																	인테리어와 함께 젊은 패션인들에게<br> Fun &amp; Pop 스타일을 제안합니다.
																		전세계 유명 브랜드와 신진 디자이너 브랜드,<br> 한섬에서 자체적으로 개발한 PB
																			제품까지 젊고 위트 있는 스타일을 만날 수 있는<br> 가장 트렌디한 편집숍입니다.<br>
																					2014년 파리 마레 지구에 오픈한 TOM GREYHOUND Paris는 유명 디자이너 뿐만
																					아니라, 신진 디자이너, 한섬 자체 브랜드를 세계에 알리는 플랫폼입니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('15');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-25.jpg?dt=20211125_1" alt="TOM GREYHOUND 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandForumStudio">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-26.jpg?dt=20211125_1" alt="FOURM STUDIO 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">FOURM STUDIO</p>
                                                            <p class="brandSS">CONTEMPORARY FEMININE CHIC</p>
                                                            <span class="brandDesc"> 2016년 오픈한 FOURM STUDIO는
																모던하게 재해석한 클래식 스타일을 기반으로<br> 세련된 스타일을 제안하는 여성복 편집숍
																	입니다.<br> FOURM ¼은 현대백화점 전용 편집숍으로, 현대백화점과 한섬이 추구하는
																		특별한<br> 가치와 새로운 경험을 제공합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('30');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-26.jpg?dt=20211125_1" alt="FOURM STUDIO 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandFourmTheStore">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-27.jpg?dt=20211125_1" alt="FOURM THE STORE 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">FOURM THE STORE</p>
                                                            <p class="brandSS">UNIQUE TRENDY CASUAL</p>
                                                            <span class="brandDesc"> 2017년 런칭한 FOURM THE
																STORE는 모던하고 시크한 캐주얼을 중심으로<br> 다양한 스타일을 믹스매치해 개성있는
																	룩을 제안하는 편집숍입니다.<br> FOURM ¼은 현대백화점 전용 편집숍으로,
																		현대백화점과 한섬이 추구하는 특별한<br> 가치와 새로운 경험을 제공합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav01('35');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-27.jpg?dt=20211125_1" alt="FOURM THE STORE 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide swip-bg" id="brandForumMensLounge">
                                                <div class="hs-row box clear">
                                                    <div class="col-md">
                                                        <img src="../images/thumbs/brand-pophead-29.jpg?dt=20211122_1" alt="FOURM MEN'S LOUNGE 브랜드 소개에 대한 시작 이미지">
                                                        <div class="brand-info">
                                                            <p class="brandName">FOURM MEN’S LOUNGE</p>
                                                            <p class="brandSS">MODERN CLASSIC HERITAGE</p>
                                                            <span class="brandDesc"> 2016년 오픈한 FOURM MEN’S
																LOUNGE는 클래식 헤리티지와 모던한 감각을<br> 믹스하는 세련된 남성들을 위한
																	편집숍입니다.<br> FOURM ¼은 현대백화점 전용 편집숍으로, 현대백화점과 한섬이
																		추구하는 특별한<br> 가치와 새로운 경험을 제공합니다. 
															</span>
                                                            <div>
                                                                <button class="btn btn-block btnPop" onclick="goBrandPav02('32');">브랜드관 바로가기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-r">
                                                        <img src="../images/thumbs/brand-pop-29.jpg?dt=20211122_1" alt="FOURM MEN'S LOUNGE 브랜드 소개에 대한 대표 이미지">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Add Arrows -->
                                        <div class="swiper-button-next"></div>
                                        <div class="swiper-button-prev"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  // MODAL 종료 -->
                    <script type="text/javaScript" language="javascript" defer="defer">
                        // modal in swiper $(document).ready(function() { $(".modal").on('show.bs.modal', function() { setTimeout(function() { var swiperPop = new Swiper('.swipPop', { // pagination: '.swiper-pagination', // nextButton: '.swiper-button-next', // prevButton: '.swiper-button-prev',
                        }); }, 500); }); }); function goBrandPav01(brNum) { window.open('http://www.thehandsome.com/ko/b/br' + brNum); } function goBrandPav02(brNum) { window.open('http://www.thehandsome.com/ko/c/br' + brNum + '/br' + brNum); } function
                        goBrandPav03(brndCtgryNo) { window .open('https://www.hfashionmall.com/display/brand?brndCtgryNo=' + brndCtgryNo); }
                    </script>

                    <!-- // ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
                </div>
            </div>
            <!-- // container -->
            <script type="text/javaScript" language="javascript" defer="defer">
                // swiper1 - swipTop var swipTop = new Swiper('.swipTop', { loop : true, speed : 2000, autoplay : { delay : 1500, paginationClickable : true, }, pagination : { el : '.swiper-pagination', type : 'bullets', clickable : true, }, navigation : { nextEl : '.swiper-button-next',
                prevEl : '.swiper-button-prev', clickable : true, }, on : { slideChangeTransitionEnd : function() { var slideIndex = this.activeIndex; var slidesLen = this.slides.length - 2; var nextIndex, prevIndex; //console.log(slideIndex, slidesLen);
                if ((slideIndex == 1) || (slideIndex == (slidesLen + 1))) { nextIndex = 2; prevIndex = slidesLen; } else if (slideIndex == slidesLen) { nextIndex = 1; prevIndex = slidesLen - 1; } else { nextIndex = slideIndex + 1; prevIndex = slideIndex
                - 1; } $(".swiper-button-next").css( "background-image", "url('../images/thumbs/bdlogo/brandLogo" + nextIndex + ".png?dt=20211122_1')"); $(".swiper-button-prev").css( "background-image", "url('../images/thumbs/bdlogo/brandLogo" + prevIndex
                + ".png?dt=20211122_1')"); } }, }); $('.swipTop').on('mouseenter', function(e) { //console.log('stop autoplay'); //swipTop.autoplay.stop(); }); $('.swipTop').on('mouseleave', function(e) { //console.log('start autoplay'); //swipTop.autoplay.start();
                }); // swiper2 - swipPop var swipPop = new Swiper('.swipPop', { pagination : { // 페이징 설정 // el : '.swiper-pagination', clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동 }, navigation : { // 네비게이션 설정 nextEl : '.swiper-button-next',
                // 다음 버튼 클래스명 prevEl : '.swiper-button-prev', // 이번 버튼 클래스명 }, effect : 'fade', observer : true, observeParents : true }); $('#brandList li').click(function() { var ulIndex = $(this).parent().index(); var liIndex = $(this).index(); var
                index = ulIndex * 4 + liIndex; swipPop.slideTo(index, 0); });
            </script>

            <jsp:include page="../fnb.jsp" />

            <script>
                // modal in swiper
                $(document).ready(function() {

                    $(".modal").on('show.bs.modal', function() {
                        setTimeout(function() {
                            var swiperPop = new Swiper('.swipPop', {
                                // pagination: '.swiper-pagination',
                                // nextButton: '.swiper-button-next',
                                // prevButton: '.swiper-button-prev',
                            });
                        }, 500);
                    });
                });

                $(function() {
                    var $w = $(window),
                        fH = $('.footer').outerHeight(),
                        $toolTop = $('#toolTop');
                    $w.on('scroll', function() {
                        var sT = $w.scrollTop();
                        var hH = $(document).height() - $w.height() - fH;
                        if (sT >= hH)
                            $toolTop.addClass('on')
                        else
                            $toolTop.removeClass('on')
                    });
                    $toolTop.click(function() {
                        var pagetop = $('html').offset();
                        $('html, body').animate({
                            scrollTop: pagetop.top
                        }, 400);
                    });
                });

                $('.site_tgl').click(function() {
                    event.stopPropagation();
                    $(".site_list").slideToggle(670, function() {});
                });
            </script>
        </div>
    </body>

    </html>