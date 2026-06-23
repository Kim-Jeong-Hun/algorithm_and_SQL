/*
DOCTOR 테이블에서 진료과가 흉부외과(CS)이거나 일반외과(GS)인 
의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성해주세요. 
이때 결과는 고용일자를 기준으로 내림차순 정렬하고, 
고용일자가 같다면 이름을 기준으로 오름차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : "YYYY-MM-DD HH24:MI:SS" 형식에서 "YYYY-MM-DD" 형식으로 바꾸는 법

TO_CHAR('날짜', '지정할 형식')
기능 : 첫 번째 값을 두 번째 형식으로 변경
예시 : TO_CHAR(SYSDATE, 'YYYY-MM-DD') : '2026-06-11'

주로 날짜 형식 변경을 위해 많이 사용하는 함수
*/

SELECT DR_NAME, DR_ID, MCDP_CD, TO_CHAR(HIRE_YMD, 'YYYY-MM-DD') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;