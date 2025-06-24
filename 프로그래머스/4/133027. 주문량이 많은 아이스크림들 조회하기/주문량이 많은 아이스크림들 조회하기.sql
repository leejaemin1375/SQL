SELECT FLAVOR
FROM (
    SELECT f.FLAVOR,
    sum(f.TOTAL_ORDER + j.TOTAL_ORDER) as total,
    RANK() OVER(ORDER BY sum(f.TOTAL_ORDER + j.TOTAL_ORDER)DESC) as total_rank
    FROM FIRST_HALF f
    left JOIN JULY j
     ON f.FLAVOR = j.FLAVOR
    GROUP by f.FLAVOR
) AS sub
WHERE total_rank <= 3;