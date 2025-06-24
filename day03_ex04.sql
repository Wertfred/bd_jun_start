with pop as (
    select p.name, per.gender from person_order po
    join person per on po.person_id = per.id
    join menu m on po.menu_id = m.id
    join pizzeria p on m.pizzeria_id = p.id),
pizzerias_male_only as (
select name from pop
where gender = 'male'
except 
select name from pop
where gender = 'female'),
pizzerias_female_only as (
select name
from pop
where gender = 'female'
except 
select name from pop
where gender = 'male')
select name as pizzeria_name from pizzerias_male_only
union
select name from pizzerias_female_only
order by pizzeria_name;
