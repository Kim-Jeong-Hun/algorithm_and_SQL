/*
DEVELOPERS 테이블에서 Python이나 C# 스킬을 가진 개발자의 정보를 조회하려 합니다.
조건에 맞는 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문을 작성해 주세요.
결과는 ID를 기준으로 오름차순 정렬해 주세요.
*/

/*
두 테이블을 조인할 수 없기 때문에 한 테이블에서 데이터를 뽑아서 
다른 테이블과 비교하는 것을 빠르게 알아차리는 것이 중요.

SQL에도 비트 비교 연산자가 있으며, 사용법을 알아두는 것이 중요하다.
*/

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#') != 0
   OR SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python') != 0
ORDER BY ID;