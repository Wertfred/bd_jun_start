insert into person_order
values ((select max(id) + 1 from person_order),
        (select id from person where name = 'Denis'),
        20, '2022-02-24'),
       ((select max(id) + 2 from person_visits),
        (select id from person where name = 'Irina'),
        20, '2022-02-24');
