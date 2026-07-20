/*
PRODUCT 테이블에서 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 
상품 개수를 출력하는 SQL문을 작성해주세요. 
결과는 상품 카테고리 코드를 기준으로 오름차순 정렬해주세요.
*/

/*
문자열을 자르는 substring() 함수를 사용하는 문제

substring(컬럼명, 시작인덱스, n개)을 사용하여 문자열을 자르고,
별칭을 붙여 출력
*/

SELECT substring(PRODUCT_CODE, 1, 2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;