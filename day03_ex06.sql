with pzm as (
    select pizza_name, pizzeria.name, price
    from pizzeria join menu m on pizzeria.id = m.pizzeria_id)
select p1.pizza_name, p1.name as pizzeria_name_1,
       p2.name as pizzeria_name_2, p1.price from pzm as p1
    join pzm as p2 on p1.pizza_name = p2.pizza_name and p1.price = p2.price and p1.name < p2.name
order by p1.pizza_name;
