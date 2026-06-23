/*
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 
2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 
자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 
이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 
결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : AVAILABILITY 컬럼 만드는 범

CASE : SQL 조건문 (if-else나 switch문과 비슷한 역할)
WHEN-THEN-ELSE : WHEN 조건 THEN 결과 ELSE 기본값
END : CASE 조건문의 끝을 나타냄.

WHEN과 THEN은 여러 번 반복해서 사용 가능

CASE WHEN DATE '2022-10-16' BETWEEN START_DATE AND END_DATE THEN 1 ELSE 0 END
-> START_DATE와 END_DATE 사이에 2022-10-16일이 있으면 참, 아니면 거짓

WHEN SUM() > 0 THEN '대여중' ELSE '대여 가능' END
-> 2022-10-16이 있으면 '대여중', 아니면 '대여 가능'

*/

SELECT CAR_ID, 
CASE
    WHEN SUM(
        CASE 
            WHEN DATE '2022-10-16' BETWEEN START_DATE AND END_DATE
            THEN 1
            ELSE 0
        END) > 0
    THEN '대여중'
    ELSE '대여 가능'
END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;