with md as (select * from person_order
    join menu on menu_id = menu.id
    join person on person_id = person.id
where gender = 'female')
select md.name from md where pizza_name = 'pepperoni pizza'
INTERSECT
select md.name from md where pizza_name = 'cheese pizza';
