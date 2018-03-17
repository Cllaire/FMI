/* Exercitii Setul 1*/
DESCRIBE JOBS;

SELECT * 
FROM JOBS;

SELECT JOB_ID, JOB_TITLE 
FROM JOBS;

SELECT JOB_ID, (MAX_SALARY - MIN_SALARY) AS "diferenta"
FROM JOBS;

/* Exercitii Setul 2*/
DESCRIBE EMPLOYEES;

SELECT *
FROM EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, HIRE_DATE
FROM EMPLOYEES;

SELECT FIRST_NAME||', '||LAST_NAME||', '||JOB_ID AS "Angajat si titlu"
FROM EMPLOYEES;

SELECT EMPLOYEE_ID||', '||FIRST_NAME||', '||LAST_NAME||', '||EMAIL||', '||PHONE_NUMBER||', '||HIRE_DATE||', '||JOB_ID||', '||SALARY||', '||COMMISSION_PCT||', '||MANAGER_ID||', '||DEPARTMENT_ID AS "Informatii complete"
FROM EMPLOYEES;

/* Exercitii Setul 3*/
SELECT 1+2 FROM DUAL;
SELECT SYSDATE FROM DUAL;

SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY HH12:MI') FROM DUAL;

SELECT SYSDATE FROM EMPLOYEES;

SELECT EMPLOYEE_ID||', '||FIRST_NAME||', '||LAST_NAME||','||TO_CHAR(HIRE_DATE,'DAY') FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES
ORDER BY TO_CHAR(HIRE_DATE,'YEAR') DESC, TO_CHAR(HIRE_DATE,'DDD');

/* Exercitii Setul 4*/
SELECT *
FROM EMPLOYEES
WHERE SALARY >2850;

SELECT FIRST_NAME,LAST_NAME,JOB_ID, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '20-FEB-87' AND '01-MAY-89'
ORDER BY HIRE_DATE;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN(10,30,50)
ORDER BY FIRST_NAME;

SELECT FIRST_NAME,LAST_NAME,JOB_ID,SALARY
FROM EMPLOYEES
WHERE (JOB_ID LIKE '%CLERK%' OR JOB_ID LIKE '%REP%') AND (SALARY NOT IN(1000,3000,2000));

SELECT FIRST_NAME,LAST_NAME,JOB_ID
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

SELECT FIRST_NAME,LAST_NAME,(SALARY * COMMISSION_PCT) AS "COMISION"
FROM EMPLOYEES
WHERE SALARY > 5*(SALARY*COMMISSION_PCT);