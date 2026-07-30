/*
USED_GOODS_BOARD 테이블에서 2022년 10월 5일에 등록된 중고거래 게시물의 
게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성해주세요. 
거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력해주시고, 
결과는 게시글 ID를 기준으로 내림차순 정렬해주세요.
*/

/*
CASE END문 내에서
WHEN 조건 THEN 결과는 여러 번 반복될 수 있다.
ELSE는 한 번만 사용 가능
*/


SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
    CASE 
        WHEN STATUS = 'SALE'
        THEN '판매중'
        ELSE
            CASE
                WHEN STATUS = 'RESERVED'
                THEN '예약중'
                ELSE '거래완료'
            END
    END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%YYYY-%mm-%dd') = '2022-10-05'
ORDER BY BOARD_ID DESC;