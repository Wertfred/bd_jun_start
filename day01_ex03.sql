select order_date AS action_date, person_id
from person_order
INTERSECT
select visit_date, person_id from person_visits
order by action_date, person_id desc
