select a.title, a.board_id, b.reply_id, b.writer_id, b.contents, date_format(b.created_date, '%Y-%m-%d')
from used_goods_board a, used_goods_reply b
where a.board_id=b.board_id and a.created_date like '2022-10%'
order by b.created_date, a.title
