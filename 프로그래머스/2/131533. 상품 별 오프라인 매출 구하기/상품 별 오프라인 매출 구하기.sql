-- 코드를 입력하세요
SELECT product_code,
        price * sales_amount as SALES
from (SELECT p.product_id,
            p.product_code,
            p.price,
            SUM(sales_amount) as sales_amount
        from PRODUCT p
        join OFFLINE_SALE o
            on p.product_id = o.product_id
        group by p.PRODUCT_CODE) as sub
order by SALES DESC, PRODUCT_CODE



