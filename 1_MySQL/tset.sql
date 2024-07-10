INSERT INTO employee(emp_id, emp_name, emp_no) VALUES(300, '전지우', '700101-1234567');

SELECT * FROM employee;

SELECT emp_name, emp_no, dept_code, salary, email
FROM employee
WHERE dept_code IN ('D6', 'D9')
AND salary >= 3000000
AND email LIKE '___!_%' ESCAPE '!';

SELECT * FROM employee WHERE bonus is null;

SELECT dept_code, sum(salary) 합계, avg(salary) 평균, count(*) 인원수
FROM employee
GROUP BY dept_code
HAVING avg(salary) > 2800000
ORDER BY dept_code;



SELECT job_code, avg(salary)
FROM employee
WHERE bonus is not null
GROUP BY job_code
HAVING avg(salary) >= 3000000;


SELECT emp_name, job_code, count(*) as 사원수
FROM employee
WHERE bonus is not NULL
GROUP BY emp_name, job_code
ORDER BY job_code;

SELECT * FROM employee;
SELECT * FROM department;

SELECT emp_id, emp_name, dept_id, dept_title
FROM employee
JOIN department ON (dept_id = dept_code);