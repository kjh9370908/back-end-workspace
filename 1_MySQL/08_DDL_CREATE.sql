/*
	DDL(Data Definition Language) : 데이터 정의어
    - 객체(object)/스키마(Schema)를 만들고(CREATE),
    변경하고(ALTER), 삭제(DROP)하는 언어
    - 즉, 실제 데이터 값이 아닌 구조 자체를 정의하는 언어 
    
    MySQL에서 객체(구조) : 테이블(Table), 뷰(View), 인덱스(Index),
					   프로시저(Procedure), 트리거(Trigger), 함수(Function)
*/
/*
	CREATE
    - 객체를 생성하는 구문
    
    테이블 생성
    CREATE TABLE 테이블명(
		컬럼명 자료형(크기),
        컬럼명 자료형(크기),
        ...
    );
    **표시하는건 자주쓰는표현
    * 자료형 
    1. 문자 
		- CHAR / **VARCHAR** : 고정 및 가변 길이 문자, 반드시 크기 지정
        - TEXT : 매우 긴 문자열을 저장하는데 사용 
	2. 숫자
		-**INT** : 정수값 저장하는데 사용 
        - FLOAT / DOUBLE : 부동소수점 저장하는데 사용 
        - DECIMAL : 고정소수점 저장하는데 사용 
	3. 날짜 및 시간
			- DATE : 날짜 저장하는데 사용
            - TIME : 시간 저장하는데 사용 
            - DATETIME / TIMESTAMP : 날짜와 시간을 함께 저장
	4. 불리언
		- BOOLEAN / BOOL : 참(True) 또는 거짓(False) 값을 저장하는데 사용
	5. 이진 자료형(2개를 뜻하는듯)
		- BLOB : 이진 데이터를 저장하는데 사용. 이미지나 동영상과 같은 이진 파일
        --> 실제로는 이미지나 동영상은 따로 관리함 (URL만 문자형으로 저장하는 편)
*/

-- 회원에 대한 데이터를 담을 member 테이블 생성
CREATE TABLE member (
	mem_no INT,
    mem_id VARCHAR(20),
    mem_pwd VARCHAR(20),
    mem_name VARCHAR(20),
    gender CHAR(3),
    phone VARCHAR(13),
    email VARCHAR(50),
    mem_date DATE 
);

-- 테이블 구조를 표시해주는 구문
DESC member;

SELECT * FROM member;

-- 테이블에 데이터를 추가시키는 구문 (DML : INSERT
-- INSERT INTO 테이블명 VALUES(값, 값, ...);
INSERT INTO member VALUES(1, 'user01', 'pass01', '공재욱', '남', '010-7310-4769',
							'aaa@google.com', '2024-05-28');
INSERT INTO member 
		VALUES(2, 'user02', 'pass02', '공재욱', '남',NULL, NULL, NOW());
INSERT INTO member 
		VALUES(2, 'user02', 'pass02', '공재욱', '남',NULL, NULL, current_date());
INSERT INTO member VALUES(null, null, null, null, null, null, null, null);

/*
	제약조건(CONSTRAINTS)
    - 사용자가 원하는 조건의 데이터만 유지하기 위해서 각 컬럼에 대해 저장될 값에 대한 제약조건 설정 
    - 제약조건은 데이터 무결성 보장을 목적으로 한다.
    - 종류 : NOT NULL, UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY
*/
/*	
	NOT NULL
    - 해당 컬럼에 반드시 값이 있어야만 하는 경우 
		(즉, 해당 컬럼에 절대 NULL이 들어와서는 안되는 경우)
	- 추가/수정시 NULL 값을 허용하지 않도록 제한

*/
CREATE TABLE mem_check(
	mem_no INT NOT NULL,
    mem_id VARCHAR(20) NOT NULL,
    mem_pwd VARCHAR(20) NOT NULL,
    mem_name VARCHAR(20) NOT NULL,
    gender CHAR(3),
    phone VARCHAR(13),
    email VARCHAR(50),
    mem_date DATE 
    CONSTRAINT mem_gender_check CHECK (gender IN ('남','여')),
    CONSTRAINT mem_gender_check
);


INSERT INTO mem_notnull 
		VALUES(1, 'user01', 'pass01', '채승훈', '남', null, null, null);
INSERT INTO mem_notnull 
		VALUES(2, 'user02', null, '손정배', '남', null, null, current_date());
-- >> NOT NULl 제약조건에 위배되어 오류 발생! 
INSERT INTO mem_notnull 
		VALUES(2, 'user01', 'password()', '손정배', '남', null, null, current_date());

SELECT * FROM mem_notnull;

/*
	UNIQUE
    - 해당 컬럼에 중복된 값이 들어와서는 안 되는 경우 
    - 추가/수정 시 기존에 있는 데이터값 중 중복값이 있을 경우 오류 발생
*/
/*


*/
CREATE TABLE mem_unique;
	mem_no INT NOT NULL,
    mem_id VARCHAR(20)NOT NULL UNIQUE,
    mem_pwd VARCHAR(20) NOT NULL,
    mem_name VARCHAR(20) NOT NULL,
    gender CHAR(3),
    phone VARCHAR(13),
    email VARCHAR(50),
    mem_date DATE 
    CONSTRAINT mem_gender_check CHECK (gender IN ('남', '여'))
    
INSERT INTO mem_unique 
		VALUES(1, 'user01', 'pass01', '김진주', '여', null, null, null);
INSERT INTO mem_unique 
		VALUES(2, 'user01', 'pass02', '주준영','여', null, null, null);
-- >> unique 제약조건에 위배되어 insert 실패!
INSERT INTO mem_unique 
		VALUES(2, 'user02', 'pass01', '김진주', 'ㄴ', null, null, null);
-- > 성별에 유효한 값이 아니어도 들어가고 있음!

INSERT INTO mem_check
VALUES (1, 'user02', 'pass02', '이동호', null, null, null, null);
-- > check 계약조건으로 not null 조건또한 위배되었음을 확인! 

INSERT INTO mem_check
VALUES (1, 'user02', 'pass02', '이동호', null, null, null, null);
-- >> 회원번호(mem_no)가 동일해도 insert가 되는게 문제! 

SELECT * FROM mem_check;

/*
   PRIMARY KEY (기본키)
   - 테이블에서 각 행들을 식별하기 위해 사용될 컬럼에 부여하는 제약조건 (식별자 역할)
   ex) 회원번호, 학번, 사원번호, 부서코드, 직급코드, 제품번호, 주문번호, 운송장번호, ... 
   - PRIMARY KEY 제약조건을 부여하면 그 컬럼에 자동으로 NOT NULL + UNIQUE 조건이 설정 
   - 한 테이블 당 오로짐 한 개만 설정 
   --> 간혹 복합키 설정도 가능 
*/
CREATE TABLE mem_pri(
    mem_no INT PRIMARY KEY,
    mem_id VARCHAR(20)NOT NULL UNIQUE,
    mem_pwd VARCHAR(20) NOT NULL,
    mem_name VARCHAR(20) NOT NULL,
    gender CHAR(3), CHECK (gender IN ('남', '여')) NOT NULL
    phone VARCHAR(13),
    email VARCHAR(50),
    mem_date DATE 
);

SELECT * FROM mem_pri;
VALUES(1, 'user01', '박세영', '남', null, null, null);
SELECT * FROM mem_pri;
VALUES(1, 'user02', '배영운', '남', null, null, null);
-- > 기본키에 중복각을 

-- 복합키 사용 예시 (어떤 회원이 상품을 찜했는지에 대한 데이터를 보관하는 테이블)
CREATE TABLE pro_like(
	mem,no INT 
    product_name VARCHAR(10),
    like_date DATEm
    PRIMARY ket(mem,no ,
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 INSERT INTO pro_like VALUES(1, 'A',  current_date());  
 INSERT INTO pro_like VALUES(1, 'A',  current_date());   
 INSERT INTO pro_like VALUES(1, 'A',  current_date());   
 INSERT INTO pro_like VALUES(1, 'A',  current_date());   

SELECT * FROM pro_like;

--  회원등급에 대한 데이터를 따로 보관하는 테이블
CREATE TABLE mem_grade(
		grade_code INT primary KEY AUTO_INCREMENT,
        grade_name VARCHAR(30) NOT NULL
);
INSERT INTO mem_grade(grade_name) VALUE('우수회원');
INSERT INTO mem_grade(grade_name) VALUE('우수회원');
		mom_no INT PRIMARY 
        

INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user01', 'pass01', '최제환', null);
-- > 외래키 제약조건이 부여되도 기본적으로 null 허용 
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user02', 'pass02', '김경주', 1);

INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user03', 'pass01', '우현성', 2);

-- mem_grave 테이블에서 grade_code가 2인 데이터 삭제
DELETE FROM mem_grave
WHERE grade_code = 2;

SELECT * FROM member;

/*
	DEFAULT 기본값
    - 제약조건 아님!
    - 컬럼을 선정하짐 않고 INSERT시 NULL이 아닌 기본값을 세팅해주는 값 

*/
DROP TABLE member;

-- mem_grade에서 grade_code가 1인 등급을 삭제 
DELETE FROM mem_grade
WHERE grade_code = 1;
-- > 삭제 가능!  단 1을 가져다 쓰고 있는 자식 데이터 값이 NULL로 변경

INSERT INTO mem_grade(grade_name) VALUES('일반회원');

SELECT * FROM mem_grade;




-- >> 부모 테이블alter(mem_grade)에서 데이터값을 삭제할 경우 어떤 문제가 발생하는지!
-- 데이터 삭제 : DELETE FROM 테이블명 WHERE 조건;

-- mem_grade 테이블에서 grade_code가 2인 등급 삭제
DELETE FROM mem_grade
WHERE grade_code = 2;
-- >> 자식 테이블(member)에 2라는 값을 사용하고 있기 때문에 삭제 X

-- mem_grade 테이블에서 grade_code가 3인 등급 삭제
DELETE FROM mem_grade
WHERE grade_code = 3;
-- >> 자식 테이블(member)에 3이라는 값을 사용하지 않기 때문에 삭제 O 

SELECT * FROM member;
DELETE FROM member WHERE mem_no = 4;

/*
	자식테이블 생성시 외래키 제약조건을 부여할 때 삭제옵션 지정 가능 
    - 삭제옵션 : 부모테이블의 데이터 삭제 시 그 데이터를 사용하고 있는
			자식테이블의 값을 어떻게 처리할건지 
            
	1. ON DELETE RESTRICTED (기본값)
			: 자식데이터로 쓰이는 부모데이터는 삭제가 아예 안되게끔
	2. ON DELDTE SET NULL
			: 부모데이터 삭제시 해당 데이터를 쓰고 있는 자식데이터도 같이 삭제
*/
-- 회원등급에 대한 데이터를 따로 보관하는 테이블
DROP TABLE member;
CREATE TABLE member(
	mem_no INT PRIMARY KEY AUTO_INCREMENT,
    grade_name VARCHAR(30) NOT NULL
);    
INSERT INTO mem_grade(grade_name) VALUES('일반회원');
INSERT INTO mem_grade(grade_name) VALUES('우수회원');
INSERT INTO mem_grade(grade_name) VALUES('특별회원');
 
 SELECT * FROM mem_grade;









FROM mem
JOIN men_grade ON (graidaaa

/*
	FOREOGN KET (외래키)
    - 외래키 역할을 하는 컬럼에 부여하는 제약조건
    - 다른 테이블에 존재하는 값만 들어와야 되는 특정 컬럼에 부여하는 제약조건
     (단 , null 값은 가질 수 있음)
     
     --> 다른 테이블을 참조한다고 표현
     --> 주로 FOREIGN KEY 제약조건에 의해 
*/
	

    
    
    
    
    
    
    
SELECt * FROM member;

/*
	서브쿼리를 이용한 테이블 생성
    - 컬러명, 데이터 타입, 값 모두 복사/ 제약조건은 NOT NULL만
    
    CRERETE TABLE 테이블명
    AS 서브쿼리;
*/
-- kh 스키마에 있는 employee 테이블 복사하여 새로운 테이블 생성
CREATE table employee_copy
SELECT * FROM kh.employee;

SELECT * FROM employe_copy;

-- 테이블만 생성하고 데이터 값은 복사하지 않는 방법
CREATE TABLE employee_copy
SELECT * FROM kh.employee WHERE 1 = 0;
-- 모든 행에 대해서 매번 false이기 때문에 테이블 구조만 복사!

-- employee 테이블에서 사번, 직원명, 급여, 연봉만 저장한 employee_copy 테이블로 생성
CREATE TABLE employee_copy
SELECT emp_id, emp_name, salary, salary * 12 FROM kh.employee;

SELECT * FROM employee_copy;



-- 테이블만 생성하고 데이터 값은 복사하지 않다.


