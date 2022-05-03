# Представление
CREATE VIEW vw_goods AS
    SELECT id_categories,
        COUNT(id_goods) AS `count`
    FROM goods
    GROUP BY id_categories

# Представление
CREATE VIEW vw_goods_categories AS
    SELECT id_categories,
        categories_name
    FROM `goods_categories`

# Количество товаров в каждой категории (INNER JOIN)
SELECT c.*,
    g.`count`
FROM `vw_goods_catgories` AS c
    JOIN `vw_goods` AS g
        ON c.id_categories = g.id_categories

# Количество товаров в каждой категории (LEFT JOIN)
SELECT c.*,
    g.`count`
FROM `vw_goods_categories` AS c
    LEFT JOIN `vw_goods` AS g
        ON c.id_categories = g.id_categories