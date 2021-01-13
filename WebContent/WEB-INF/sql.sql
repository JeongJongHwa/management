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
	CO_YN BIT,          			-- 법인여부
	FOREIGN_YN BIT,          		-- 해외여부
	TAX_YN BIT,          			-- 과세구분
	COUNTRY_ENG CHAR(20),           -- 국가_영문
	COUNTRY_KOR CHAR(20),           -- 국가_한글
	SPECIAL_RELATION BIT,           -- 특수관계자
	TRADE_STOP BIT,          		-- 거래중지
	CONTRACT_PERIOD_S DATE,         -- 계약기간(시작)
	CONTRACT_PERIOD_E DATE,         -- 계약기간(끝)
	REGI_INFO_MAN CHAR(10),         -- 등록정보(등록인)
	REGI_INFO_DATE DATE,          	-- 등록정보(등록날짜)
	MODI_INFO_MAN CHAR(10),         -- 변경정보(변경인)
	MODI_INFO_DATE DATE,         	-- 변경정보(변경날짜)
	PRIMARY KEY(BUSI_NUM,CUSTOM)
);

CREATE TABLE ACCOUNT(
	BUSI_NUM CHAR(20) PRIMARY KEY,  -- 사업자번호
	FACTORY CHAR(20),          		-- 사무소
	TRADE_BANK CHAR(20),          	-- 거래은행
	ACCOUNT_NUM CHAR(20)			-- 계좌번호
);


