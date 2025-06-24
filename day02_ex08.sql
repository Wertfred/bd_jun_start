select name from person_order
    join person on person_id = person.id
    join menu on menu_id = menu.id
where gender = 'male'
  and (address = 'Moscow' or address = 'Samara')
  and (pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza')
order by person.name desc;
