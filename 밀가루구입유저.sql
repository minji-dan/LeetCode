-- 밀가루를 구입한 유저의 아이디를 조회

select distinct user_id
from carts fst,
    (SELECT *
    from cart_products a
    where a.name='Flour') snd
where fst.id=snd.cart_id
order by user_id
