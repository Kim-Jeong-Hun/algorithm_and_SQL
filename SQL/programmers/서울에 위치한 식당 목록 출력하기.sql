/*
REST_INFO와 REST_REVIEW 테이블에서 서울에 위치한 식당들의 
식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 
조회하는 SQL문을 작성해주세요.

이때 리뷰 평균점수는 소수점 세 번째 자리에서 반올림 해주시고 
결과는 평균점수를 기준으로 내림차순 정렬해주시고, 
평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : 집계함수 사용하는 법 까먹음.

집계 함수(aggregate function)는 GROUP BY랑 함께 사용해야 하며,
집계 함수로 뽑은 결과를 필터링하려면 HAVING 사용하면 됨.

집계 함수에는 SUM(), AVG(), COUNT() 등이 있음.
*/

SELECT REST_INFO.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO, REST_REVIEW
WHERE REST_INFO.REST_ID = REST_REVIEW.REST_ID AND REST_INFO.ADDRESS LIKE '서울%'
GROUP BY REST_INFO.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS
ORDER BY SCORE DESC, FAVORITES DESC;