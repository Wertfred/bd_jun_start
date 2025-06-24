select pizzeria.name as pizzeria_name
from person_visits
    join person on person_id = person.id
    join pizzeria on pizzeria_id = pizzeria.id
where person.name = 'Andrey'
except
select pizzeria.name
from person_order
    join person on person_id = person.id
    join menu on menu.id = person_order.menu_id
    join pizzeria on menu.pizzeria_id = pizzeria.id
where person.name = 'Andrey'
