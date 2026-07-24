/*
USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 
완료된 중고 거래의 총금액이 70만 원 이상인 사람의 
회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 
결과는 총거래금액을 기준으로 오름차순 정렬해주세요.
*/

/*
천천히 조건 생각해보기
충분히 맞힐 수 있는 문제였음.

놓친 조건
1. 완료된 중고거래 -> STATUS = 'DONE'
2. 70만 원 이상 -> HAVING TOTAL_SALES >= 700000
*/

SELECT USER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD AS UGB JOIN USED_GOODS_USER AS UGU ON UGB.WRITER_ID = UGU.USER_ID
WHERE STATUS = 'DONE'
GROUP BY USER_ID, NICKNAME
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES ASC;