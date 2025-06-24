select i.action_date, p.name as person_name
    from (
        (select order_date as action_date, person_id
        from person_order
        INTERSECT
        select visit_date, person_id from person_visits) as i
            join (select name, id from person) as p on i.person_id = p.id)
order by action_date, person_id desc
