/*
REST_INFO 테이블에서 음식종류별로 즐겨찾기 수가 가장 많은 식당의 
음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 
이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.
*/

/*
1. GROUP BY로 음식 종류마다의 즐겨찾기가 가장 많은 수를 찾고,
2. 해당 음식 종류와 즐겨찾기 수에 해당하는 식당을 찾아서 정보 리턴
*/

SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) 
IN (SELECT FOOD_TYPE, MAX(FAVORITES) AS FAVORITES
    FROM REST_INFO GROUP BY FOOD_TYPE)
ORDER BY FOOD_TYPE DESC;