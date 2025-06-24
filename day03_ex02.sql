with pom as (
select * from menu
    left join person_order po on menu.id = po.menu_id
where po.menu_id is null)
select pom.pizza_name, pom.price, pizzeria.name as pizzeria_name
from pom join pizzeria on pom.pizzeria_id = pizzeria.id
order by pom.pizza_name, pom.price;
