/*
ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 
재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요. 
결과는 회원 ID를 기준으로 오름차순 정렬해주시고 
회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.
*/

/*
이 문제에서 내가 몰랐던 것 : 동일한 회원이 동일한 상품을 재구매한 데이터 구하는 법

-> COUNT()로 회원 ID, 상품 ID가 2번 이상 나타난 것을 뽑기
-> 근데 왜 COUNT(*)? (또는 COUNT(USER_ID) > 1 AND COUNT(PRODUCT_ID) > 1)

왜냐하면 "동일한 회원이 동일한 상품을 재구매했다"는 건, 
(USER_ID, PRODUCT_ID)라는 행이 테이블에 2번 이상 등장한다는 것.

따라서, 같은 행이 두 번 이상 나타난 데이터만 뽑기
*/

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;