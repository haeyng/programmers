SELECT TO_NUMBER(t.HOUR) HOUR , COUNT(t.HOUR) COUNT
FROM(
    SELECT ANIMAL_ID , TO_CHAR(DATETIME,'HH24') HOUR
    FROM ANIMAL_OUTS
    )t
WHERE t.HOUR >= 09 AND t.HOUR < 20
GROUP BY t.HOUR
ORDER BY t.HOUR ASC;