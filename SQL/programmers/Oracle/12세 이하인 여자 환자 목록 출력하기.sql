/*
PATIENT 테이블에서 12세 이하인 여자환자의 
환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성해주세요. 
이때 전화번호가 없는 경우, 'NONE'으로 출력시켜 주시고 
결과는 나이를 기준으로 내림차순 정렬하고, 
나이 같다면 환자이름을 기준으로 오름차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : 빈 칸(null)을 처리하는 방법

NVL(Expr1, Expr2)
기능: 첫 번째 값이 NULL이면 두 번째 값으로 반환.
예시: NVL(컬럼명, 0) : 컬럼이 NULL이면 0으로 변환.

NVL는 NULL VALUE의 약어

유사한 함수 : NVL2(), COALESCE(), NULLIF(), TRIM() 등
*/

SELECT PT_NAME, PT_NO, GEND_CD, AGE, NVL(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;