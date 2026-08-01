/*
각 분기(QUARTER)별 분화된 대장균의 개체의 총 수(ECOLI_COUNT)를 출력하는 SQL 문을 작성해주세요. 
이때 각 분기에는 'Q' 를 붙이고 분기에 대해 오름차순으로 정렬해주세요. 
대장균 개체가 분화되지 않은 분기는 없습니다.
*/

/*
각 분기별 분화된 대장균 개체 찾기
- 분기별로 어떻게 나누지?
- 분기 데이터 추출: QUARTER() 함수 사용하기
- QUARTER() 함수 사용 시, 리턴 값들
- 1 ~ 3월 -> 1
- 4 ~ 6월 -> 2
- 7 ~ 9월 -> 3
- 10 ~ 12월 -> 4

따라서,
1. QUARTER() 함수로 분기를 뽑아내고, CONCAT() 함수를 이용해서 Q를 붙인다.
2. 분기별 대장균 개체 수를 구하기 위해서 COUNT()로 집계한다.

QUARTER()라는 함수를 알게 됨.
*/

SELECT CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q') AS QUARTER, COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY QUARTER 
ORDER BY QUARTER ASC;