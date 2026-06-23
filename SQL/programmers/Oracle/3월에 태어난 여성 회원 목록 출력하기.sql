/*
MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 
ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성해주세요. 
이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 
결과는 회원ID를 기준으로 오름차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : 생일이 3월인 사람만 뽑는 방법

추출하는 함수 EXTRACT() 사용
MySQL이나 SQL Server에서는 MONTH() 함수 사용해도 됨.

EXTRACT(원하는단위 FROM 날짜/시간)
기능 : 날짜/시간에서 원하는 단위 추출 가능
예시 : EXTRACT(MONTH FROM DATE_OF_BIRTH) : 3

EXTRACT() 함수는 숫자(Numeric) 형태로 결과를 반환함에 주의
(예: '03'월이 아니라 숫자 3)
*/

SELECT MEMBER_ID, MEMBER_NAME, GENDER, TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'W' AND EXTRACT(MONTH FROM DATE_OF_BIRTH) = 3 AND TLNO IS NOT NULL
ORDER BY MEMBER_ID ASC;