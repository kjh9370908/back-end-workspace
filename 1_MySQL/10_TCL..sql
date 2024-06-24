/*
		TCC(Transaction Control Languaged)
        - 트랜잭션을 제어하는 언어
		- 데이터베이스는 데이터 변경 사항*(INSRT, UPDATE, DELETE)들을 묶어서 
			하나의 트랜잭션에 담앗 처리 

트랜잭션(Transaction)
- 하나의 논리적인 작업 단위
ex) 하나의 
	1.카드 삽입
    2. 메뉴 선택
    3. 금액 확인
    4. 인증 - 비밀번호 입력
    5. 실제 계좌에서 금액만큼 인출
    6. 현금 인출
    7. 완료 
    -- > 각각의 업무들을 묶어서 하나의 작업 단위로 만드는 것을 트랜잭션!

	COMMIT : 모든 작업들을 정상적으로 처리하겠다고 확정하는 구문
    ROLLBACK : 모든 작업들을 취소하겠다고 확정짓는 구문 (마지막 COMMIT 시점으로 돌아간다.)
    
*/
-- MySQL에서는 기본적으로 autocommit 모드가 활성화되어 있음
-- 비활성화 
set autocommit = 0;

-- 트랜잭션 시작!
START transaction;

CREATE TABLE dept_copy
SELECT * FROM kh.department;

CREATE TABLE emp_salary
SELECT emp_id, emp_name, dept_code, salary, bonus
	FROM kh.employee;
    

DROP TABLE mem_grade;
CREATE TABLE mem_grade(
	grade_code INT PRIMARY KEY AUTO_INCREMENT,
    grade_name VARCHAR(30) NOT NULL
);
INSERT INTO mem_grade(grade_name) VALUES('일반회원');
INSERT INTO mem_grade(grade_name) VALUES('우수회원');
INSERT INTO mem_grade(grade_name) VALUES('특별회원');
3:39
DROP TABLE member;
CREATE TABLE member(
	mem_no INT PRIMARY KEY AUTO_INCREMENT,
    mem_id VARCHAR(20) NOT NULL UNIQUE,
    mem_pwd VARCHAR(20) NOT NULL,
    mem_name VARCHAR(20) NOT NULL,
    grade_id INT,
    FOREIGN KEY (grade_id) REFERENCES mem_grade(grade_code) ON DELETE CASCADE
);
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user01', 'pass01', '최제환', null);
-- >> 외래키 제약조건이 부여되도 기본적으로 null 허용
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user02', 'pass02', '김경주', 4);
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user03', 'pass03', '우현성', 2);


 
DROP TABLE rent;
DROP TABLE member;
DROP TABLE book;
DROP TABLE publisher;




DROP TABLE mem_grade;
CREATE TABLE mem_grade(
	grade_code INT PRIMARY KEY AUTO_INCREMENT,
    grade_name VARCHAR(30) NOT NULL
);
INSERT INTO mem_grade(grade_name) VALUES('일반회원');
INSERT INTO mem_grade(grade_name) VALUES('우수회원');
INSERT INTO mem_grade(grade_name) VALUES('특별회원');
3:39
DROP TABLE member;
CREATE TABLE member(
	mem_no INT PRIMARY KEY AUTO_INCREMENT,
    mem_id VARCHAR(20) NOT NULL UNIQUE,
    mem_pwd VARCHAR(20) NOT NULL,
    mem_name VARCHAR(20) NOT NULL,
    grade_id INT,
    FOREIGN KEY (grade_id) REFERENCES mem_grade(grade_code) ON DELETE CASCADE
);
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user01', 'pass01', '최제환', null);
-- >> 외래키 제약조건이 부여되도 기본적으로 null 허용
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user02', 'pass02', '김경주', 4);
INSERT INTO member(mem_id, mem_pwd, mem_name, grade_id)
VALUES('user03', 'pass03', '우현성', 2);














-- dept_copy 테이블에서 dept_id가 'D9'인 부서명을 '전략기획팀'으로 수정
-- UPDATE 테이블명 SET 변경할내용 WHERE 조건;
UPDATE dept_copy
SET dept_title = '전략기획팀'
WHERE dept_id = 'D9';

ROLLBACK;

COMMIT;

SELECT * FROM emp_salary;
-- emp_salary 테이블에서 노옹철 사원의 급여를 30000000원으로 변경

-- emp_salary에서 emp_id가 213, 218인 사원 삭제
-- DELETE FROM 테이블명 WHERE 조건;
UPDATE emp_salary
SET salary = 30000000
WHERE emp_name = '노옹철';

DELETE FROM emp_salary
WHERE emp_id IN (213, 218);

SELECT * FROM dept_copy;