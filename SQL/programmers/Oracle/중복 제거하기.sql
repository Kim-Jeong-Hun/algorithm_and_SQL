/*
동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 
이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.
*/

/*
NULL인 경우 집계하지 않는다 : *를 사용하지 말라는 소리
중복되는 이름은 하나로 칩니다 : DISTINCT 키워드 사용
*/

SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS;