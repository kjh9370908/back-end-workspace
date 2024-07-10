INSERT INTO employee(emp_id, emp_name, emp_no) 
VALUES(300, '전지우', '700101-1234567');

SELECT * FROM employee;
/* 예??*/


SELECT emp_name, emp_no, dept_code, salary
FROM employee
WHERE dept_code IN('D6', 'D9')
AND salary >= 3000000
AND email LIKE '___\_%' ;

/*
 결과값이 제대로 나오지 않는 이유는 OR 보다 AND가 더 우선순위 
 이상이니까 >가 아니라 >=
 이메일 주소가 _앞에 3글자를 구분하기 위해서 email언더바 옆에 \ 
 
*/


SELECT * FROM employee WHERE bonus is null;

/*
null 앞에는 =가 붙을 수 없다. is 혹은 in not만 붙을수 있따..
*/

SELECT dept_code, sum(salary) 합계, avg(salary) 평균, count(*) 인원수
FROM employee
GROUP BY dept_code
HAVING avg(salary) > 2800000
ORDER BY dept_code;

/*
salary가 아니라 avg(salary)를 붙어야 되는데 WHERE 절에는 함수가 붙을 수 없으므로 WHERE가 아니라 
HAVING을 붙어야 된다. 그리고 순서가 뭐 잘못됐나본데.. 그룹바이 밑에 붙여야 한다. 이?유는
SELECT 문안에 순서가 중요하기 때문!!
*/


SELECT job_code, avg(salary)
FROM employee
WHERE bonus is not null
GROUP BY job_code
HAVING  avg(salary) > 3000000;

/*
초과니까 >=가 아니라 >로 바꾸고
그룹이 job_code가 아니라 dept_code로 되어있다. 그러니 job_code로 바꾼다..
그리고 WHERE로 옮겨야 하는이유는...뭐징?
*/

SELECT emp_name, job_code, count(*) as 사원수
FROM employee
WHERE bonus IS NOT NULL
GROUP BY emp_name, job_code
ORDER BY job_code ASC;

/*
NULL앞에는 !=같은 부?등호가 들어갈 수 없다 따라서 '보서스를 받는 사원' 은 =!가 아니라 IS NOT NULL이 붙어야한다
그리고 문제에서 사원명,직급코드, 보너스를 받는 사원수를 조회한다고 했으니.. SELECT에 쓴대로 GROUP BY 에도 같이쓴..다
*/


SELECT emp_id, emp_name, dept_id, dept_title
FROM employee
JOIN department ON (dept_id);

