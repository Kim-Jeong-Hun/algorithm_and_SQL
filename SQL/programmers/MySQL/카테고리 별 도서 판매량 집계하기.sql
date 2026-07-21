/*
2022년 1월의 카테고리 별 도서 판매량을 합산하고, 
카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.
*/

/*
1. 모두 더하는 건 COUNT() 아니라 SUM()
2. FROM 테이블 JOIN 테이블 ON 테이블.컬럼 = 테이블.컬럼 까먹지 않기
3. MySQL에서는 날짜 데이터에도 LIKE 연산자를 사용할 수 있음.

*/

SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK JOIN BOOK_SALES ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
WHERE SALES_DATE LIKE '2022-01%'
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;