/*
HR_DEPARTMENT와 HR_EMPLOYEES 테이블을 이용해 부서별 평균 연봉을 조회하려 합니다. 
부서별로 부서 ID, 영문 부서명, 평균 연봉을 조회하는 SQL문을 작성해주세요.
평균연봉은 소수점 첫째 자리에서 반올림하고 컬럼명은 AVG_SAL로 해주세요.
결과는 부서별 평균 연봉을 기준으로 내림차순 정렬해주세요.
*/

SELECT HR_DEPARTMENT.DEPT_ID, AVG(SAL)
FROM HR_DEPARTMENT JOIN HR_EMPLOTEES ON HR_DEPARTMENT.DEPT_ID = HR_EMPLOYEES.DEPT_ID
WHERE 