-- 코드를 입력하세요
WITH A AS(
SELECT NAME
      ,ROW_NUMBER() OVER(ORDER BY DATETIME ASC) "순위"
FROM ANIMAL_INS
)
SELECT NAME
FROM A
WHERE 순위 = 1;