select pizzeria.name as pizzeria_name
from pizzeria
    join person_visits on pizzeria.id = pizzeria_id
    join person on person.id = person_visits.person_id
    join menu on menu.pizzeria_id =  pizzeria.id
where person.name = 'Dmitriy'
  and price < 800 and person_visits.visit_date = '2022-01-08';
