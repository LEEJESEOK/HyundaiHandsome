--SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME='BRAND_SEQ';
--ALTER SEQUENCE BRAND_SEQ INCREMENT BY -1;
--SELECT BRAND_SEQ.currval FROM DUAL;
--SELECT BRAND_SEQ.nextval FROM DUAL;
--ALTER SEQUENCE BRAND_SEQ INCREMENT BY 1;
--commit;
--
----
--delete from brand where 1=1;
--
set define off
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.currval, (select distinct id from brand_type where name like 'fashion'), 'TIME', 'POETIC SCENES', '1993년 런칭한 브랜드 TIME은 섬세하고 주의 깊은 시선, 일상적이면서 매혹적인 우아함으로<br>타임 만의 궤도를 그리며 시대에 맞는 새로운 모습을 제안합니다.<br>당당하고 품격있는 라이프스타일을 지닌 현대 여성들을 위한 세련되고 정제된 실루엣과 고급스러운 소재,<br>최상의 제품력으로 타임리스한 브랜드 가치를 완성합니다.<br>런칭 이후 브랜드 인지도와 제품 신뢰도에 있어 독보적인 영역을 만들어 국내 여성복 마켓을 선도하는 브랜드입니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'MINE', 'ARTISTIC FEMININITY', 'MINE은 Artistic한 감성을 바탕으로 쿠틔르적 섬세함과 품격을 미니멀하게 표현하여 여성스러움을 보다 세련되고 아트적인 느낌으로 연출합니다. 섬세한 여성의 마인드를 고급스럽고 엘레강스한 감성으로 표현하며 고유의 컨셉에 트랜드를 가미,다양한 변화를 제안합니다. 1988년 런칭 이후 현재까지 명성을 이어오는 국내 최초의 캐릭터 브랜드로써 뚜렸한 컨셉과 정체성을 제안하며 지속적으로 사랑 받고 있는 브랜드입니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'LANVIN COLLECTION', 'NEW ELEGANCE', '2009년 런칭한 랑방 컬렉션은 한섬에서 전개하고 있는 LANVIN의 라이선스 브랜드로 하우스 특유의 유니크하고 페미닌한 아이덴티티를 기반으로<br>부드럽고 우아한 여성스러움을 표방합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'OBZ??', 'ACCESSIBLE FEMININITY', '1993년 런칭한 국내 럭셔리 캐릭터 브랜드로 자리매김한 OBZ??는 품격있는 우아함과 자신만의 확고한 스타일을 추구하는 여성들을 위해 세련되고 페미닌한 트렌드를 제시합니다. 쿠틔르적인 섬세함과 동시에 시크함을 모던하게 재해석하여 현대 여성의 스타일을 표현합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'the CASHMERE', 'ESSENTIAL & LUXURY SIMPLICITY', 'the CASHMERE는 삶의 본질적인 가치에 집중하기를 원하는 소비자를 위해<br>최상의 소재와 절제된 디자인을 추구하는 캐시미어 전문 브랜드입니다.<br>하이엔드 브랜드에서 주로 사용하는 이탈리아 및 스코틀랜드 캐시미어 원사를 70% 이상 사용하여 고급스러움을 극대화시키고 간결한 실루엣, 실용적인<br>디테일, 여유로운 핏감을 통해 편안하면서도 품격 있는 퀄리티를 추구합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'L?TT', 'DELIGHTFUL LUX CONTEMPORARY', '부드럽고 밝은 애티튜드, 위트와 여유를 즐기는<br>Life Style을 추구하는 여성을 위한 브랜드<br>L?TT(래트)는 스웨덴어로 ‘가볍다’는 뜻으로,<br>세련되고 차별화된 컬러 팔레트와 동시대적인<br>감각을 공유하여 Delightful Style 을 제안합니다.<br>고급스러운 퀄리티, 편안한 실루엣과 유니크함을<br>통해 여유로운 일상에 세련된 룩을 선보입니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'SYSTEM', 'MIX MATCH LAYER', 'SYSTEM은 브랜드 런칭 당시의 컨셉인 ‘Mix Match Layer’를 현재까지 꾸준히 이어오면서 시대를 앞서가는 트렌드를 누구보다 빠르게 접목하여 현재까지도 국내 최고의 영 캐릭터 캐주얼로 인정받고 있습니다. 시크하고 정교한 테일러링과 섬세하지만 절제된 디테일로 자유롭고 트렌드에 민감한 젊은 도시 여성들의 스타일을 제안하고 있습니다. 고유의 우수한 디자인과 제품력 등 최고 품질을 기대하는 고객의 신뢰를 최우선으로 베스트 브랜드의 위상을 지켜가고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'SJSJ', 'YOUNG ARTISTIC CASUAL', '1997년 런칭한 SJSJ는 젊은 예술가들의 창의적인 작품 활동에서 영감을 받아<br>아티스틱한 여성 캐주얼 브랜드로서의 아이덴티티를 구축해 왔습니다.<br>심플하고 자연스러운 실루엣에 에너제틱한 컬러감, 아트적인 그래픽 요소들을<br>더해 창의적이면서도 감성적인 스타일을 제안하여 상상력과 섬세함을 갖춘<br>개성있는 젊은 여성들의 사랑을 받고 있는 브랜드입니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'O''2nd', 'COLOR, TASTE, HUMOR', 'O’2nd은 ‘Pop Boutique’ 컨셉을 통해 예술과 문화에서 영감을 받아 새로운<br>캐주얼 문화를 창조하는 브랜드입니다.<br>팝한 감성과 아티스틱한 터치로 유머러스한 감성을 표현해냄으로써 자신만의<br>개성을 지닌 패션 커뮤니케이터에게 어필되고 있습니다. 지속적인 아티스트와의<br>협업으로 신선한 아이디어와 트렌드를 제안하여 브랜드만의 색깔을 드러내고<br>있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'SJYP', 'MODERN, CLEAN, FRESH', '트렌디한 럭셔리 캐주얼을 지향하는 SJYP는 프리미엄 데님에 실험적인 감성을<br>담아 개성있는 라이프스타일을 제안하며, 브랜드 특유의 팝한 컬러와 유니크한<br>패턴을 결합하여 젊고 자유분방한 감성을 전달하며, 2014년 런칭 이후 현재까지<br>글로벌 인지도를 높여왔습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'D?CKE', 'ALTERNATIVE LUXURY', '글로벌 핸드백 & 주얼리 브랜드 D?CKE는 소재에 관한 깊이 있는 시각과<br>접근을 통해 가죽 본연의 아름다움을 살린 세련된 스타일과 개성 있는<br>오리지널리티를 추구합니다. 고급 소재와 D?CKE만의 감성으로 현대 여성들의<br>개성있는 컨템포러리 룩과의 자유로운 믹스매치가 가능한 스타일을 제안합니다.<br>음악, 그래픽, 미디어 아트 문화 전반을 통해 표현되는 해체와 융합의<br>콜라보레이션을 통해 D?CKE의 브랜드 스토리와 스타일을 전달합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'rouge & lounge', 'UNEXPECTED MODERN CLASSIC AS ADVANCED CONTEMPORARY', '어드밴스드 컨템포러리 액세서리 브랜드 rouge & lounge는 ‘일을 사랑하는<br> 여성’을 상징하는 rouge와 ‘자신만의 시간을 통해 재충전’하는 lounge의 상반된<br> 의미를 담고 있습니다. 장인정신을 기반으로 유니크하고 아이코닉한 소재를<br> 활용하여 현대적인 감각과 기술을 접목시킨 컨템포러리한 스타일을 완성합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'TIME HOMME', 'DELICATE LUXURY & MODERN CLASSIC', 'TIME HOMME는 섬세한 실루엣의 클래식 포멀 웨어와 모던한 캐주얼 웨어를<br> 결합한 Soft Luxury를 표방합니다. 감각적인 디자인과 고급소재의 캐주얼을<br>믹스하여 국내 남성복 시장에서 브랜드가 아닌 TIME HOMME만의 특별한<br> 스타일을 만들어 가고 있습니다. 2000년 런칭 당시 영역이 모호했던 남성 캐릭터<br> 캐주얼 라인에 내셔널 브랜드로 과감하게 도전장을 던진 후, 세련된 디자인과 수입<br> 명품을 능가하는 제품력으로 고객 충성도를 쌓으며 리딩 브랜드의 자리를 지키고<br> 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'SYSTEM HOMME', 'SLIM & STYLSH URBAN CASUAL', 'SYSTEM HOMME는 자신만의 개성과 스타일을 추구하는 이들을 위한 브랜드입니다.<br>모던한 디자인과 브랜드만의 시크한 실루엣을 제안하며 고급스러운 소재, 트렌디한 디테일로<br>차별화된 어반 캐주얼을 선보이고 있습니다.<br>2008년 런칭 이후, SYSTEM HOMME가 전개하는 시크한 테일러링과 스타일리시한 캐주얼 아이템은<br>해외 패션 인플루언서들과 젊은 남성들에게 큰 인기를 끌고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'TOMMY HILFIGER', 'CLASSIC AMERICAN COOL WITH A TWIST', '타미 힐피거는 1985년 뉴욕 베이스의 디자이너 브랜드로 런칭한 이래,<br>전 세계적으로 완벽한 프리미엄 라이프스타일을 대표하는 브랜드로 자리매김하고<br>있습니다. 타미 힐피거는 대표적인 아메리칸 캐주얼 브랜드로, 클래식하고<br>세련된 미국의 감성을 담아 남성, 여성, 데님, 아동 라인까지 발전시켜왔으며,<br>미국 팝 문화 정신에서 영감을 받은 다양한 스타일의 모던하고 신선한 패션을<br>제안합니다. 국내에는 2003년 첫 선을 보인 이후 특유의 재치를 가미한 아메리칸<br>클래식 프레피룩을 통해 국내 고객들의 라이프스타일을 이끌어 가고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'TOMMY JEANS', 'AMERICAN DENIM CLASSICS WITH A MODERN, CASUAL EDGE', '타미 진스는 모던하고 엣지 있는 캐주얼 무드의 아메리칸 데님 클래식에서 영감을<br>받은 브랜드입니다. 젊은 에너지와 타미 진스의 전통에 가미하며, 프리미엄 데님에<br>주력한 남성과 패션 컬렉션을 선보이며, 18세부터 30세까지 데님을 즐겨입는<br>소비자를 타겟층으로 하고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'CLUB MONACO', 'AFFORDABLE LUXURY WITH A MODERN SENSIBILITY', '1985년에 런칭한 뉴욕 감성의 컨템포러리 브랜드로 도회적인 감각에 실용성을<br>더하여 시티 라이프를 즐기는 여성과 남성에게 어필하고 있습니다.<br>2009년부터 국내 라이선스를 진행했으며, 브랜드 고유의 시크한 감성에 트렌드를<br>접목한 디자인을 선보이고 있습니다');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'DKNY', 'ADVANCED CONTEMPORARY', 'DKNY는 뉴욕을 대표하는 럭셔리 브랜드로, 뉴욕의 감성과 역동적인 에너지를<br>모던하게 표현하고 있습니다. 고품격의 도회적 세련미를 추구하며, 스타일리쉬한<br>현대 여성과 남성의 라이프스타일에 맞는 부드럽고 감각적인 디자인을 제안합니다.<br>미국을 포함한 세계 25개국에 240개의 스토어에서 판매되고 있으며, 국내에는<br>2006년에 첫 선을 보였습니다');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'CK CALVIN KLEIN', 'SEXY, URBAN, TRENDY, YOUTHFUL', '섹시, 도시적, 트렌디, 젊음을 표방하는 뉴 럭셔리 디자이너 브랜드<br>CK CALVIN KLEIN은 쿨함과 엣지를 겸비한 컨템포러리 라인으로, 독특한 엣지와<br>정교한 관능미를 극대화한 아이코닉, 에센셜, 패셔너블한 아이템을 선보이고 있습니다. 2012년 국내에 첫 선을 보였으며 홍콩을 비롯한 아시아, 유럽 시장에서<br>60여 개의 스토어에서 판매되고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'BALLY', 'INNOVATION, FUCTIONALITY, ELEGANCE', '1851년 탄생한 스위스 명품 브랜드 BALLY는 최고급 가죽 소재와 장인정신을 통해<br>기품 있는 클래식 스타일을 추구합니다.<br>가죽 액세서리와 함께 남성복과 패션복도 함께 선보이며 토탈 패션 브랜드로<br>진화 중입니다. 한섬과의 계약 체결로 국내에서 성공적으로 성장하고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'LANVIN', 'ELEGANT EVOLUTION OF FRENCH CLASSIC', '1889년, 디자이너 잔느 랑방은 그녀의 나이 22세에 단독 꾸띄르 하우스를 오픈하여 파리의 상류사회 패션시장을 선도합니다. 창조적이면서도 우아하고 과감한 작품<br>세계를 통해 패션계의 여왕으로 자리잡은 잔느는 현대 여성의 대명사로<br>인식되었습니다. 이후 코코샤넬과 함께 패션계의 양대산맥이라고 불리우며 전통과<br>혁신, 퀄리티와 프랑스적인 우아함, 시크함과 모던함을 동시에 표방해온 랑방은<br>섬세한 디테일과 최상의 품질로 새로운 시각의 매혹적인 럭셔리 스타일을 제시하며<br>부동의 명품 브랜드로 그 명성을 이어나가고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'ROCHAS', 'PARISIAN CHIC & SOPHISTICATED SENSUALITY', '쿠튀리에 마셀 로샤스가 1925년 런칭한 여성복 브랜드로 우아한 이브닝 라인과<br>캐주얼한 데이웨어로 파리의 젊은 여성들에게 사랑 받았습니다.<br>현재는 크리에이티브 디렉터 알레싼드로 델라쿠아가 현대 여성을 위해<br>글래머러스한 동시에 실용적인 데이웨어 까지 아우르는 다채로운 룩을 선보입니다.<br>여성스러운 실루엣과 역동적인 컬러, 프린트, 디테일의 조화로 로맨틱하면서<br>세련된 여성상을 표현합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), '3.1 PHILLIP LIM', 'NEW MODERN LUXURY', '2005년 미국 디자이너 필립림이 런칭한 뉴 럭셔리 브랜드. 미니멀리즘과 클래식, 모던의 경계를 넘나드는 절제된 스타일의 디자인이 특징입니다.<br>필립림은 첫 번째 컬렉션을 선보인 후, 미국패션협회의 ''떠오르는 스타 여성복<br>디자이너'' 상과 CFDA 신인상을 받으며 미국을 대표하는 디자이너로 자리매김하게<br>되었습니다. 간결함, 쿨함, 시크함 속에 깃든 독보적인 세련미로 젊은 여성들에게<br>사랑받고 있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'MUE', 'ATTRACTIVE HIGH-END SELECTION', 'MUE는 2004년에 오픈한 한섬의 럭셔리 편집숍으로, 브랜드 고유의 감성과<br>문화적인 아이덴티티를 공유하는 ‘갤러리형 편집숍’이라는 새로운 개념을<br>표방합니다. 럭셔리 브랜드와 독특한 감성의 디자이너 브랜드를 적절하게 구성해<br>다양한 예술과 문화적 영감이 조화된 공간에서 자신만의 특별한 감성과 스타일을<br>만들어 갈 수 있는 공간입니다. 브랜드 가치와 아이덴티티를 부각시킬 수 있는<br>아이템만을 선별하여 진정한 럭셔리 패션피플들을 위한 특별한 경험을 제공하고<br>있습니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'TOM GREYHOUND', 'IMAGINATIVE STYLE INFLUENCER', 'TOM GREYHOUND는 2008년에 오픈한 캐주얼 수입 편집숍으로, ‘이상한 나라의<br>앨리스’를 컨셉으로 재미있는 상상력이 더해진 인테리어와 함께 젊은 패션인들에게<br>Fun & Pop 스타일을 제안합니다. 전세계 유명 브랜드와 신진 디자이너 브랜드,<br>한섬에서 자체적으로 개발한 PB 제품까지 젊고 위트 있는 스타일을 만날 수 있는<br>가장 트렌디한 편집숍입니다.<br>2014년 파리 마레 지구에 오픈한 TOM GREYHOUND Paris는 유명 디자이너 뿐만<br>아니라, 신진 디자이너, 한섬 자체 브랜드를 세계에 알리는 플랫폼입니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'FOURM STUDIO', 'CONTEMPORARY FEMININE CHIC', '2016년 오픈한 FOURM STUDIO는 모던하게 재해석한 클래식 스타일을 기반으로<br>세련된 스타일을 제안하는 여성복 편집숍 입니다. FOURM ¼은 현대백화점 전용 편집숍으로, 현대백화점과 한섬이 추구하는 특별한<br>가치와 새로운 경험을 제공합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'FOURM THE STORE', 'UNIQUE TRENDY CASUAL', '2017년 런칭한 FOURM THE STORE는 모던하고 시크한 캐주얼을 중심으로<br>다양한 스타일을 믹스매치해 개성있는 룩을 제안하는 편집숍입니다. FOURM ¼은 현대백화점 전용 편집숍으로, 현대백화점과 한섬이 추구하는 특별한<br>가치와 새로운 경험을 제공합니다.');
insert into brand(id, type, name, brand_ss, brand_desc) VALUES(brand_seq.nextval, (select distinct id from brand_type where name like 'fashion'), 'FOURM MEN’S LOUNGE', 'MODERN CLASSIC HERITAGE', '2016년 오픈한 FOURM MEN’S LOUNGE는 클래식 헤리티지와 모던한 감각을<br>믹스하는 세련된 남성들을 위한 편집숍입니다. FOURM ¼은 현대백화점 전용 편집숍으로, 현대백화점과 한섬이 추구하는 특별한<br>가치와 새로운 경험을 제공합니다.');

select * from brand order by 1;

--rollback;
commit;