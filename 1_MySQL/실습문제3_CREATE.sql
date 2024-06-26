DROP TABLE rent;
DROP TABLE member;
DROP TABLE book;
DROP TABLE publisher;

-- 실습 문제
-- 도서관리 프로그램을 만들기 위한 테이블 만들기
CREATE table number(

);

-- 1. 출판사들에 대한 데이터를 담기 위한 출판사 테이블(publisher) 
--    컬럼 : pub_no(출판사번호) -- 기본 키
--           pub_name(출판사명) -- NOT NULL
--           phone(전화번호)
CREATE TABLE publisher(
	pub_no INT AUTO_INCREMENT PRIMARY KEY,
    pub_name VARCHAR(20) NOT NULL
    phoen VARCHAR(20)
);
INSERT INTO publisher(pub_name, phoen) VALUES ('프리렉')

-- 2. 도서들에 대한 데이터를 담기 위한 도서 테이블 (book)
--    컬럼 : bk_no (도서번호) -- 기본 키
--           bk_title (도서명) -- NOT NULL
--           bk_author(저자명) -- NOT NULL
--           bk_price(가격)
--           bk_pub_no(출판사 번호) -- 외래 키(publisher 테이블을 참조하도록)
--    조건 : 이때 참조하고 있는 부모 데이터 삭제 시 자식 데이터도 삭제 되도록 옵션 지정
CREATE TABLE book(
	bk_no INT PRIMARY KEY AUTO_INCREMENT,
    bk_title  VARCHAR(50) NOT NULL,
    bk_author VARCHAR(20) NOT NULL,
    bk_price  INT
    bk_pub_no  INT, 
    FOREIGN KEY pub_no_fk FOREIGN KEY (bk_pub_no) 
			REFERENCES publisher(pub_no) ON DELETE CASCADE
);
INSERT INTO book(bk_title, bk_author, bk_price, bk_pub_no)
VALUES('개발자를 위한 생각의 정리', '문서 작성법', '카이마이 미즈히로', 20000, 1);
INSERT INTO book(bk_title, bk_author, bk_price, bk_pub_no)
VALUES('1일 1로그 100일완성 IT지식, 문서 작성법', '카이마이 미즈히로', 20000, 1);
INSERT INTO book(bk_title, bk_author, bk_price, bk_pub_no)
VALUES('개발자를 위한 생각의 정리, 문서 작성법', '카이마이 미즈히로', 20000, 1);
INSERT INTO book(bk_title, bk_author, bk_price, bk_pub_no)
VALUES('개발자를 위한 생각의 정리, 문서 작성법', '카이마이 미즈히로', 20000, 1);
INSERT INTO book(bk_title, bk_author, bk_price, bk_pub_no)
VALUES('개발자를 위한 생각의 정리, 문서 작성법', '카이마이 미즈히로', 20000, 1);

SELECT * FROM book;

-- 3. 회원에 대한 데이터를 담기 위한 회원 테이블 (member)
--    컬럼 : member_no(회원번호) -- 기본 키
--           member_id(아이디)   -- 중복 금지
--           member_pwd(비밀번호) -- NOT NULL
--           member_name(회원명) -- NOT NULL
--           gender(성별)        -- 'M' 또는 'F'로 입력되도록 제한
--           address(주소)       
--           phone(연락처)       
--           status(탈퇴여부)     -- 기본값 'N' / 'Y' 혹은 'N'만 입력되도록 제약조건
--           enroll_date(가입일)  -- 기본값 현재날짜
CREATE TABLE member(
	member_no INT 
    member_id VARCHAR(20)
    member_pwd VARCHAR(20)
    member_name VARCHAR(20)
    gender CHAR(1)
    address VARCHAR(50)
    phone VARCHAR(20)
    status
-- 4. 도서를 대여한 회원에 대한 데이터를 담기 위한 대여 목록 테이블(rent)
--    컬럼 : rent_no(대여번호) -- 기본 키
--           rent_mem_no(대여 회원번호) -- 외래 키(member와 참조)
--           rent_book_no(대여 도서번호) -- 외래 키(book와 참조)
--           rent_date(대여일) -- 기본값 현재날짜
--    조건 : 이때 부모 데이터 삭제 시 NULL 값이 되도록 옵션 설정
CREATE TABLE rent(
	rent_no INT
	rent_mem_no INT
	rent_book_no INT,
	rent_date DATE DEFAULT (current_date
    
);
ALTER TABLE rent ADD CONSTRAINT member_no_fk
	FOREIGN KEY KET
-- ALTER로 FOREIGN KEY만 관리

-- 5. 2번 도서를 대여한 회원의 이름, 아이디, 대여일, 반납 예정일(대여일 + 7일)을 조회하시오.
SELECT 
		member_name "회원 이름",
        member+ 아이디,
        rent_Dak
-- 6. 회원번호가 1번인 회원이 대여한 도서들의 도서명, 출판사명, 대여일, 반납예정일을 조회하시오.
SELECT bk_title 도서명,
		pub_name 출판사명,
        rent_date 대여일,
        adddate(rent_datem IN
FROM rent
	JOIN book ON (rent_book_no = bk_no)
    JOIN 
