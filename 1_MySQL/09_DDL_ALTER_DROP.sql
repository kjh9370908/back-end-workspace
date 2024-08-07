/*
	ALTER
    - 객체를 수정하는 구문 
    
    ALTER TABLE 테이블명 수정할내용;
*/
-- 여기서 사용할 테이블 생성
CREATE TABLE dept_copy
SELECT * FROM kh.department;

SELECT * FROM dept_copy;
/*
	1. 컬럼 추가 / 수정 / 삭제 / 이름 변경
    1-1. 컬럼 추가 (ADD)
    ALTER TABLE 테이블명 ADD 컬럼명 자료형 [DEFAULT 기본값];
*/
-- cname 컬럼 추가
ALTER TABLE dept_copy ADD cname VARCHAR(20);
-- >> 새로운 컬럼이 만들어지고 기본저긍로 NULL로 채워짐

-- lname 컬럼 추가(기본값 : 한국)
AFTER TABLE dept_copy ADD lname VARCHAR(20) DEFAULT '한국';
-- >> 새로운 컬럼이 만들어지고 지정한 기본값으로 채워짐 

/*
	1-2. 컬럼 수정 (MODIFY)
    - 자료형 변경 : ALTER TALBE 테이블명 MODIFY 컬럼명 변경할자료형;
    - 기본값 변경 : ALTER TABLE 테이블명 MODIFY 컬럼명 자료형 DEFAULT 변경할기본값;
    
    * 참고 : DEFAULT 삭제 
    ALTER TABLE 테이블명 MODIFY 컬럼명 자료형 DEFAULT NULL;
*/
-- dept_id 컬럼의 자료형 CHAR(3)으로 변경 

ALTER TABLE dpet_copy MODIFY dept_id CHAR(3);

ALTER TABLE dpet_copy MODIFY dept_id INT; -- 에러 발생!
ALTER TABLE dpet_copy MODIFY cname INT; -- 기존 데이터가 없으면 자료형 변경 가능

-- dept_title의 자료형을 VARCHAR(5)로 변경

ALTER TABLE dpet_copy MODIFY dept_title VARCHAR(5);
-- >> 변경하려는 자료형의 크기보다 이미 큰 값이 존재하면 에러 발생 ! 

-- dept_title 컬럼의 자료형은 VARCHAR(40),
-- location_id 컬럼의 자료형은 VARCHAR(2),
-- lname 컬럼의 기본값을 미국으로 변경 ( 자료형 : VARCHAR ))
ALTER TABLE dpet_copy 
	MODIFY dept_title VARCHAR(40), 
    MODIFY location_id VARCHAR(2), 
    MODIFY lname VARCHAR(20) DEFAULT '미국'
    
INSERT INTO dept_FO    

/*
	1-3. 컬럼 삭제 
    
    - 데이터 값이 기록되어 있어도 같이 삭제된다. (삭제된 컬럼 복구는 불가능)
    - 테이블에는 최소 한 개의 컬럼이 존재해야 한다.
    - 참고되고 있는 컬럼이 있다면 삭제가 불가능하다.
    

*/
ALTER TABLE dept_copy DROP COLUMN dept_id;
ALTER TABLE dept_copy DROP COLUMN dept_title;
ALTER TABLE dept_copy DROP COLUMN location_id;
ALTER TABLE dept_copy DROP COLUMN cname;
ALTER TABLE dept_copy DROP COLUMN lname; -- 삭제 불가능!

-- mem_grade 테이블의 grade_code 삭제
ALTER TABLE mem_grade DROP COLUMN grade_code;
SELECT * FROM mem_grade;

/*
	1-4. 컬럼명 변경 (RENAME COLUMN)
    ALTER TABLE 테이블명 RENAME COLUMN 기존컬럼명 TO 변경할컬럼명;
*/
-- dept_copy 테이블에서 lname 컬럼명을 location_name으로 변경
ALTER TABle dept_copy RENAME COLUMN lname to location_name;

/*
	2. 제약조건 추가 / 삭제 
    2-1 제약조건 추가 (ADD)
    - ADD [CONSTRAINT 제약조건명] PRIMARY KEY(컬럼명);
    - ADD [CONSTRAINT 제약조건명] FOREIGN KEY(컬럼명) REFERENCES 테이블명(컬럼명);
	- ADD [CONSTRAINT 제약조건명] UNIQUE(컬럼명);
    - ADD [CONSTRAINT 제약조건명] CHECK(컬럼에 대한 조건);
    - NOT NULL : MODIFY 컬럼명 [CONSTRINT 제약조건명] NOT NULL;
*/
DROP TABLE dept_copy;

CREATE TABLE dpet_copy
SELECT * FROM kh.dapartment;

-- dept_copy 테이블의 dept_id 컬럼에 기본키(PK, Primary key) 제약조건 추가
ALTER TABLE dept_copy ADD PRIMARY KEY(dept_id);

-- dept_title 컬럼에 unique 제약조건 추가
ALTER TABLE dept_copy ADD unique(dept_title);

/*
	2-2. 제약조건 삭제
    - NOT NULL: ALTER TABEL 테이블명 MODIFY 컬럼명 NULL;
    - 나머지 : ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명;
    
*/
ALTER TABLE dept_copy DROP CONSTRAINT dept_title; 
ALTER TABLE dept_copy DROP CONSTRAINT dept_copy_pk;

-- 제약조건명 확인
SELECT TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME =const
FROM information_schema. TABLE_CONSTRAINT
WHERE TABLE_SCHEMA = 'sample' AND TABLE_NAME = 'dept_copy';


-- TABLE
/*
	3. 테이블명 변경(RENAME)
    ALTER TABLE 기존테이블명 RENAME
    

*/
-- dpet_copy => dept_test 변경
ALTER TABLE dept_copy RENAME TO dept_test;


DESC dept_copy;
SELECT * FROM dept_copy;

/*
	DROP
    - 객체를 삭제하는 구문
    DROP TABLE 테이블명;
    
    -- 삭제하고 싶다면 자식 테이블 먼저 삭제 후 부모 테이블 삭제 가능!
*/
 
DROP TABLE member;
 ALTER 
 DROP TABLE member;
CREATE TABLE member(
	mem_no INT PRIMARY KEY AUTO_INCREMENT,
    grade_name VARCHAR(30) NOT NULL
);    
INSERT INTO mem_grade(grade_name) VALUES('일반회원');
INSERT INTO mem_grade(grade_name) VALUES('우수회원');
INSERT INTO mem_grade(grade_name) VALUES('특별회원');
 


SELECT * FROM dept_copy;

-- dept_copy 테이블의 dept)id 컬럼에 기본키(PK, Prima