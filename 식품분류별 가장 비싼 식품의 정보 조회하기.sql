select b.category, b.price, b.product_name
from (select category, max(price) as price
    from food_product
    where category in('과자', '국', '김치', '식용유')
    group by category) a, food_product b
where a.category=b.category and a.price=b.price
order by price desc
