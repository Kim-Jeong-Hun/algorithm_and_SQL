/*
PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성해주세요. 
이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 
가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시해주세요. 
결과는 가격대를 기준으로 오름차순 정렬해주세요.
*/

/*
GROUP BY는 "값이 같은 행끼리 묶는다"가 전부예요. 
그러니까 구간별로 묶고 싶다면, 같은 구간에 속한 행들이 전부 같은 값을 갖게 만들면 됩니다. 
여기까지는 아이디어가 아니라 정의예요.

구간별 집계 → FLOOR(값/단위)*단위로 그룹핑 컬럼을 만들어서 GROUP BY
이 사고 흐름에서 재사용 가능한 건 2단계예요. 
"묶고 싶다 → 같은 값으로 만들 방법을 찾는다"는 프레임.

나이 10세 단위 → FLOOR(AGE/10)*10
월별 집계 → DATE_FORMAT(DATE, '%Y-%m') (연·월만 남기고 일·시를 버림 = 같은 원리의 문자열 버전)
상·하위 두 그룹 → CASE WHEN PRICE >= 50000 THEN '고가' ELSE '저가' END

원본에 없는 기준으로 묶으라고 하면 → 묶을 컬럼을 직접 만들어서 GROUP BY. 
만드는 도구는 산술(FLOOR), 날짜포맷, CASE WHEN 셋 중 하나.
*/

SELECT FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP ASC;