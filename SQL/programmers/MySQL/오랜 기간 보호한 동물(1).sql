/*
아직 입양을 못 간 동물 중, 
가장 오래 보호소에 있었던 동물 3마리의 이름과 
보호 시작일을 조회하는 SQL문을 작성해주세요. 
이때 결과는 보호 시작일 순으로 조회해야 합니다.
*/

/*
조인의 종류는 4개 : INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN.

MySQL에서 사용할 수 있는 조인의 종류는 3개 : 
JOIN(=INNER JOIN), LEFT JOIN(=LEFT OUTER JOIN), RIGHT OUTER JOIN(=RIGHT OUTER JOIN)


** SQL 표준은 아니지만 사용하는 JOIN **
CROSS JOIN : ON 조건 없이 카테시안 곱(모든 행의 조합 nxn) 만듬.
SELF JOIN : 같은 테이블을 두 번 조인. (실제로는 별칭을 주고 (INNER, RIGHT, LEFT) JOIN 사용)
*/


SELECT AI.NAME AS NAME, AI.DATETIME AS DATETIME
FROM ANIMAL_INS AS AI LEFT OUTER JOIN ANIMAL_OUTS AS AO ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NULL
ORDER BY AI.DATETIME ASC
LIMIT 3;