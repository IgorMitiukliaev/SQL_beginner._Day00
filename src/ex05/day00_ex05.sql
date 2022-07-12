SELECT DISTINCT person.name, sub.order_date, sub.menu_id
FROM person,
    (
        SELECT DISTINCT person_id,
            menu_id,
            order_date
        FROM person_order
        WHERE (
                menu_id = 13
                OR menu_id = 14
                OR menu_id = 18
            )
            AND (order_date = '2022-01-07')
    ) AS sub
WHERE person.id = sub.person_id;


SELECT (
        SELECT name
        FROM person
        WHERE person.id = person_order.person_id
    ) AS NAME, order_date, person_id, menu_id
FROM person_order
WHERE (
        person_order.menu_id = 13
        OR person_order.menu_id = 14
        OR person_order.menu_id = 18
    )
    AND person_order.order_date = '2022-01-07';