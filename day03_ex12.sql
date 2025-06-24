insert into person_order
select (select max(id) + gs.id from person_order group by gs.id),
       gs.id, (select id from menu where pizza_name = 'greek pizza'),
       '2022-02-25'
from generate_series(1, (select count(id) from person)) as gs(id);
