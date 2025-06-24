select pizza_name, name as pizzeria_name, price
from menu JOIN pizzeria on pizzeria_id = pizzeria.id
where pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza'
order by pizza_name, name;
