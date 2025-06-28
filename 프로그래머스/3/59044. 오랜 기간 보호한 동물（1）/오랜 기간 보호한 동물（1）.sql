-- 코드를 입력하세요
WITH sub1 as (
    SELECT i.NAME,
    i.DATETIME,
    RANK() over( order by i.DATETIME) as ranking  #i.보호 시작일 & o.입양일
    FROM ANIMAL_INS i
    LEFT JOIN ANIMAL_OUTS o
        on i.ANIMAL_ID = o.ANIMAL_ID
    WHERE o.DATETIME is NULL
)

select NAME, DATETIME
FROM sub1
WHERE ranking <= 3
