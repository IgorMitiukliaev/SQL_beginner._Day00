SELECT DISTINCT person.name
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
            OR (order_date = '2022-01-07')
    ) AS sub
WHERE person.id = sub.person_id;