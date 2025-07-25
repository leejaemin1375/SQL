-- 코드를 입력하세요
SELECT a.TITLE, 
a.BOARD_ID, 
b.REPLY_ID,
b.WRITER_ID,
b.CONTENTS, 
DATE_FORMAT(b.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
FROM USED_GOODS_BOARD a
inner join USED_GOODS_REPLY b
    on a.BOARD_ID = b.BOARD_ID
WHERE a.CREATED_DATE LIKE "2022-10-%"
ORDER BY b.CREATED_DATE, a.TITLE