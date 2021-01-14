CREATE TABLE CUSTOM (
	BUSI_NUM CHAR(20),          	-- 사업자번호	
	CUSTOM CHAR(20),          		-- 거래처명
	SHORT CHAR(20),          		-- 약칭	
	CEO CHAR(10),          			-- 대표자
	CHARGE_PERSON CHAR(10),         -- 담당자
	BUSI_CONDITION CHAR(10),        -- 업태
	ITEM CHAR(10),          		-- 종목
	POST_NUM CHAR(10),          	-- 우편번호
	ADDR1 VARCHAR(80),          	-- 주소1
	ADDR2 VARCHAR(80),          	-- 주소2
	TEL CHAR(10),          			-- 전화번호
	FAX CHAR(10),          			-- 팩스번호
	HOMEPAGE CHAR(20),          	-- 홈페이지
	CO_YN BIT,          			-- 법인여부  0 법인 1 개인
	FOREIGN_YN BIT,          		-- 해외여부  0 국내 1  해외
	TAX_YN BIT,          			-- 과세구분  0 과세 1 비과세
	COUNTRY_ENG CHAR(20),           -- 국가_영문
	COUNTRY_KOR CHAR(20),           -- 국가_한글
	SPECIAL_RELATION BIT,           -- 특수관계자  yes 1  no 0
	TRADE_STOP BIT,          		-- 거래중지    yes 1 no 0
	CONTRACT_PERIOD_S DATE,         -- 계약기간(시작)
	CONTRACT_PERIOD_E DATE,         -- 계약기간(끝)
	REGI_INFO_MAN CHAR(10),         -- 등록정보(등록인)
	REGI_INFO_DATE DATE,          	-- 등록정보(등록날짜)
	MODI_INFO_MAN CHAR(10),         -- 변경정보(변경인)
	MODI_INFO_DATE DATE,         	-- 변경정보(변경날짜)
	PRIMARY KEY(BUSI_NUM,CUSTOM)
);

INSERT INTO CUSTOM VALUES( '111-11-11111' , '동아제약' , '동아' , '동아사장' , '동아부장' ,
'A' , '타이레놀' , '357-12' , '서울 ...' , 'xx빌딩 1401호 ',
'025677891','025677412','ehddk123@ehkt.com',1,1,
1,'KOR','대한민국',0,1,'2021-01-14 10:41:11',
'2021-01-14 10:41:11','동아사장','2021-01-14 10:41:11','동아부장','2021-01-14 10:41:11' );
INSERT INTO CUSTOM VALUES( '123-22-2345' , 'asdf동아제약' , 'asdf동아' , '동아사장' , '동아부장' ,
'A' , '타이레놀' , '357-12' , '서울 ...' , 'xx빌딩 1401호 ',
'025677891','025677412','ehddk123@ehkt.com',1,1,
1,'KOR','대한민국',1,1,'2021-01-15 10:41:11',
'2021-01-15 10:41:11','동아사장','2021-01-15 10:41:11','동아부장','2021-01-15 10:41:11' );
INSERT INTO CUSTOM VALUES( '111-12-23451' , '흥국제약' , '흥국' , 'ㅎㄱ사장' ,
'ㅎㄱ부장' , 'A' , '게보린' , '357-55' , '서울 ㅁㅁ...' ,
'흥국빌딩 1401호 ','026786631','021112222','흥국123@ehdd.com',0,
0,0,'KOR','대한민국',1,0,
'2021-01-16 10:41:11','2021-01-16 10:41:11','ㅎㄱ사장','2021-01-16 10:41:11','ㅎㄱ부장','2021-01-16 10:41:11' );

INSERT INTO CUSTOM VALUES( '12345' , '맛동산' , '흥국' , 'ㅎㄱ사장' ,
'ㅎㄱ부장' , 'A' , '게보린' , '357-55' , '서울 ㅁㅁ...' ,
'흥국빌딩 1401호 ','026786631','021112222','흥국123@ehdd.com',0,
0,0,'KOR','대한민국',1,0,
'2021-01-16 10:41:11','2021-01-16 10:41:11','ㅎㄱ사장','2021-01-16 10:41:11','ㅎㄱ부장','2021-01-16 10:41:11' );

CREATE TABLE ACCOUNT(
	BUSI_NUM CHAR(20) PRIMARY KEY,  -- 사업자번호
	FACTORY CHAR(20),          		-- 사무소
	TRADE_BANK CHAR(20),          	-- 거래은행
	ACCOUNT_NUM CHAR(20)			-- 계좌번호
);

INSERT INTO ACCOUNT VALUES( '111-11-11111','강서구어딘가','신한은행' ,'22-334-5345345');
INSERT INTO ACCOUNT VALUES( '123-22-2345','서구어딘가','국민은행' ,'11-222-33333');
INSERT INTO ACCOUNT VALUES( '111-12-23451','남서구어딘가','흥국은행' ,'5555-55-5555');
INSERT INTO ACCOUNT VALUES( '111-12-23452','남서구어asdf','asd은행' ,'5555-55-5555');



