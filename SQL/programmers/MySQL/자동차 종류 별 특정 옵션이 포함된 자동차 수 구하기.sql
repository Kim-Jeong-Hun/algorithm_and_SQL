/*
CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 
하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 
결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.
*/

/*
GROUP BY가 WHERE절보다 아래에 위치하는 것 주의.
모든 조건은 나열해서 따로 적어주어야 함. OPTIONS LIKE '%통풍시트%' OR '열선시트' 불가능
*/

SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' OR OPTIONS LIKE '%열선시트%' OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;