/*
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
평균 대여 기간이 7일 이상인 자동차들의 
자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 
출력하는 SQL문을 작성해주세요. 

평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 
결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 
평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

/*
SQL의 DATEDIFF 함수는 두 날짜의 순수한 차이(일수)만 반환함.
예를 들어, 당일 대여하고 당일 반납한 경우(START_DATE와 END_DATE가 같은 날), 
DATEDIFF의 결과는 0이 되는데, 실제 대여 기간은 1일로 계산되어야 함.
따라서 실제 대여 기간을 정확하게 구하려면 
DATEDIFF 결과에 반드시 + 1을 해주어야 함..
*/

/*
평균 대여 기간이 7일 이상인 자동차들의
자동차 ID와 평균 대여 기간 리스트를 출력하는 SQL문을 작성.

평균 대여 기간은 ROUND(, 1),
결과는 평균 대여 기간을 기준으로 내림차순 정렬,
자동차 ID 기준 내림차순 정렬
*/

SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1), 1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;