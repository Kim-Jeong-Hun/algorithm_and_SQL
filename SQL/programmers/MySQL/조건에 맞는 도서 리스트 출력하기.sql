/*
BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 
도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성해주세요.
결과는 출판일을 기준으로 오름차순 정렬해주세요.
*/

/*
Oracle과 다르게 YEAR(), MONTH(), DAY(), HOUR(), MINUTE(), SECOND()
등의 단위 추출용 내장함수가 있으니 잘 써먹을 것.

Oracle의 TO_CHAR()과 같은 느낌의 함수로
DATE_FORMAT(date, format)이 있으니 이것도 잘 사용할 것.
*/

SELECT BOOK_ID, PUBLISHED_DATE
FROM BOOK
WHERE YEAR(PUBLISHED_DATE) = '2021' AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC;