/*
FOOD_ORDER 테이블에서 2022년 5월 1일을 기준으로 
주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성해주세요. 
출고여부는 2022년 5월 1일까지 출고완료로 이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력해주시고, 
결과는 주문 ID를 기준으로 오름차순 정렬해주세요.
*/

/*
CASE(시작) - WHEN 조건 - THEN 참일시리턴 - ELSE 거짓시리턴 - END

CASE 표현식 쓸 때 주의할 점.
1. CASE - WHEN - THEN - ELSE까지는 잘 쓰는데 END 까먹는 것 조심하기
2. NULL은 조건 비교 시 UNKNOWN으로, ELSE로 떨어지게 된다.
- NULL일때의 동작을 따로 서술하는 습관 필요
3. CASE는 값 하나를 반환하는 표현식이기 때문에 SELECT 절이 아니어도
값이 올 수 있는 자리면 어디든지 사용 가능하다. (GROUP BY나 심지어 집계함수 안에서도 사용 가능) 
*/

SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,  
CASE 
    WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
    WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
    ELSE '출고미정'
END AS '출고여부'
FROM FOOD_ORDER 
ORDER BY ORDER_ID ASC;