with md as (select gs::date as missing_date
from generate_series ('2022-01-01', '2022-01-10', '1 day'::interval) gs),
         pv as (select * from person_visits where person_id = 1 or person_id = 2)
select missing_date
from md left join pv on pv.visit_date = md.missing_date
where pv.visit_date is null
order by missing_date;
