/*
APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 
진료과코드 별로 조회하는 SQL문을 작성해주세요. 
이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 
결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고, 
예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬해주세요.
*/

/*
1. 컬럼 별명에 '' 사용하지 않기
2. 
*/

SELECT MCDP_CD AS 진료과코드, COUNT(PT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE APNT_YMD BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY MCDP_CD
ORDER BY 5월예약건수, 진료과코드 ASC;

/*또는*/

SELECT MCDP_CD AS 진료과코드, COUNT(PT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = 2022 AND MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY 5월예약건수, 진료과코드 ASC;