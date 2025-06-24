select pizza_name, pizzeria.name as pizzeria_name
from person_order join person on person.id = person_id
    join menu on menu.id = menu_id
    join pizzeria on pizzeria_id = pizzeria.id
where person.name = 'Denis' or person.name = 'Anna'
order by pizza_name, pizzeria.name;
