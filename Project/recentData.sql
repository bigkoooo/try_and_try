CREATE TABLE user (
    user_id	INT AUTO_INCREMENT PRIMARY KEY,
    u_id VARCHAR(20) NOT NULL,
    token VARCHAR(64) NOT NULL,
    password VARCHAR(40) NOT NULL,
    nickname VARCHAR(40) NOT NULL
);
CREATE TABLE card (
    card_id INT AUTO_INCREMENT PRIMARY KEY,    -- 카드 테이블 아이디
    card_corp VARCHAR(40) NOT NULL,            -- 카드사명
    card_name VARCHAR(40) NOT NULL,            -- 카드명
    card_image BLOB,                           -- 이미지
    card_traffic VARCHAR(40),                  -- 교통 혜택
    traffic_details VARCHAR(1000),             -- 교통 혜택 상세
    traffic_ox BOOLEAN NOT NULL,                        -- 교통 유무
    traffic_ranking INTEGER,				   -- 교통 랭킹
    card_store VARCHAR(40),                    -- 편의점 혜택
    store_details VARCHAR(1000),               -- 편의점 혜택 상세
    store_ox BOOLEAN NOT NULL,                          -- 편의점 유무
    store_ranking INTEGER,					   -- 편의점 랭킹
    card_cafe VARCHAR(40),                     -- 카페 혜택
    cafe_details VARCHAR(1000),                -- 카페 혜택 상세
    cafe_ox BOOLEAN NOT NULL,                           -- 카페 유무
    cafe_ranking INTEGER,					   -- 카페 랭킹
    card_sub VARCHAR(40),                      -- 구독 혜택
    sub_details VARCHAR(1000),                 -- 구독 혜택 상세
    sub_ox BOOLEAN NOT NULL,                            -- 구독 유무
    sub_ranking INTEGER,					   -- 구독 랭킹
    card_book VARCHAR(40),                     -- 서적 혜택
    book_details VARCHAR(1000),                -- 서적 혜택 상세
    book_ox BOOLEAN NOT NULL,                           -- 서적 유무
    book_ranking INTEGER,                      -- 서적 랭킹
    performance VARCHAR(40),                   -- 전월실적
    performance_details VARCHAR(1000) ,         -- 전월실적 상세
    performance_ox BOOLEAN NOT NULL
);

CREATE TABLE card_like (
    card_like_id INT AUTO_INCREMENT PRIMARY KEY,
    card_id INT,
    user_id INT,
    FOREIGN KEY (card_id) REFERENCES card(card_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

-- 댓글
CREATE TABLE COMMENT (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    card_id INT,
    user_id INT,
    FOREIGN KEY (card_id) REFERENCES card(card_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

-- 댓글 좋아요

CREATE TABLE comment_like (
    comment_like_id INT AUTO_INCREMENT PRIMARY KEY,
    comment_id INT,
    user_id INT,
    FOREIGN KEY (comment_id) REFERENCES comment(comment_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', '신한카드 Deep Dream 체크', '0', NULL, NULL, NULL, '1', 'Retail Store(편의점,잡화)

- CU, GS25, 세븐일레븐, 올리브영, 다이소

* 온라인 매장, 백화점/할인점 등 입점 매장의 경우 적립 제외', '편의점 0.2% 적립', NULL, '1', 'ENJOY STORE

- 커피(업종)

* CGV, 롯데시네마 사이트/앱 직접 접속 이용 또는 현장 결제 시 대상

* 당사에 커피 업종으로 등록된 가맹점에 대하여 적용 가능

* 상품권 구입, 선불카드 충전은 적립 제외', '카페 0.2% 적립', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '통합 적립한도 안내

- 모두드림 적립 한도: 무제한 적립

- 더해드림+챙겨드림

* 전월 이용금액(일시불+할부) 20만원 이상 40만원 미만: 5,000 포인트

* 전월 이용금액(일시불+할부) 40만원 이상 80만원 미만: 15,000 포인트', '전월실적 20만원 이상', '1');

INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', '신한카드 Deep Dream 체크(미니언즈)', '0', NULL, NULL, NULL, '1', 'Retail Store(편의점,잡화)

- CU, GS25, 세븐일레븐, 올리브영, 다이소

* 온라인 매장, 백화점/할인점 등 입점 매장의 경우 적립 제외', '편의점 0.2% 적립', NULL, '1', 'ENJOY STORE

- 커피(업종)

* CGV, 롯데시네마 사이트/앱 직접 접속 이용 또는 현장 결제 시 대상

* 당사에 커피 업종으로 등록된 가맹점에 대하여 적용 가능

* 상품권 구입, 선불카드 충전은 적립 제외', '카페 0.2% 적립', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '통합 적립한도 안내

- 모두드림 적립 한도: 무제한 적립

- 더해드림+챙겨드림

* 전월 이용금액(일시불+할부) 20만원 이상 40만원 미만: 5,000 포인트

* 전월 이용금액(일시불+할부) 40만원 이상 80만원 미만: 15,000 포인트', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', 'K-패스 신한카드 체크', '1', '대중교통(버스, 지하철) 이용 시 10% 결제일 할인

- 후불교통 기능을 이용한 터치(RF) 거래 시 할인

- 고속버스, 공항버스, 시외버스, 공항철도는 할인되지 않음



대중교통 할인 서비스 할인한도

지난달 이용금액 할인한도
20만원 이상
50만원 미만 2천원
50만원 이상 5천원
- 간편결제/생활할인 서비스와 별도 한도 운영됩니다

- 버스 및 지하철 요금은 실제 카드 사용일이 아닌, 이용대금명세서에 기재된 이용일 기준으로 서비스가 제공됩니다.', '대중교통 이용시 10% 할인', '1', '1', '편의점 2% 결제일 할인 

- 편의점 : GS25, CU 

- 오프라인 매장에 한하여 할인되며, 인터넷이나 모바일 앱을 통한 온라인 거래는 할인되지 않습니다.', '편의점 2% 할인', NULL, '1', '커피전문점 2% 결제일 할인 

- 커피전문점 : 스타벅스, 메가MGC커피, 매머드커피

- 오프라인 매장 및 공식 앱으로 결제 시 할인됩니다. 

- 백화점, 할인점 등 입점 매장 및 상품권, 선불카드 구입/충전, 선물하기 건은 할인되지 않습니다. 

', '카페 2% 할인', NULL, '1', 'OTT 2% 결제일 할인 

- OTT : 넷플릭스, 유튜브 프리미엄 

- 서비스 대상 가맹점 공식 홈페이지에 직접 접속하여 신청한 정기결제(자동이체)를 이용하는 경우에 한하여 서비스 적용됩니다. (1회성 일반구매 결제, 구글 플레이/애플 앱스토어 등 앱마켓을 통한 인앱결제, 통신요금 포함(합산) 결제건 은 할인되지 않습니다.)', 'OTT 2% 할인', NULL, '0', NULL, NULL, NULL, '간편결제/생활 할인 서비스 통합할인한도

지난달 이용금액 할인한도
20만원 이상
50만원 미만 2천원
50만원 이상 5천원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', '신한카드 Hey Young 체크', '1', '[생활 서비스]

대중교통 이용금액 5% 캐시백

- 마을/시내/시외/공항버스/지하철(고속버스제외)

- 후불교통기능을 이용한 터치(RF방식)거래시 서비스가 적용됩니다.

- 월 최대 3천원 까지 캐시백 제공', '대중교통 이용금액 5% 캐시백', NULL, '1', '[생활 서비스]

GS25 편의점 1천원 캐시백

- 건당 1만원 이상 결제 시 1천원 캐시백(일 1회/월 5회 제공)

※ 오프라인 매장에 한하여 적용되며, 인터넷이나 모바일앱을 통한 온라인 거래는 캐시백이 적용되지 않습니다.

※ 온라인매장, 백화점/할인점 등 입점 매장은 제외됩니다.', '편의점 1000원 할인', NULL, '1', '[생활 서비스]

스타벅스 커피 1천원 캐시백(사이렌오더, FAN사이렌 오더 포함)

- 건당 1만원 이상 결제 시 1천원 캐시백(일 1회/월 5회 제공)

※ 백화점, 할인점 등 입점 매장 및 해외 스타벅스 가맹점, 상품권, 선물하기, 선불카드 구입/충전건은 캐시백이 적용되지 않습니다.', '스타벅스 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 이용금액별 월간 통합 캐시백 한도

전월 이용금액

(일시불+할부)

통합 월적립한도
20만원 이상

50만원 미만

5천원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', '신한카드 Pick E 체크', '0', NULL, NULL, NULL, '1', '4대 편의점 이용 시 10% 적립

- 4대 편의점 : GS25, CU, 세븐일레븐, 이마트24

- 4대 편의점 통합 일 1회, 월 3회, 1회 최대 1천 포인트까지 적립

- 오프라인 매장에 한하여 적용되며, 인터넷이나 모바일앱을 통한 온라인 거래는 적립 서비스가 제공되지 않습니다. 또한 온라인 매장, 백화점, 할인점 등 입점 매장은 서비스가 제공되지 않습니다.



생활 영역 공통 유의사항

- 생활 영역 적립서비스 이용을 통한 포인트는 마이신한포인트로 적립됩니다.

- 전월 이용금액 20만원 이상 시 서비스가 제공됩니다.', '편의점 10% 적립', '1', '1', '커피 업종 이용 시 10% 적립

- 커피전문점 업종

- 커피전문점 업종 통합 일 1회, 월 3회, 1회 최대 1천 포인트까지 적립

- 커피전문점 업종은 신한카드 가맹점 업종 기준입니다.

- 백화점, 할인점 등 입점 매장 및 상품권, 선불카드 구입/충전 건은 할인 적용되지 않습니다.

- 신한카드 가맹점 업종 확인은 신한카드 홈페이지(www.shinhancard.com) 또는 신한플레이 앱 내 혜택 > 가맹점찾기에서 확인 가능합니다.



생활 영역 공통 유의사항

- 생활 영역 적립서비스 이용을 통한 포인트는 마이신한포인트로 적립됩니다.

- 전월 이용금액 20만원 이상 시 서비스가 제공됩니다.', '카페 10% 적립', '2', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '생활 영역 공통 유의사항

- 생활 영역 적립서비스 이용을 통한 포인트는 마이신한포인트로 적립됩니다.

- 전월 이용금액 20만원 이상 시 서비스가 제공됩니다.', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('신한카드', '신한카드 S-Line 체크', '1', '버스, 지하철 이용금액의 5% 할인 (후불교통 카드 선택 시)

- 캐시백 할인

- 월 최대 5,000원까지 할인

- S-Line 체크카드를 후불교통카드로 이용 시 제공

- 신한카드 교통카드 서비스 가능 지역에 한해 할인 적용

* (단, 공항버스, 공항리무진, 공항철도, 터널, 인천대교, 신공항 하이웨이 제외)할인서비스 유의사항

- 본 할인서비스는 통합할인한도내에서 모두 제공되며, 실적에 따라 이용이 제한될 수 있습니다.

- 교통 할인 서비스는 S–Line 체크카드를 후불 교통카드로 발급받으시는 경우에 제공되며, 후불 교통카드로 발급받지 않으신 경우 주유할인 서비스가 제공됩니다.

- S–Line 체크 후불교통카드는 주유할인 서비스가 제공되지 않습니다.', '버스, 지하철 이용금액의 5% 할인', NULL, '0', NULL, NULL, NULL, '1', '요식업종 이용금액의 5% 할인

- 캐시백 할인

- 오전 11시 ~ 오후 2시 이용금액에 한하여 제공

- 1만원 이상(할인 전 승인금액 기준) 이용 시 일 1회, 월 5회, 건당 최대 1,000원 할인

- 업종 구분은 해당 가맹점의 신한카드 등록 내용에 따르며, 일부 실제와 상이할 수 있음



할인서비스 유의사항

- 본 할인서비스는 통합할인한도내에서 모두 제공되며, 실적에 따라 이용이 제한될 수 있습니다.

- 교통 할인 서비스는 S–Line 체크카드를 후불 교통카드로 발급받으시는 경우에 제공되며, 후불 교통카드로 발급받지 않으신 경우 주유할인 서비스가 제공됩니다.

- S–Line 체크 후불교통카드는 주유할인 서비스가 제공되지 않습니다.', '카페 5% 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '신한카드 S-Line 체크 할인한도

- 전월 이용금액 30만원 ~ 60만원 미만 시 : 5천원

- 전월 이용금액 60만원 ~ 100만원 미만 시 : 1만원

- 전월 이용금액 100만원 이상 시 : 2만워

- S-Line 체크카드 이용금액에 한합니다.

- S-Line 체크카드 신규 발급 회원의 경우, 카드 사용등록월의 익월 말(등록월+1개월)까지 1만원의 통합할인한도가 제공됩니다.

- S-Line 체크카드의 할인 서비스는 전월 이용 실적에 따라 제공되는 통합할인한도 내에서 적용됩니다.

- 전월 이용금액은 전월 1일 ~ 말일까지의 거래 시점 이용금액으로 반영됩니다.

- 교통카드 이용금액은 전전월 이용금액이 반영됩니다.

- 해외 이용금액은 매입 일자 기준으로 이용금액이 반영됩니다.

- 각종 수수료/이자/기프트카드 구매금액/선불카드 충전금액/거래 취소 금액은 전월 이용 금액에서 제외됩니다.

- 해당 S–Line 체크카드가 유효한 경우에 한하여 서비스가 적용됩니다.', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '카드의정석 오하CHECK', '1', '오늘 하루 LIFE 5% 캐시백 서비스
대중교통(버스/지하철)
대상 : 시내버스, 지하철 후불교통 이용금액
※ 매출 건당 최대 1천원까지 캐시백 제공
※ 고속버스, 시외버스, 공항버스, 공항철도(직통열차)는 캐시백 제외
※ 모바일 간편결제(삼성페이 등)를 통해 교통카드(티머니/캐시비)에 본 카드 등록하여 후불 이용시에도 제공', '대중교통 이용금액 5% 캐시백', NULL, '0', NULL, NULL, NULL, '1', '오늘 하루 EAT 5% 캐시백 서비스
커피
스타벅스 사이렌오더
※ 매출 건당 최대 1천원까지 캐시백 제공
※ 스타벅스 공식 앱을 통한 사이렌오더 결제 건에 한하며, 스타벅스카드(e-gift카드 포함) 구매 및 충전,
　백화점/대형할인점 내 매장이나 미군부대 등 임대매장 결제 건은 캐시백 제외
※ 네이버페이, 우리페이로 승인된 매출은 캐시백 제외', '카페 5% 캐시백', NULL, '1', '오늘 하루 PLAY 5% 캐시백 서비스
OTT
넷플릭스, 멜론
※ 매출 건당 최대 1천원까지 캐시백 제공
※ 넷플릭스 : 공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하며, Basic, Standard, Premium 요금제에 한하여 캐시백 제공(광고형 스탠다드는 제외)
※ 멜론 : 공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하여 캐시백 제공 (1회성 일반구매 결제 건 등은 캐시백 제외)
※ 네이버페이, 우리페이로 승인된 매출은 캐시백 제외', 'OTT 5% 캐시백', '3', '0', NULL, NULL, NULL, '※ 전월 국내 가맹점 이용금액 20만원 이상 시 캐시백 제공
※ 매출 건당 최대 1천원까지 캐시백 제공
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('하나카드', 'Young Hana+ 체크카드', '1', '대중교통(버스, 지하철)
캐시백 지급률(%): 10% / 캐시백 조건: 월 3만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 30만원 이상- 2천원 
대중교통 캐시백 대상 : 시내버스, 마을버스, 광역버스, 공항버스, 지하철, 공항철도
대중교통 캐시백 제외대상 : 시외버스, 고속버스', '대중교통 이용금액 10% 캐시백', '2', '1', '편의점(GS25, CU, 이마트24, 세븐일레븐)
캐시백 지급률(%): 5% / 캐시백 조건: 건당 1만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 30만원 이상- 2천원 60만원 이상- 4천원', '편의점 캐시백 5%', NULL, '1', '커피(스타벅스, 투썸플레이스)
캐시백 지급률(%): 5% / 캐시백 조건: 건당 1만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 30만원 이상- 2천원', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('하나카드', '금쪽이 Young Hana+ 체크카드', '1', '대중교통(버스, 지하철)
캐시백 지급률(%): 10% / 캐시백 조건: 월 3만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 30만원 이상- 2천원
대중교통 캐시백 대상 : 시내버스, 마을버스, 광역버스, 공항버스, 지하철, 공항철도
대중교통 캐시백 제외대상 : 시외버스, 고속버스', '대중교통 이용금액 10% 캐시백', NULL, '1', '편의점(GS25, CU, 이마트24, 세븐일레븐)
캐시백 지급률(%): 5% / 캐시백 조건: 건당 1만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 30만원 이상- 2천원', '편의점 캐시백 5%', NULL, '1', '커피(스타벅스, 투썸플레이스)
캐시백 지급률(%): 5% / 캐시백 조건: 건당 1만원 이상
실적 구간별 월 캐시백 한도: 10만원 이상- 1천원 
30만원 이상- 2천원', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('하나카드', 'K-패스 하나 체크카드', '1', '대중교통(버스, 지하철)
캐시백 지급률(%): 10% 
실적 구간별 월 캐시백 한도: 30만원 이상- 3천원 
대중교통으로 이용한 후불교통카드 매출 건에 한해 할인 제공
시외버스, 고속버스, 티머니/캐시비 등 교통카드 충전금액은 서비스 제외', '대중교통 이용금액 10% 캐시백', '3', '0', NULL, NULL, NULL, '0', '커피(스타벅스,커피빈)
캐시백 지급률(%): 1%
실적 구간별 월 캐시백 한도: 30만원 이상- 5천원
국내 가맹점 이용 건에 한해 캐쉬백 서비스 제공 
대형시설물 입점점포(백화점, 할인점, 아울렛, 쇼핑몰, 휴게소, 호텔, 리조트, 공항, 역사) 및 임대매장은 서비스에서 제외 
배달앱 등을 통한 주문 결제와 상품권 구입, 선불카드(선불전자 지급수단) 충전은 서비스에서 제외', '카페 1% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '지난달 1일부터 말일(승인 시점 기준)까지 국내외 일시불/할부 이용금액 기준으로 30만원/60만원 이상 시 서비스 차등 제공
최초카드 사용등록일 부터 다음달말일까지는 지난달 카드 실적이 30만원 미만이어도 30만원 이상 60만원 미만 기준으로 제공', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('하나카드', '카카오페이 체크카드', '1', '대중교통(시내버스, 마을버스, 광역버스, 공항버스, 지하철, 공항철도)
캐시백 지급률(%): 5% / 캐시백 조건: 월 5만원 이상
대중교통 캐시백 제외대상 : 시외버스, 고속버스', '대중교통 이용금액 5% 캐시백', NULL, '0', NULL, NULL, NULL, '1', 'zjvl(스타벅스, 카페베네, 파스쿠찌)
캐시백 지급률(%): 5% / 캐시백 조건: 건당 1만원 이상', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 실적 25만원 이상 
최초 카드 사용 등록 후 다음달 말까지는 전월 사용금액 25만원 미만시에도 전월 카드 사용금액 25만원 기준으로 서비스 제공', '전월실적 25만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('하나카드', '리틀프렌즈 체크카드', '0', NULL, NULL, NULL, '1', '편의점(CU, GS25, 세븐일레븐)
월 2회, 연 6회 1,000원', '편의점 건당 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '서점(영풍문고, 반디앤루니스, 교보문고)
월 2회, 연 6회 1,000원', '서점 1000원 할인', NULL, '난달 1일부터 말일까지(승인시점 기준)의 이용금액 10만원 이상 시 서비스 제공 
최초 카드 사용등록일로부터 다음달 말일까지는 전월 실적 10만원 미만 시에도 10만원 기준으로 서비스 제공', '전월실적 10만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '[IBK기업은행] K-패스(체크)', '1', '대중교통(버스, 지하철)
건당 100원 할인 
후불교통카드로 이용한 건에 한함 (환승요금 제외) 
매출표 접수일 기준으로 월 최대 1천원 할인(월 10회 한도)', '대중교통 건당 100원 할인', NULL, '1', '편의점(GS25, CU, 세븐일레븐, 올리브영) 
통합 1일1회, 월2회, 1회 이용금액 1만원 한도 
온라인(간편결제 등) 결제 건은 할인 제외', '편의점 10% 할인', '2', '1', '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 엔제리너스, 투썸플레이스, 할리스, 달.콤) 
통합 1일1회, 월2회, 1회 이용금액 1만원 한도 
현장결제와 각 커피 브랜드의 공식앱을 통한 온라인 결제 건에 한함 
커피 브랜드의 상품권, 선불카드 구입/충전 제외 
백화점 및 할인(아울렛)점 입점 매장은 제외', '카페 10% 할인', '3', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '할인 서비스는 전월 이용실적이 30만원 이상인 경우 제공됩니다. 
카드 사용등록일로부터 다음 월말까지는 통합 월 할인한도 5천원을 기본으로 제공합니다.', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '[IBK기업은행] 알토스카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 할리스, 엔제리너스, 달콤커피)
20% 할인
※ 통합 1일 1회, 월 3회, 1회 이용금액 2만원 한도
[ 할인 제공안내 ]
백화점 및 할인(아울렛)점 입점 매장은 제외될 수 있습니다.
할인금액은 월간 통합할인한도 이내에서 적용됩니다.
상품권(선불카드 포함)구입 및 충전금액은 할인 제외됩니다.', '카페 20% 할인', '1', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '카드 이용시점 기준 전월 1일 부터 말일까지의 국내 가맹점 이용실적이 20만원 이상인 경우 제공됩니다.', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '[IBK기업은행] 
참! 좋은 다이소카드(체크)', '0', NULL, NULL, NULL, '1', '편의점(GS25, CU, 세븐일레븐, 올리브영, 랄라블라)
5% 할인 
- 통합 일 1회, 월 2회, 1회 이용금액 1만원 한도 
- 백화점, 할인(아울렛)점 입점 매장은 제외', '편의점 5% 할인', NULL, '1', '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 할리스, 엔제리너스, 투썸플레이스)
10% 할인 
- 통합 일 1회, 월 3회, 1회 이용금액 2만원 한도 
- 백화점, 할인(아울렛)점 입점 매장은 제외', '카페 10% 할인', '4', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '모든 서비스는 카드 이용시점 기준 전월 이용실적이 20만원 이상시 제공(단, 다이소 멤버십 서비스는 전월 이용실적 관계없이 제공)', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '[IBK기업은행] 일상의 기쁨(체크)', '1', '버스, 지하철 이용건당 100원 할인 
후불교통카드로 이용한 건에 한함 
매출표 접수일 기준으로 월 최대 1천원 할인 
환승으로 이용된 건은 이용횟수에서 제외', '대중교통 건당 100원 할인', NULL, '1', 'GS25, CU, 세븐일레븐, 올리브영 5% 할인 
통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도', '편의점 5% 할인', NULL, '1', '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 엔제리너스, 투썸플레이스, 할리스, 달.콤)
주요 커피전문점 10% 할인 
통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도 
백화점 및 할인(아울렛)점 입점 매장은 제외', '카페 10% 할인', '5', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '할인 서비스는 카드 이용시점 기준 전월 1일부터 말일까지의 국내 가맹점 이용금액이 30만원 이상인 경우 제공.', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '[IBK기업은행] 안녕 체크카드', '1', '후불교통카드 서비스
- 이용가능 교통수단 : 지하철, 시내버스 및 간선버스, 고속도로 등
이용한도 : 10만원 (상환 후 다음 영업일에 한도 생성)
- 상환방법 : 월 3회 (매월 10일, 20일, 말일 + 2영업일) 결제계좌에서 자동출금
대중교통(버스, 지하철) 이용금액 5% 할인
- 매월(승인 접수 기준으로 1일~말일)이용금액 3만원까지 할인 대상 적용
- 후불교통카드로 이용한 금액에 한함', '대중교통 이용금액 5% 할인', NULL, '1', '편의점 (CU, GS25, 세븐일레븐, 미니스톱) 이용금액 5% 할인 
- 통합 월 2회, 건당 이용금액 1만원 이상 3만원까지 승인이 정상 접수되는 순서대로 할인 
- 상품권 구매금액은 할인 제외', '편의점 5% 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '카드 이용시점 기준 전월 1일부터 말일까지의 국내가맹점 이용실적이 20만원 이상인 경우 제공', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('BC(기업)카드', '
[IBK기업은행] 용인시민카드(체크)', '1', '대중교통 3% 청구 할인
- 버스/지하철 (용인시 경전철 포함)
- 후불교통 이용 시 월 1,000원 한도 내 제공', '대중교통 이용금액 5% 할인', '4', '0', NULL, NULL, NULL, '1', '커피/카페 10% 할인 
- 전국 스타벅스, 커피빈, 카페베네, 탐앤탐스, 할리스, 엔제리너스, 달콤커피 
※ 통합 1일 1회, 월 2회, 1회 이용 금액 2만원 한도 

[할인 제공 안내] 

- 백화점 및 할인(아울렛)점 입점 매장은 제외 
- 상품권 구매 금액은 할인 제외', '카페 10% 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '카카오페이 체크카드', '0', NULL, NULL, NULL, '1', '편의점(CU, GS25, 세븐일레븐, 바이더웨이, 미니스톱), 올리브영, 시코르, 다이소
통합 월2회 할인
현장 결제 시 가능
할인금액은 월간 통합할인한도 내에서 제공
상품권 구매금액은 할인 제외', '편의점 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '카카오페이체크카드의 할인서비스는 전월 1일부터 말일까지 국내 가맹점 이용실적이 20만원 이상인 경우 제공됩니다.
카드 수령일부터 다음 월 말일까지는 카드 이용실적이 미달하더라도 통합 할인한도 5천원이 기본으로 제공됩니다.', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '메가박스 체크카드', '1', '대중교통(시내버스, 지하철)
5% 캐시백 
최대 2천원', '대중교통 이용금액 5% 캐시백', '5', '1', '편의점(CU, GS25, 세븐일레븐, 미니스톱, 이마트24)
5% 캐시백
월 2회, 월 최대 2천원', '편의점 최대 2000원 할인', '3', '1', '커피 전문점 스타벅스(사이렌오더포함), 할리스커피, 투썸플레이스, 엔제리너스 탐앤탐스, 이디야, 카페베네, 커피빈, 드롭탑
5% 캐시백
(월 2회,월 최대 2천원)', '카페 5% 캐시백', NULL, '1', '핫트렌드 20% 캐시백
넷플릭스, 멜론, 유튜브, 웨이브
월 2회, 월 최대 3천원
공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하여 제공', 'OTT 3000원 할인', '1', '0', NULL, NULL, NULL, '캐시백 서비스는 전월실적 40만원 이상시 제공됩니다.', '전월실적 40만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '멍이냥이 체크카드', '0', NULL, NULL, NULL, '1', '편의점(CU, GS25, 세븐일레븐, 미니스톱, 이마트24)
5% 캐시백
', '편의점 5% 캐시백', '4', '1', '커피 전문점 스타벅스(사이렌오더포함), 할리스커피, 투썸플레이스, 엔제리너스 탐앤탐스, 이디야, 카페베네, 커피빈, 드롭탑 
5% 캐시백', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 이용실적 20만원 이상 시 제공 
업종별 각각 월 2회, 건당 최대 3천원 캐시백', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '1st Y - Check 카드', '1', '교통(시내버스, 지하철, 택시, 고속버스, KTX / SRT)
+ 0.2 추가 캐시백', '대중교통 0.2% 추가 캐시백', NULL, '1', '※ +0.2 추가 캐시백 항목
편의점(CU, GS25, 세븐일레븐, 미니스톱, 이마트 24)', '편의점 0.2% 추가 캐시백', NULL, '1', '※ 오프라인 가맹점에서 결제한 경우: +5% 특별 캐시백 해당 항목
커피 스타벅스(사이렌오더포함), 엔젤리너스, 탐앤탐스, 할리스, 투썸플레이스, 이디야, 커피빈, 까페베네, 드롭탑
월 2회, 건당 최대 3천원 캐시백', '카페 5% 캐시백', NULL, '1', '※ +5% 특별 캐시백 해당 항목
핫트렌트 가맹점(멜론, 유튜브, 넷플릭스, 웨이브)
월 2회, 건당 최대 3천원 캐시백', 'OTT 3000원 할인', '2', '0', NULL, NULL, NULL, '기본 캐시백은 전월 실적 및 월간 통합 캐시백 한도의 제한 없이 제공됩니다.
추가(특별) 캐시백 서비스는 전월 이용실적 20만원 이상시 제공됩니다.', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '1st A - Check 카드', '1', '교통(시내버스, 지하철, 택시, 고속버스, KTX / SRT) 
+ 0.2 추가 캐시백', '대중교통 0.2% 추가 캐시백', NULL, '0', NULL, NULL, NULL, '1', '※ 오프라인 가맹점에서 결제한 경우: +0.2 추가 캐시백 항목
스타벅스(사이렌오더포함), 엔젤리너스, 탐앤탐스, 할리스, 투썸플레이스, 이디야, 커피빈, 까페베네, 드롭탑', '카페 0.2% 추가 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '기본 캐시백은 전월 실적 및 월간 통합 캐시백 한도의 제한 없이 제공됩니다. 
추가(특별) 캐시백 서비스는 전월 이용실적 20만원 이상시 제공됩니다.', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('광주카드', '청춘대박 체크카드', '0', NULL, NULL, NULL, '1', '편의점(세븐일레븐, GS25)
5% 캐시백할인 
결제금액 건당 1만원 이상인 경우 제공 
월 캐시백 할인한도 2,000원', '편의점 5% 캐시백', '5', '1', '커피(카페베네,드롭탑,엔제리너스,파스쿠찌)
5% 캐시백할인 
결제금액 건당 1만원 이상인 경우 제공 
월 캐시백 할인한도 2,000원', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '1', '인터넷서점 교보문고 5% 캐시백할인 
결제금액 건당 1만원 이상인 경우 제공 
월 캐시백 할인한도 3,000원', '서점 3000원 캐시백', NULL, '전월 실적 20만원 이상', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '카드의정석 오하CHECK', '1', '오늘 하루 LIFE 5% 캐시백 서비스(최대 3천원)
대중교통(버스/지하철)
대상 : 시내버스, 지하철 후불교통 이용금액
※ 매출 건당 최대 1천원까지 캐시백 제공
※ 고속버스, 시외버스, 공항버스, 공항철도(직통열차)는 캐시백 제외
※ 모바일 간편결제(삼성페이 등)를 통해 교통카드(티머니/캐시비)에 본 카드 등록하여 후불 이용시에도 제공', '대중교통 이용금액 5% 캐시백', NULL, '0', NULL, NULL, NULL, '1', '오늘 하루 EAT 5% 캐시백 서비스
커피
스타벅스 사이렌오더
※ 매출 건당 최대 1천원, 월 최대 2천원 캐시백 제공
※ 스타벅스 공식 앱을 통한 사이렌오더 결제 건에 한하며, 스타벅스카드(e-gift카드 포함) 구매 및 충전,
　백화점/대형할인점 내 매장이나 미군부대 등 임대매장 결제 건은 캐시백 제외
※ 네이버페이, 우리페이로 승인된 매출은 캐시백 제외', '카페 5% 캐시백', NULL, '1', '오늘 하루 PLAY 5% 캐시백 서비스
OTT
넷플릭스, 멜론
※ 매출 건당 최대 1천원까지 캐시백 제공
※ 넷플릭스 : 공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하며, Basic, Standard, Premium 요금제에 한하여 캐시백 제공(광고형 스탠다드는 제외)
※ 멜론 : 공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하여 캐시백 제공 (1회성 일반구매 결제 건 등은 캐시백 제외)
※ 네이버페이, 우리페이로 승인된 매출은 캐시백 제외', 'OTT 5% 캐시백', '4', '0', NULL, NULL, NULL, '※ 전월 국내 가맹점 이용금액 20만원 이상 시 최대 1만원 캐시백 제공
※ 매출 건당 최대 1천원까지 캐시백 제공
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '위비트래블 체크카드', '1', '시내버스, 지하철 5% 캐시백(최대 3천원)
※ 고속버스, 시외버스, 공항버스, 공항철도(직통열차) 등은 캐시백 제외
※ 모바일 간편결제(삼성페이 등)를 통해 교통카드(티머니/캐시비)에 본 카드 등록 후 후불 이용 시에도 캐시백 제공
※ 우리페이, 네이버페이로 승인된 매출은 캐시백 제외', '대중교통 이용금액 5% 캐시백', NULL, '0', NULL, NULL, NULL, '1', '
스타벅스 사이렌오더 5% 캐시백최대 (월 최대 3천원)
스타벅스 공식 앱을 통한 사이렌오더 결제 건에 한함
※ 스타벅스카드(e-gift카드 포함) 구매 및 충전, 백화점/ 대형할인점 내 매장이나 미군부대 등 임대매장 결제 건은 캐시백 제외
※ 우리페이, 네이버페이로 승인된 매출은 캐시백 제외', '카페 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 국내 가맹점 이용금액 20만원 이상 시 최대 3천원 캐시백 제공', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '카드의정석 K-LIFE CHECK', '1', '대중교통 (버스 / 지하철) 
건당 5만원 이상 결제 시 캐시백 제공 (월 캐시백 한도 : 3천원)
후불교통기능을 이용한 터치(RF)거래 건에 한하여 캐시백 제공
통합 월 1회 제공
※ 고속버스, 시외버스, 공항버스, 공항철도(직통열차)는 캐시백 제외', '대중교통 최대 3000원 캐시백', NULL, '1', '편의점(CU, GS25, 세븐일레븐) 
건당 1만원 이상 결제 시 캐시백 제공(월 캐시백 한도 : 2천원)
통합 월 2회 제공
※ 상품권·선불카드(선불전자 지급수단) 구매 및 충전 등의 이용금액은 캐시백 제외
※ 대형시설물 입점점포 및 임대매장(백화점, 대형할인점, 미군부대 등)은 캐시백 제외', '편의점 월 최대 2000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '교보문고(온/오프라인) 
건당 2만원 이상 결제 시 캐시백 제공 (월 캐시백 한도 : 3천원)
통합 월 2회 제공
※ 상품권·선불카드(선불전자 지급수단) 구매 및 충전 등의 이용금액은 캐시백 제외
※ 온라인 결제 경우 공식 앱 또는 홈페이지를 통한 결제 건에 한하여 캐시백 제공
(상품 선택 시 연결된 다른 사이트 및 앱 결제 건은 캐시백 제외)', '서점 3000원 캐시백', NULL, '※ 전월 국내 가맹점 이용금액 20만원 이상 시 최대 1만원 캐시백 제공', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '우리ONE 체크카드 국제 ATM', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스, 커피빈 10% 청구 할인
통합 일 1회, 월 2회, 월 최대 5천원까지 청구할인
대상가맹점의 상품권, 선불카드 구입, 충전 등의 이용금액은 할인서비스 제외
백화점, 마트, 미군부대 입점 매장은 제외
전월 국내가맹점 이용액 20만원 이상 고객에 한하여 제공', '카페 10% 할인', NULL, '0', NULL, NULL, NULL, '1', '인터넷서점 할인
인터넷 교보문고, 인터넷 영풍문고, Yes24 온라인 서점에서 3만원 이상 구매 시 건당 3,000원 청구 할인 
통합 월 1회, 연 6회
전월 국내가맹점 이용액 20만원 이상 고객에 한하여 제공
※ 인터넷 구매 시에만 할인 가능
※ 서적 외 상품은 할인 제외', '서점 3000원 캐시백', NULL, '전월 국내가맹점 이용액 20만원 이상 고객에 한하여 제공', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('우리카드', '우리 K-패스 (COOKIE CHECK)', '1', '대중교통(버스, 지하철) 3천원 캐시백 
버스, 지하철 합산 이용 금액 5만원 이상 시 3천원 캐시백
통합 월 1회 제공
※ 대중교통은 후불교통요금(카드이용대금명세서에 ‘교통-버스’, ‘교통-지하철’로 표시되는 매출, 고속버스/공항버스/ 공항철도(직통열차)는 대상 제외)에 한함.', '대중교통 최대 3000원 캐시백', NULL, '1', 'CU, GS25, 세븐일레븐, 올리브영, 군마트(PX,WA마트)
1천원 캐시백 
건당 1만원 이상 결제 시 1천원 캐시백(통합 월 2회 제공)
※ 온라인 매장 캐시백 제외
※ 상품권 및 선불카드 구매/충전 금액은 캐시백 제외
※ 백화점, 대형할인점, 미군부대 등 일부 입점매장 캐시백 제외', '편의점 1000원 캐시백', NULL, '1', '스타벅스(사이렌오더 포함) 2천원 캐시백 
건당 1만원 이상 결제 시 2천원 캐시백(통합 월 4회 제공, 최대 8천원까지 제공)
※ 사이렌오더를 통한 결제건도 캐시백 제공
※ 상품권 및 선불카드 구매/충전(앱 결제 포함) 등의 이용금액 캐시백 제외
※ 백화점, 대형할인점, 미군부대 등 일부 입점매장 캐시백 제외', '카페 2000원 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 국내가맹점 이용액 20만원 이상 고객에 한하여 기본서비스 최대 8,000원 캐시백 제공
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', 'SC제일은행 삼성체크카드 YOUNG', '1', '대중교통 이용금액의 10% 캐시백
제공기준
버스(시외·고속버스 제외), 지하철 등 후불교통카드 이용 시 제공(택시 제외)
캐시백은 매월 15일(영업일 기준) 해당 체크카드 결제계좌로 입금
이용조건
캐시백한도 : 월 2,500원
전월 이용금액 30만원 이상 시 제공(대중교통·이동통신 이용금액 제외)
', '대중교통 이용금액 10% 캐시백', NULL, '1', '편의점·커피·제과 1,000원 캐시백
서비스안내
편의점·커피전문점·제과점 업종에서 1만원 이상 결제 시 1,000원 캐시백
제공기준
캐시백은 매월 15일(영업일 기준) 해당 체크카드 결제계좌로 입금
이용조건
전월 이용금액 30만원 이상 시 제공(대중교통·이동통신 이용금액 제외)
통합 월 3회 제공', '편의점 1000원 캐시백', NULL, '1', '편의점·커피·제과 1,000원 캐시백
서비스안내
편의점·커피전문점·제과점 업종에서 1만원 이상 결제 시 1,000원 캐시백
제공기준
캐시백은 매월 15일(영업일 기준) 해당 체크카드 결제계좌로 입금
이용조건
전월 이용금액 30만원 이상 시 제공(대중교통·이동통신 이용금액 제외)
통합 월 3회 제공', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월 이용금액 30만원 이상 시 제공(대중교통·이동통신 이용금액 제외)
통합 월 3회 제공', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', '
신세계KB국민은행 삼성체크카드', '1', '대중교통 : 버스(시외·고속버스 제외), 지하철 1% 캐시백', '대중교통 이용금액 1% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', '신세계 삼성애니패스포인트 체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스 1,000원 결제일할인
서비스안내
스타벅스 1만원 이상 결제 시 1,000원 결제일할인(청구할인)
이용조건
통합 월 1회, 연 5회 제공
유의사항
상품권 구매 및 충전식 선불카드 충전은 제외됩니다.
백화점, 할인점 내 일부 임대매장은 제외됩니다.
체크카드는 결제건이 접수된 다음 날 해당 체크카드 결제계좌로 캐시백됩니다.', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', '신세계 삼성지엔미포인트 체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스 1,000원 결제일할인
서비스안내
스타벅스 1만원 이상 결제 시 1,000원 결제일할인(청구할인)
이용조건
통합 월 1회, 연 5회 제공
유의사항
상품권 구매 및 충전식 선불카드 충전은 제외됩니다.
백화점, 할인점 내 일부 임대매장은 제외됩니다.
체크카드는 결제건이 접수된 다음 날 해당 체크카드 결제계좌로 캐시백됩니다.', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', '새마을금고 삼성애니패스포인트체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스 1,000원 결제일할인
서비스안내
스타벅스 1만원 이상 결제 시 1,000원 결제일할인(청구할인)
이용조건
통합 월 1회, 연 5회 제공
유의사항
상품권 구매 및 충전식 선불카드 충전은 제외됩니다.
백화점, 할인점 내 일부 임대매장은 제외됩니다.
체크카드는 결제건이 접수된 다음 날 해당 체크카드 결제계좌로 캐시백됩니다.', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('삼성카드', '
삼성오토캐시백체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '커피 1,000원 캐시백
서비스 안내
스타벅스·커피빈 1만원 이상 결제 시 1,000원 캐시백
제공기준
결제 다음 달 15일(영업일 기준) 해당 체크카드 결제계좌로 캐시백
이용조건
월 3회 제공
유의사항
백화점·할인점 내 입점매장 및 일부 매장은 제외됩니다.
상품권 구매 및 충전식 선불카드 충전은 제외됩니다.', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', 'NEW현대백화점체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스, 커피빈, 엔제리너스 10% 캐시백할인
1일 1회, 월 2회, 월 3천원까지 할인
대형마트, 백화점, 역사, 쇼핑몰 입점 점포 제외
상품권(선불카드) 구매 시 제외
※ 전월 국내가맹점 이용실적 20만원 이상 시 제공', '카페 10% 캐시백', NULL, '0', NULL, NULL, NULL, '1', '교보문고/토익응시료 2천원 캐시백할인
교보문고(오프라인 매장)에서 건당 4만원 이상 결제 시 제공
토익응시료 결제 시(www.ybmsisa.com) 제공(인터넷(모바일) 접수분에 한함)
교보문고 및 토익응시료 합산 연간 최대 4회 제공
※ 전월 국내가맹점 이용실적 20만원 이상 시 제공', '서점 2000원 캐시백', NULL, '
전월실적은 1일부터 말일(승인시점기준)까지 카드별 국내가맹점 이용실적이며, 카드 발급 등록월 포함 다음월말까지는 전월실적을 20만원을 기본실적으로 간주하여 서비스 제공

전월실적 20만원 이상 ~ 50만원 미만일 경우 월간 최대 1만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', '대백 플러스 체크카드(대경교통)', '0', NULL, NULL, NULL, '1', 'GS25, 베스킨라빈스, 던킨도너츠 5% 결제일 캐시백
월 2회, 1회 최대 1,000원
건당 최소 1만원이상 결제 시
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외/상품권(선불카드) 구매 시 제외', '편의점 1000원 할인', NULL, '1', '스타벅스, 커피빈, 엔제리너스 10% 결제일 캐시백
일 1회, 월 2회, 건당 최대 1,500원, 월 3천원까지 할인
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외/상품권(선불카드) 구매 시 제외', '카페 10% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '
대백플러스체크카드의 캐시백 서비스는 전월(1일~말일) 국내가맹점 이용실적이 20만원 이상인 경우 제공되며, 카드 발급 등록월 포함 익월말까지는 전월 이용실적을 20만원으로 간주하여 서비스 제공
전월실적 20만원 이상 ~ 50만원 미만일 경우 월간 최대 1만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', 'Master Y+(영플러스) 체크카드', '0', NULL, NULL, NULL, '1', 'CU, GS 25 5% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 1,000원 할인
서비스 제공처 통합 월 3회', '편의점 1000원 할인', NULL, '1', '스타벅스 20% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 4,000원 할인
서비스 제공처 통합 월 3회
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외
상품권(선불카드) 구매시 제외
sleepless in seattle, 다빈치 상시 10% 결제일 캐시백
이용횟수 및 전월실적 제한 없음
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외
상품권(선불카드) 구매시 제외', '카페 20% 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 매장구입시 2천원 결제일 캐시백
교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백
건당 4만원 이상 결제시 할인 적용
토익응시료 2천원 결제일 캐시백
※ 서적할인, 토익응시료 할인 합산 연 6회 제공', '서점 2000원 캐시백', NULL, '
상기 전월 이용실적은 해당 대구은행 YOUNG PLUS(Y+)체크카드로 전월(결제일 관계없이 1일~말일) 국내가맹점 이용실적(선불교통충전금액,교통요금,제세공과금,APT관리비,대학등록금 제외) 입니다.
Y+체크카드 신규발급 회원은 발급월 포함하여 2개월간 이용금액에 상관없이 최소 구간 서비스를 제공하며, 전월실적이 최소구간 이상인 경우 해당상위 기준을 적용 합니다.
Y+체크카드 월간통합할인한도는 전월실적에 따라 매월 변경 적용되며, 익월로 이월되거나 포인트 적립, 캐시백 등으로 전환되지 않습니다.

전월실적 20만원 이상 ~ 30만원 미만일 경우 월간 최대 1만원까지 할인
전월실적 30만원 이상 ~ 50만원 미만일 경우 월간 최대 2만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', '똑디체크카드(비교통)', '0', NULL, NULL, NULL, '1', 'CU, GS25 5% 할인(캐시백)
건당 1만원 이상 결제 시
일 1회, 월 최대 3,000원 할인
온라인 거래, 백화점/마트 등 입점매장, 상품권/기프트카드 구매, 선불카드 충전금액 할인 제외', '편의점 월 최대 3000원 할인', NULL, '1', '스타벅스, 이디야 5% 할인(캐시백)
건당 5천원 이상 결제 시
일 1회, 월 최대 3,000원 할인
백화점/마트 등 입점매장, 상품권/기프트카드 구매, 선불카드 충전금액 할인 제외', '카페 5% 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전월실적 30만원 이상일 경우 월간 최대 7,000원까지 할인', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', '카카오페이 체크카드', '0', NULL, NULL, NULL, '1', '편의점(CU,GS25,세븐일레븐,바이더웨이,미니스톱), 올리브영, GS왓슨스, 다이소 5% 결제일 캐시백
월 2회 할인 / 건당 1만원 이상 결제시
상품권 구매금액은 할인 제외', '편의점 5% 캐시백', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '
전월실적 10만원 이상 ~ 20만원 미만일 경우 월간 최대 3,000원까지 할인
전월실적 20만원 이상 ~ 40만원 미만일 경우 월간 최대 6,000원까지 할인', '전월실적 10만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', 'Y+ (영플러스) 체크카드(대경교통)', '0', NULL, NULL, NULL, '1', 'CU, GS25 5% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 1,000원 할인
서비스 제공처 통합 월 3회', '편의점 1000원 할인', NULL, '1', '스타벅스 20% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 4,000원 할인
서비스 제공처 통합 월 3회
백화점, 할인점 입점 점포 제외/상품권(선불카드)구매시 제외
sleepless in seattle, 다빈치 상시 10% 결제일 캐시백
이용횟수 및 전월실적 제한 없음', '카페 20% 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 매장구입시 2천원 결제일 캐시백
교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백
건당 4만원 이상 결제시 할인 적용
토익응시료 2천원 결제일 캐시백
서적할인,토익응시료 할인 합산 연 6회 제공', '서점 2000원 캐시백', NULL, '상기 전월 이용실적은 해당 대구은행 YOUNG PLUS(Y+)체크카드로 전월(결제일 관계없이 1일~말일) 국내가맹점 이용실적(선불교통충전금액,교통요금,제세공과금,APT관리비,대학등록금 제외) 입니다.
Y+체크카드 신규발급 회원은 발급월 포함하여 2개월간 이용금액에 상관없이 최소구간 서비스를 제공하며, 전월실적이 최소구간 이상인 경우 해당상위 기준을 적용합니다.
Y+체크카드 월간통합할인한도는 전월실적에 따라 매월 변경 적용되며, 익월로 이월되거나 포인트 적립, 캐시백 등으로 전환되지 않습니다.

전월실적 20만원 이상 ~ 30만원 미만일 경우 월간 최대 1만원까지 할인
전월실적 30만원 이상 ~ 50만원 미만일 경우 월간 최대 2만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', 'Y+(영플러스)체크카드', '0', NULL, NULL, NULL, '1', 'CU, GS25 5% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 1,000원 할인
서비스 제공처 통합 월 3회', '편의점 1000원 할인', NULL, '1', '스타벅스 20% 결제일 캐시백
건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용
1회 최대 4,000원 할인
서비스 제공처 통합 월 3회
백화점, 할인점 입점 점포 제외/상품권(선불카드)구매시 제외
sleepless in seattle, 다빈치 상시 10% 결제일 캐시백
이용횟수 및 전월실적 제한 없음', '카페 20% 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 매장구입시 2천원 결제일 캐시백
교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백
건당 4만원 이상 결제시 할인 적용
토익응시료 2천원 결제일 캐시백
서적할인,토익응시료 할인 합산 연 6회 제공', '서점 2000원 캐시백', NULL, 'Y+체크카드의 모든 서비스는 전월(1일~말일) 국내가맹점 이용실적이 20만원 이상인 경우 제공됩니다.
신규발급 월 포함 익월 말일까지는 전월 이용실적을 20만원으로 간주하여 서비스를 제공합니다.
단, 금융수수료감면서비스 및 놀이공원 할인서비스, 국제선 항공권 10% 할인서비스는 제외됩니다.
시애틀, 다빈치 커피할인, 여행할인, 국내면세점 할인쿠폰은 전월실적에 따른 서비스 제한 없이 제공됩니다.

전월실적 20만원 이상 ~ 30만원 미만일 경우 월간 최대 1만원까지 할인
전월실적 30만원 이상 ~ 50만원 미만일 경우 월간 최대 2만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('대구은행(IM뱅크)', '대백 플러스 체크카드(비교통)', '0', NULL, NULL, NULL, '1', 'GS25, 베스킨라빈스, 던킨도너츠 5% 결제일 캐시백
월 2회, 1회 최대 1,000원
건당 최소 1만원이상 결제 시
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외/상품권(선불카드) 구매 시 제외', '편의점 1000원 할인', NULL, '1', '스타벅스, 커피빈, 엔제리너스 10% 결제일 캐시백
일 1회, 월 2회, 건당 최대 1,500원, 월 3천원까지 할인
대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외/상품권(선불카드) 구매 시 제외', '카페 10% 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '대백플러스체크카드의 캐시백 서비스는 전월(1일~말일) 국내가맹점 이용실적이 20만원 이상인 경우 제공되며, 카드 발급 등록월 포함 익월말까지는 전월 이용실적을 20만원으로 간주하여 서비스를 제공합니다.
전월 이용실적 산정시 선불교통충전금액, 제세공과금, APT관리비, 대학등록금은 제외됩니다.

전월실적 20만원 이상 ~ 50만원 미만일 경우 월간 최대 1만원까지 할인', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '트래블러스', '1', '철도 2만원 이상 이용 5,000원 환급 할인', '철도 2만원 이상 이용 5,000원 환급 할인', NULL, '0', NULL, NULL, NULL, '1', '커피음료전문점 업종에서 5천원 이상 이용시 1,000원 환급할인
', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '20만원이상', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '트래블러스_토심이', '1', '철도 2만원 이상 이용 5,000원 환급 할인', '철도 2만원 이상 이용 5,000원 환급 할인', NULL, '0', NULL, NULL, NULL, '1', '커피음료전문점 업종에서 5천원 이상 이용시 1,000원 환급할인
', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '20만원이상', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '첵첵_마루는강쥐', '1', '대중교통(버스/지하철)1천원
이용금액 건당 3만원 이상 시', '대중교통 1천원 할인', NULL, '1', '편의점(씨유)1천원
이용금액 건당 1만원 이상 시', '편의점 1000원 할인', NULL, '1', '커피(스타벅스) 1천원
이용금액 건당 1만원 이상 시', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '온라인서점(교보문고/YES24) 1천원
이용금액 건당 2만원 이상 시', '서점 1000원 할인', NULL, '30만원 이상 60만원 미만
', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '첵첵_토심이', '1', '대중교통(버스/지하철)1천원
이용금액 건당 3만원 이상 시', '대중교통 1천원 할인', NULL, '1', '편의점(씨유)1천원
이용금액 건당 1만원 이상 시', '편의점 1000원 할인', NULL, '1', '커피(스타벅스) 1천원
이용금액 건당 1만원 이상 시', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '온라인서점(교보문고/YES24) 1천원
이용금액 건당 2만원 이상 시', '서점 1000원 할인', NULL, '30만원 이상 60만원 미만
', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '노리2', '0', NULL, NULL, NULL, '1', '편의점(씨유,GS25)2천원', '편의점(씨유,GS25)2천원', NULL, '1', '커피(스타벅스) 3천원
', '카페 3000원 할인', NULL, '0', '넷플릭스, 유튜브 프리미엄 2,000원', 'OTT 2000 원 할인', NULL, '0', NULL, NULL, NULL, '20만원이상
할인통합한도 2만원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '노리2_글로벌', '0', NULL, NULL, NULL, '1', '편의점(씨유,GS25)2천원', '편의점(씨유,GS25)2천원', NULL, '1', '커피(스타벅스) 3천원
', '카페 3000원 할인', NULL, '0', '넷플릭스, 유튜브 프리미엄 2,000원', 'OTT 2000 원 할인', NULL, '0', NULL, NULL, NULL, '20만원이상
할인통합한도 2만원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '우리동네_키뮤', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '20만원이상1만원
30만원이상 1만5천원 통합할인 한도', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '우리동네', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '20만원이상1만원
30만원이상 1만5천원 통합할인 한도', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '노리_펭수', '1', '대중교통(버스/지하철) 월최대 2만원
30만원 이상 시', '대중교통 월 최대 2만원 할인', NULL, '1', '편의점(GS25) 건당 최대 2만원
30만원이상시', '편의점 최대 2만원 할인', NULL, '1', '스타벅스 건당 최대 2만원
30만원이상시', '카페 최대 2만원 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 2만원
30만원이상시', '서점 2만원 할인', '1', '20만원 이상 1만원
30만원 이상 2만원
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '노리', '1', '대중교통(버스/지하철) 월최대 2만원
30만원 이상 시', '대중교통 월 최대 2만원 할인', NULL, '1', '편의점(GS25) 건당 최대 2만원
30만원이상시', '편의점 최대 2만원 할인', NULL, '1', '스타벅스 건당 최대 2만원
30만원이상시', '카페 최대 2만원 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 2만원
30만원이상시', '서점 2만원 할인', '2', '20만원 이상 1만원
30만원 이상 2만원
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '첵첵', '1', '대중교통(버스/지하철)1천원
이용금액 건당 3만원 이상 시', '대중교통 1천원 할인', NULL, '1', '편의점(씨유)1천원
이용금액 건당 1만원 이상 시', '편의점 1000원 할인', NULL, '1', '커피(스타벅스) 1천원
이용금액 건당 1만원 이상 시', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '온라인서점(교보문고/YES24) 1천원
이용금액 건당 2만원 이상 시', '서점 1000원 할인', NULL, '30만원 이상 60만원 미만
', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '첵첵_위글위글', '1', '대중교통(버스/지하철)1천원
이용금액 건당 3만원 이상 시', '대중교통 1천원 할인', NULL, '1', '편의점(씨유)1천원
이용금액 건당 1만원 이상 시', '편의점 1000원 할인', NULL, '1', '커피(스타벅스) 1천원
이용금액 건당 1만원 이상 시', '카페 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '온라인서점(교보문고/YES24) 1천원
이용금액 건당 2만원 이상 시', '서점 1000원 할인', NULL, '30만원 이상 60만원 미만
', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '청춘대로싱글', '1', '대중교통(버스/지하철)2천원', '대중교통 1천원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원 이상 50만원 미만
', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '노리_펭수2', '1', '대중교통(버스/지하철) 월최대 2만원
30만원 이상 시', '대중교통 월 최대 2만원 할인', NULL, '1', '편의점(GS25) 건당 최대 2만원
30만원이상시', '편의점 최대 2만원 할인', NULL, '1', '스타벅스 건당 최대 2만원
30만원이상시', '카페 최대 2만원 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 2만원
30만원이상시', '서점 2만원 할인', '3', '20만원 이상 1만원
30만원 이상 2만원
', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '충무(홀로)', '1', '대중교통(버스/지하철) 1,500원
30만원 이상 시', '대중교통 1500원 할인', NULL, '0', NULL, NULL, NULL, '1', '커피 5천원
30만원이상시', '카페 5000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상 5천원', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '새로이', '0', NULL, NULL, NULL, '1', '편의점(GS25) 건당 최대 2천원
30만원이상시', '편의점 최대 2000원 할인', NULL, '1', '스타벅스 건당 최대 2천원
30만원이상시', '카페 2000원 할인', NULL, '1', '넷플릭스, 웨이브 2천원', 'OTT 2000 원 할인', NULL, '1', '교보문고 2천원
30만원이상시', '서점 2000원 할인', NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '민', '1', '대중교통(버스/지하철) 월최대 만원
30만원 이상 시', '대중교통 월 최대 1만원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '음', '1', '대중교통(버스/지하철) 1,500원
30만원 이상 시', '대중교통 1500원 할인', NULL, '0', NULL, NULL, NULL, '1', '커피 5천원
30만원이상시', '카페 5000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '해피리워드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '10만원이상', '전월실적 10만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', 'LiivM', '0', NULL, NULL, NULL, '1', '편의점(CU) 2천원', '편의점(CU) 2천원', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', 'LGU+', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스 건당 최대 2천원
30만원이상시', '카페 2000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '해외에선', '0', NULL, NULL, NULL, '1', '편의점(GS25) 건당 최대 2천원
30만원이상시', '편의점 최대 2000원 할인', NULL, '1', '스타벅스 건당 최대 2만원
30만원이상시', '카페 2000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '정', '1', '대중교통(버스/지하철) 1,500원
30만원 이상 시', '대중교통 1500원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '스타', '1', '대중교통(버스/지하철) 월최대 1만원
30만원 이상 시', '대중교통 1000원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '교보문고 1만원
30만원이상시', '서점 1만원 할인', '5', '20만원이상 5천원
30만원이상 만원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '쏘영', '1', '대중교통(버스/지하철) 월최대 1천원
5만원 이상 시', '대중교통 1000원 할인', NULL, '1', '편의점(GS25,CU) 건당 최대 1천원
5원이상시', '편의점 최대 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '멜론, YouTube Premium 1천원
5만원이상', 'OTT 1000원 할인', NULL, '0', NULL, NULL, NULL, '5만원이상 5천원', '전월실적 5만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '샘_쏘영', '1', '대중교통(버스/지하철) 월최대 1천원
5만원 이상 시', '대중교통 1000원 할인', NULL, '1', '편의점(GS25,CU) 건당 최대 1천원
5원이상시', '편의점 최대 1000원 할인', NULL, '0', NULL, NULL, NULL, '1', '멜론, YouTube Premium 1천원
5만원이상', 'OTT 1000원 할인', NULL, '0', NULL, NULL, NULL, '5만원이상 5천원', '전월실적 5만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '훈', '1', '대중교통(버스/지하철) 1,500원
30만원 이상 시', '대중교통 1500원 할인', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '서점 5천원
30만원이상시', '서점 5천원 할인', NULL, '30만원 이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '레고랜드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '그린재킷', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '30만원이상 통합한도 만원', '전월실적 30만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('국민카드', '티머니노리학생증', '1', '대중교통(버스/지하철) 2만원
30만원 이상 시', '대중교통 2만원 할인', NULL, '0', NULL, NULL, NULL, '1', '스타벅스 건당 최대 2만원
30만원이상시', '카페 2만원 할인', NULL, '0', NULL, NULL, NULL, '1', '교보문고 2만원
30만원이상시', '서점 2만원 할인', '4', '20만원이상 통합한도 만원
30만원이상 통합한도 2만원', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', 'NH20해봄
체크카드', '1', '대중교통(버스/지하철) 10% 할인
- 월 이용금액 2만원 이상시(월 최대 3천원)
- 후볼교통 이용건에, 시외 고속 제외', NULL, NULL, '1', 'GS 25 5% 할인
- 건당 이용금액 1만원 이상 천운할인
(월 최대 3천원)
', NULL, NULL, '1', '스타벅스, 이디야 20 % 할인
- 건당 이용금액 1만원 이상시
(월 최대 3천원 할인)
- 백화점, 쇼핑몰 내 입점매장은
할인서비스가 제외될수 있음', NULL, NULL, '0', NULL, NULL, NULL, '1', '온라인 서점, 어학시험
온라인 서점: YES24, 인터파크도서, 알라딘, 교보문고, 반디앤루니스, 영풍문고

- 어학시험: 토익(스피킹), 텝스, JPT, KPE

- 건당 이용금액 2만원 이상 시 최대 2,500원 할인(월 최대 8,000원 할인)※ 어학시험은 월 1회, 연 6회 제공', '서점 25원 할인', NULL, '전원실적 20만원 이상', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', 'K패스카드', '1', '대중교통(버스/지하철) 10% 캐시백
- 버스(시내, 마을,광역,고속시외) 및 지하철
', NULL, NULL, '1', 'GS 25 / CU 5% 캐시백
- 월 1천원(2회한)', NULL, NULL, '1', '스타벅스/ 이디야
커피빈/ 투썸플레이스
5% 캐시백(월 3천원, 1회한)', NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '전원실적 20만원 이상', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', '올리 POINT 체크카드', '0', '대중교통(택시/지하철/시내외버스)
- 실물카드 후불교통 결제건에 한함', NULL, NULL, '1', 'GS25, CU, 세븐일레븐', NULL, NULL, '1', '스타벅스, 이디야, 투썸', NULL, NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '적립한도 없이 0.2% - 0.7% NH포인트 적립
전원실적 없음', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', '올바른 POINT 체크카드', '0', '대중교통(택시/지하철/시내외버스)
- 실물카드 후불교통 결제건에 한함', '대중 교통 0.3% 적립', NULL, '1', 'GS25, CU
- 0.3% (전원실적 30만원이상)', '편의점 0.3% 적립', NULL, '1', '스타벅스, 파리바게뜨
- 0.3% 적립 (전원실적 30만원이상)', '커피숍 0.3% 적립', NULL, '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '아래 6개 영역 중 당월(1일 - 말일) - 공통
이용금액 1위/2위 영역은 
기본적립의 3배/2배 자동 적용
- 1위 : 기본적립 0.2% + 추가적립 0.4%
= 총 0.6% 적립
- 2위 : 기본 0.2% + 추가적립 0.4% 
= 총 0.4% 적립
- 기본은 0.2% 국내/외 이용가맹점 NH포인트 적립
- 전원실적 20만원이상 : 월 적립한도 5천 NH포인트
- 전원실적 조건 및 적립한도는 추가적립에 대해서만 적용', '전월실적 20만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', '올바른 NEW HAVE 체크카드', '1', '- 교통카드 이용대금은 당월이용금액이 다음달 이용실적에 반영
- 교통카드 이용금액 자동이체금액은 매출표 접수일 기준으로 해당 월 이용금액에 합산', '대중 교통 0.3% 할인', NULL, '1', 'GS25, CU, 세븐일레븐', '편의점 0.3% 할인', NULL, '1', '스타벅스, 이디야, 투썸', '커피숍 0.3% 할인', NULL, '1', '유튜브 프리미엄, 넷플릭스,
웨이브, 멜론 정기결제', 'OTT 0.2% 청구할인', NULL, '0', NULL, NULL, NULL, '국내, 외 전 가맹점 0.2% - 0.3% 청구할인
- 전원실적 50만원 미만
: 0.2% 기본청구 할인
- 전원실적 50만원 이상
: 0.3% 청구할인
청구할인 서비스는 2만원 이상 이용건 한에서 제공
- 면세점 및 구매대행 가맹점도 국내 가맹점인 경우 동일 서비스가 제공', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', 'BAZIC(베이직) 체크카드', '1', '- 교통카드 이용대금은 당월이용금액이 다음달 이용실적에 반영
- 교통카드 이용금액 자동이체금액은 매출표 접수일 기준으로 해당 월 이용금액에 합산', '대중 교통 0.3% 할인', NULL, '1', 'GS25, CU, 세븐일레븐', '편의점 0.3% 할인', NULL, '1', '스타벅스, 이디야, 투썸', '커피숍 0.3% 할인', NULL, '1', '유튜브 프리미엄, 넷플릭스,
웨이브, 멜론 정기결제', 'OTT 0.2% 청구할인', NULL, '0', NULL, NULL, NULL, '국내, 외 전 가맹점 0.2% - 0.3% 청구할인
- 전원실적 50만원 미만
: 0.2% 기본청구 할인
- 전원실적 50만원 이상
: 0.3% 청구할인
청구할인 서비스는 2만원 이상 이용건 한에서 제공
- 면세점 및 구매대행 가맹점도 국내 가맹점인 경우 동일 서비스가 제공', '전월실적 없음', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', 'NH올원 체크카드', '1', '- 교통카드 이용대금은 당월이용금액이 다음달 이용실적에 반영
- 교통카드 이용금액 자동이체금액은 매출표 접수일 기준으로 해당 월 이용금액에 합산', '대중 교통 0.3% 할인', NULL, '1', 'GS25, CU, 세븐일레븐', '편의점 0.3% 할인', NULL, '1', '스타벅스, 이디야, 투썸', '커피숍 0.3% 할인', NULL, '1', '유튜브 프리미엄, 넷플릭스,
웨이브, 멜론 정기결제', 'OTT 0.2% 청구할인', NULL, '0', NULL, NULL, NULL, '전원실적 상관없이
0.2 - 0.4% 적립
- 건별 이용금액 2만원 이상 : 0.2% 적립
- 건별 이용금액 10만원 이상 : 0.4% 적립
- 해외이용액 : 0.4% 적립

즉시결제서비스(신용 + 체크)', '전월실적 10만원 이상', '1');
INSERT INTO card (card_corp, card_name, traffic_ox, traffic_details, card_traffic, traffic_ranking, store_ox, store_details, card_store, store_ranking, cafe_ox, cafe_details, card_cafe, cafe_ranking, sub_ox, sub_details, card_sub, sub_ranking, book_ox, book_details, card_book, book_ranking, performance_details, performance, performance_ox) VALUES ('농협카드', '어피치 스윗 체크카드', '0', NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', '스타벅스, 투썸, 커피빈
- 4% 할인
- 오프라인 매장 결제시 할인 제공
', '커피숍 4% 할인', NULL, '1', 'X유튜브 프리미엄, 넷플릭스
, 유료 어플리케이션
- 5% 할인
- 결제수단 혹은 지불방법관리에 해당카드 등록 이용시 제공', 'OTT 5% 할인', '5', '0', NULL, NULL, NULL, '전원실적 30만원이상', '전월실적 30만원 이상', '1');

select*from card;