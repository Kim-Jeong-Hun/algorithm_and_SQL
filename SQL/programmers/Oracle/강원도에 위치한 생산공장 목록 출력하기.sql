/*
FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 
공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성해주세요. 
이때 결과는 공장 ID를 기준으로 오름차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : 문자열 검색하는 법

검색할컬럼 LIKE + %검색할 문자열%
*/

SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '%강원도%'
ORDER BY FACTORY_ID ASC;