-- 코드를 입력하세요
SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_OUTS as o
LEFT outer JOIN ANIMAL_INS as i
    ON o.ANIMAL_ID = i.ANIMAL_ID
WHERE i.INTAKE_CONDITION is NULL