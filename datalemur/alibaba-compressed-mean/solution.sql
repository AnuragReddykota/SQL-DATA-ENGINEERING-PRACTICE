WITH main_table AS (
    SELECT
        item_count * order_occurrences AS items,
        order_occurrences
    FROM items_per_order
)
SELECT
    ROUND(
        SUM(items)::NUMERIC / SUM(order_occurrences),
        1
    ) AS mean
FROM main_table;
