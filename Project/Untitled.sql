show databases;

create database codingon default character set utf8 default collate utf8_general_ci;

use codingon;

create table visitor (
	id int primary key auto_increment,
    name varchar(10) not null,
    comment mediumtext
);

desc visitor;

-- 데이터 추가
insert into visitor values
	(null, '홍길동', '내가 왔다.'), 
    (null, '이찬혁', '으라차차');

select * from visitor;

-- 사용자가 존재하면 삭제합니다.
DROP USER IF EXISTS 'user'@'%';


-- user 계정 생성
create user 'user'@'%' identified by '12345678'; -- 계정 추가
grant all privileges on *.* to 'user'@'%' with grant option; -- 새로운 계정에 권한 부여
flush privileges; -- 캐시 지우고 새로운 설정 적용

alter user 'user'@'%' identified with mysql_native_password by '12345678'; -- 인증 방식 변경

select * from mysql.user; -- 계정 생성 확인

SHOW tables;

DROP TABLE user;
DROP TABLE Card;
DROP TABLE Comment;
DROP TABLE CardLike;

DESC card;

INSERT INTO Card (card_corp, card_name, card_image, card_traffic, traffic_details, traffic_ox, traffic_ranking, card_store, store_details, store_ox, store_ranking, card_cafe, cafe_details, cafe_ox, cafe_ranking, card_sub, sub_details, sub_ox, sub_ranking, card_book, book_details, book_ox, book_ranking, performance, performance_details, performance_ox) VALUES
-- 교통 혜택 top 3
('신한카드', 'K-패스 신한카드 체크', NULL, '대중교통 이용시 10% 할인', '대중교통(버스, 지하철) 이용 시 10% 결제일 할인. 후불교통 기능을 이용한 터치(RF) 거래 시 할인. 고속버스, 공항버스, 시외버스, 공항철도는 할인되지 않음. 할인한도: 20만원 이상 50만원 미만 시 2천원, 50만원 이상 시 5천원', true, 1, '편의점 2% 결제일 할인', '편의점: GS25, CU. 오프라인 매장에 한하여 할인되며, 인터넷이나 모바일 앱을 통한 온라인 거래는 할인되지 않음', true, NULL, '커피전문점 2% 결제일 할인', '커피전문점: 스타벅스, 메가MGC커피, 매머드커피. 오프라인 매장 및 공식 앱으로 결제 시 할인. 백화점, 할인점 등 입점 매장 및 상품권, 선불카드 구입/충전 제외', true, NULL, 'OTT 2% 결제일 할인', 'OTT: 넷플릭스, 유튜브 프리미엄. 공식 홈페이지에 직접 접속하여 신청한 정기결제(자동이체) 이용 시 적용. 1회성 일반구매 결제, 구글 플레이/애플 앱스토어 등 앱마켓을 통한 인앱결제, 통신요금 포함(합산) 결제는 제외', true, NULL, '', '', false, NULL, '통합할인한도', '전월 이용금액 20만원 이상 시 2천원, 50만원 이상 시 5천원', true),
('하나카드', 'K-패스 하나 체크카드', NULL, '대중교통 이용금액 10% 캐시백', '대중교통(버스, 지하철). 캐시백 지급률: 10%. 캐시백 조건: 월 3만원 이상. 실적 구간별 월 캐시백 한도: 30만원 이상 시 3천원. 대중교통 캐시백 대상: 시내버스, 마을버스, 광역버스, 공항버스, 지하철, 공항철도. 대중교통 캐시백 제외대상: 시외버스, 고속버스', true, 2, '', '', false, NULL, '커피 업종 이용 시 1% 캐시백', '커피 업종. 캐시백 지급률: 1%. 실적 구간별 월 캐시백 한도: 30만원 이상 시 5천원. 국내 가맹점 이용 건에 한해 캐시백 서비스 제공. 대형시설물 입점점포(백화점, 할인점, 아울렛, 쇼핑몰, 휴게소, 호텔, 리조트, 공항, 역사) 및 임대매장은 서비스 제외. 배달앱 등을 통한 주문 결제와 상품권 구입, 선불카드(선불전자 지급수단) 충전은 서비스 제외', true, NULL, '', '', false, NULL, '', '', false, NULL, '지난달 1일부터 말일(승인 시점 기준)', '전월 1일부터 말일까지의 국내외 일시불/할부 이용금액 기준으로 30만원/60만원 이상 시 서비스 차등 제공. 최초카드 사용등록일 부터 다음달말일까지는 지난달 카드 실적이 30만원 미만이어도 30만원 이상 60만원 미만 기준으로 제공', true),
('BC(기업)카드', '[IBK기업은행] K-패스(체크)', NULL, '대중교통 건당 100원 할인', '후불교통카드로 이용한 건에 한함 (환승요금 제외). 매출표 접수일 기준으로 월 최대 1천원 할인(월 10회 한도)', true, 3, '편의점(GS25, CU, 세븐일레븐, 올리브영) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 온라인(간편결제 등) 결제 건은 할인 제외', true, NULL, '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 엔제리너스, 투썸플레이스, 할리스, 달.콤) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 현장결제와 각 커피 브랜드의 공식앱을 통한 온라인 결제 건에 한함. 커피 브랜드의 상품권, 선불카드 구입/충전 제외. 백화점 및 할인(아울렛)점 입점 매장은 제외', true, NULL, '', '', false, NULL, '', '', false, NULL, '전월 이용실적이 30만원 이상인 경우 제공', '전월 이용실적이 30만원 이상인 경우 제공', true),
-- 편의점 혜택 top 3
('신한카드', '신한카드 Pick E 체크', NULL, '', '', false, NULL, '4대 편의점 이용 시 10% 적립', '4대 편의점: GS25, CU, 세븐일레븐, 이마트24. 통합 일 1회, 월 3회, 1회 최대 1천 포인트 적립. 오프라인 매장에 한하여 적용. 온라인 매장, 백화점, 할인점 등 입점 매장은 서비스 제공되지 않음', true, 1, '커피 업종 이용 시 10% 적립', '커피전문점 업종. 통합 일 1회, 월 3회, 1회 최대 1천 포인트 적립. 신한카드 가맹점 업종 기준 적용. 백화점, 할인점 등 입점 매장 및 상품권, 선불카드 구입/충전 건은 할인 제외', true, NULL, '', '', false, NULL, '', '', false, NULL, '전월 이용금액 20만원 이상 시 제공', '생활 영역 공통 유의사항. 생활 영역 적립서비스 이용을 통한 포인트는 마이신한포인트로 적립. 전월 이용금액 20만원 이상 시 서비스 제공', true),
('BC(기업)카드', '[IBK기업은행] K-패스(체크)', NULL, '대중교통 건당 100원 할인', '후불교통카드로 이용한 건에 한함 (환승요금 제외). 매출표 접수일 기준으로 월 최대 1천원 할인(월 10회 한도)', true, NULL, '편의점(GS25, CU, 세븐일레븐, 올리브영) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 온라인(간편결제 등) 결제 건은 할인 제외', true, 2, '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 엔제리너스, 투썸플레이스, 할리스, 달.콤) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 현장결제와 각 커피 브랜드의 공식앱을 통한 온라인 결제 건에 한함. 커피 브랜드의 상품권, 선불카드 구입/충전 제외. 백화점 및 할인(아울렛)점 입점 매장은 제외', true, NULL, '', '', false, NULL, '', '', false, NULL, '전월 이용실적이 30만원 이상인 경우 제공', '전월 이용실적이 30만원 이상인 경우 제공', true),
('국민카드', '노리2', NULL, '', '', false, NULL, '편의점(CU,GS25) 2천원', '편의점(CU,GS25) 2천원 할인', true, 3, '커피(스타벅스) 3천원 할인', '커피(스타벅스) 3천원 할인', true, NULL, '넷플릭스, 유튜브 프리미엄 2,000원 할인', 'OTT 2000 원 할인', true, NULL, '', '', false, NULL, '전월 국내 가맹점 이용금액 20만원 이상 시 제공', '전월 국내 가맹점 이용금액 20만원 이상 시 제공. 할인통합한도 2만원', true),
-- 카페 혜택 top 3
('BC(기업)카드', '[IBK기업은행] 알토스카드', NULL, '', '', false, NULL, '', '', false, NULL, '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 할리스, 엔제리너스, 달콤커피) 20% 할인', '통합 1일 1회, 월 3회, 1회 이용금액 2만원 한도. 백화점 및 할인(아울렛)점 입점 매장은 제외될 수 있음. 할인금액은 월간 통합할인한도 이내에서 적용. 상품권(선불카드 포함)구입 및 충전금액은 할인 제외', true, 1, '', '', false, NULL, '', '', false, NULL, '전월 이용실적 20만원 이상 시 제공', '전월 이용실적 20만원 이상 시 제공', true),
('대구은행(IM뱅크)', 'Master Y+(영플러스) 체크카드', NULL, '', '', false, NULL, 'CU, GS 25 5% 결제일 캐시백', '건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용. 1회 최대 1,000원 할인. 서비스 제공처 통합 월 3회', true, NULL, '스타벅스 20% 결제일 캐시백', '건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용. 1회 최대 4,000원 할인. 서비스 제공처 통합 월 3회. 대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외. 상품권(선불카드) 구매 시 제외', true, 2, '', '', false, NULL, '교보문고 매장구입시 2천원 결제일 캐시백', '교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백. 건당 4만원 이상 결제 시 할인 적용. 토익응시료 2천원 결제일 캐시백. 서적할인,토익응시료 할인 합산 연 6회 제공', true, NULL, '전월실적 20만원 이상', '상기 전월 이용실적은 해당 대구은행 YOUNG PLUS(Y+)체크카드로 전월(결제일 관계없이 1일~말일) 국내가맹점 이용실적(선불교통충전금액,교통요금,제세공과금,APT관리비,대학등록금 제외) 입니다. Y+체크카드 신규발급 회원은 발급월 포함하여 2개월간 이용금액에 상관없이 최소 구간 서비스를 제공하며, 전월실적이 최소구간 이상인 경우 해당상위 기준을 적용 합니다. Y+체크카드 월간통합할인한도는 전월실적에 따라 매월 변경 적용되며, 익월로 이월되거나 포인트 적립, 캐시백 등으로 전환되지 않습니다. 전월실적 20만원 이상 ~ 30만원 미만일 경우 월간 최대 1만원까지 할인. 전월실적 30만원 이상 ~ 50만원 미만일 경우 월간 최대 2만원까지 할인', true),
('BC(기업)카드', '[IBK기업은행] K-패스(체크)', NULL, '대중교통 건당 100원 할인', '후불교통카드로 이용한 건에 한함 (환승요금 제외). 매출표 접수일 기준으로 월 최대 1천원 할인(월 10회 한도)', true, NULL, '편의점(GS25, CU, 세븐일레븐, 올리브영) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 온라인(간편결제 등) 결제 건은 할인 제외', true, 3, '커피(스타벅스, 커피빈, 카페베네, 탐앤탐스, 엔제리너스, 투썸플레이스, 할리스, 달.콤) 10% 할인', '통합 1일 1회, 월 2회, 1회 이용금액 1만원 한도. 현장결제와 각 커피 브랜드의 공식앱을 통한 온라인 결제 건에 한함. 커피 브랜드의 상품권, 선불카드 구입/충전 제외. 백화점 및 할인(아울렛)점 입점 매장은 제외', true, NULL, '', '', false, NULL, '', '', false, NULL, '전월 이용실적이 30만원 이상인 경우 제공', '전월 이용실적이 30만원 이상인 경우 제공', true),
-- 구독 혜택 top 3
('신한카드', 'K-패스 신한카드 체크', NULL, '대중교통 이용시 10% 할인', '대중교통(버스, 지하철) 이용 시 10% 결제일 할인. 후불교통 기능을 이용한 터치(RF) 거래 시 할인. 고속버스, 공항버스, 시외버스, 공항철도는 할인되지 않음. 할인한도: 20만원 이상 50만원 미만 시 2천원, 50만원 이상 시 5천원', true, NULL, '편의점 2% 결제일 할인', '편의점: GS25, CU. 오프라인 매장에 한하여 할인되며, 인터넷이나 모바일 앱을 통한 온라인 거래는 할인되지 않음', true, NULL, '커피전문점 2% 결제일 할인', '커피전문점: 스타벅스, 메가MGC커피, 매머드커피. 오프라인 매장 및 공식 앱으로 결제 시 할인. 백화점, 할인점 등 입점 매장 및 상품권, 선불카드 구입/충전 제외', true, NULL, 'OTT 2% 결제일 할인', 'OTT: 넷플릭스, 유튜브 프리미엄. 공식 홈페이지에 직접 접속하여 신청한 정기결제(자동이체) 이용 시 적용. 1회성 일반구매 결제, 구글 플레이/애플 앱스토어 등 앱마켓을 통한 인앱결제, 통신요금 포함(합산) 결제는 제외', true, 1, '', '', false, NULL, '통합할인한도', '전월 이용금액 20만원 이상 시 2천원, 50만원 이상 시 5천원', true),
('국민카드', '노리2', NULL, '', '', false, NULL, '편의점(CU,GS25) 2천원', '편의점(CU,GS25) 2천원 할인', true, NULL, '커피(스타벅스) 3천원 할인', '커피(스타벅스) 3천원 할인', true, NULL, '넷플릭스, 유튜브 프리미엄 2,000원 할인', 'OTT 2000 원 할인', true, 2, '', '', false, NULL, '전월 국내 가맹점 이용금액 20만원 이상 시 제공', '전월 국내 가맹점 이용금액 20만원 이상 시 제공. 할인통합한도 2만원', true),
('광주카드', '메가박스 체크카드', NULL, '대중교통 이용금액 5% 캐시백', '대중교통(시내버스, 지하철). 5% 캐시백. 최대 2천원', true, NULL, '편의점(CU, GS25, 세븐일레븐, 미니스톱, 이마트24) 5% 캐시백', '월 2회, 월 최대 2천원', true, NULL, '커피 전문점 5% 캐시백', '스타벅스(사이렌오더 포함), 할리스커피, 투썸플레이스, 엔제리너스 탐앤탐스, 이디야, 카페베네, 커피빈, 드롭탑. 월 2회, 월 최대 2천원', true, NULL, '핫트렌드 20% 캐시백', '넷플릭스, 멜론, 유튜브, 웨이브. 월 2회, 월 최대 3천원. 공식 앱 및 홈페이지를 통해 직접 신청한 정기결제 건에 한하여 제공', true, 3, '', '', false, NULL, '캐시백 서비스는 전월실적 40만원 이상 시 제공', '캐시백 서비스는 전월실적 40만원 이상 시 제공', true),
-- 서적 혜택 top 3
('신한카드', '신한카드 Hey Young 체크', NULL, '대중교통 이용금액 5% 캐시백', '대중교통 이용금액 5% 캐시백. 마을/시내/시외/공항버스/지하철(고속버스 제외). 후불교통기능을 이용한 터치(RF방식) 거래 시 적용. 월 최대 3천원 캐시백 제공', true, NULL, 'GS25 편의점 1천원 캐시백', '건당 1만원 이상 결제 시 1천원 캐시백(일 1회/월 5회 제공). 오프라인 매장에 한하여 적용. 인터넷이나 모바일 앱을 통한 온라인 거래는 제외. 온라인 매장, 백화점/할인점 등 입점 매장은 제외', true, NULL, '스타벅스 커피 1천원 캐시백', '건당 1만원 이상 결제 시 1천원 캐시백(일 1회/월 5회 제공). 백화점, 할인점 등 입점 매장 및 해외 스타벅스 가맹점, 상품권, 선물하기, 선불카드 구입/충전은 제외', true, NULL, '', '', false, NULL, '교보문고 매장구입시 2천원 결제일 캐시백', '교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백. 건당 4만원 이상 결제 시 할인 적용. 토익응시료 2천원 결제일 캐시백. 서적할인,토익응시료 할인 합산 연 6회 제공', true, 1, '통합 캐시백 한도', '전월 이용금액 20만원 이상 시 5천원', true),
('대구은행(IM뱅크)', 'Master Y+(영플러스) 체크카드', NULL, '', '', false, NULL, 'CU, GS 25 5% 결제일 캐시백', '건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용. 1회 최대 1,000원 할인. 서비스 제공처 통합 월 3회', true, NULL, '스타벅스 20% 결제일 캐시백', '건당 최소이용금액 1만원 이상, 최대 2만원까지 할인 적용. 1회 최대 4,000원 할인. 서비스 제공처 통합 월 3회. 대형마트, 백화점, 쇼핑몰, 역사 입점 점포 제외. 상품권(선불카드) 구매 시 제외', true, 2, '', '', false, NULL, '교보문고 매장구입시 2천원 결제일 캐시백', '교보문고 오프라인 매장에서 구매시 2천원 결제일 캐시백. 건당 4만원 이상 결제 시 할인 적용. 토익응시료 2천원 결제일 캐시백. 서적할인,토익응시료 할인 합산 연 6회 제공', true, NULL, '전월실적 20만원 이상', '상기 전월 이용실적은 해당 대구은행 YOUNG PLUS(Y+)체크카드로 전월(결제일 관계없이 1일~말일) 국내가맹점 이용실적(선불교통충전금액,교통요금,제세공과금,APT관리비,대학등록금 제외) 입니다. Y+체크카드 신규발급 회원은 발급월 포함하여 2개월간 이용금액에 상관없이 최소 구간 서비스를 제공하며, 전월실적이 최소구간 이상인 경우 해당상위 기준을 적용 합니다. Y+체크카드 월간통합할인한도는 전월실적에 따라 매월 변경 적용되며, 익월로 이월되거나 포인트 적립, 캐시백 등으로 전환되지 않습니다. 전월실적 20만원 이상 ~ 30만원 미만일 경우 월간 최대 1만원까지 할인. 전월실적 30만원 이상 ~ 50만원 미만일 경우 월간 최대 2만원까지 할인', true),
('하나카드', '리틀프렌즈 체크카드', NULL, '', '', false, NULL, '편의점(CU, GS25) 2천원 할인', '편의점(CU, GS25) 2천원 할인', true, 3, '커피(스타벅스) 3천원 할인', '커피(스타벅스) 3천원 할인', true, NULL, '넷플릭스, 유튜브 프리미엄 2,000원 할인', 'OTT 2000 원 할인', true, NULL, '', '', false, NULL, '전월 국내 가맹점 이용금액 20만원 이상 시 제공', '전월 국내 가맹점 이용금액 20만원 이상 시 제공. 할인통합한도 2만원', true);
