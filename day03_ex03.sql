with pvp as (
    select p.name, per.gender
    from person_visits pv
    join person per on pv.person_id = per.id
    join pizzeria p on pv.pizzeria_id = p.id),
     pv_male as (select name from pvp where gender = 'male'),
     pv_female as (select name from pvp where gender = 'female')
select name as pizzeria_name
from (
         select name from pv_male except all select name from pv_female
     )
union all
(
    select name from pv_female except all select name from pv_male
)
order by pizzeria_name;
