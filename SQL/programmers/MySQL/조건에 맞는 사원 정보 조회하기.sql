/*
HR_DEPARTMENT, HR_EMPLOYEES, HR_GRADE 테이블에서 2022년도 한해 평가 점수가 가장 높은 사원 정보를 조회하려 합니다. 
2022년도 평가 점수가 가장 높은 사원들의 점수, 사번, 성명, 직책, 이메일을 조회하는 SQL문을 작성해주세요.
2022년도의 평가 점수는 상,하반기 점수의 합을 의미하고, 평가 점수를 나타내는 컬럼의 이름은 SCORE로 해주세요.
*/

/*
조건 해석이 매우 어려웠지만 문법 자체는 다 알고 있던 문제.
다시 한 번 풀어보기.
*/

SELECT SUM(HG.SCORE) AS SCORE, 
HG.EMP_NO AS EMP_NO, 
HE.EMP_NAME AS EMP_NAME, 
HE.POSITION AS POSITION,
HE.EMAIL AS EMAIL
FROM HR_EMPLOYEES AS HE JOIN HR_GRADE AS HG ON HE.EMP_NO = HG.EMP_NO
GROUP BY HG.EMP_NO, HE.EMP_NAME, HE.POSITION, HE.EMAIL
HAVING SUM(HG.SCORE) = (
    SELECT SUM(SCORE) 
    FROM HR_GRADE
    GROUP BY EMP_NO
    ORDER BY SUM(SCORE) DESC
    LIMIT 1
);