SELECT
    p.product_name,
    f.base_price
FROM fact_events AS f
INNER JOIN dim_products AS p
    ON f.product_code = p.product_code
WHERE
    f.base_price > 500
    AND f.promo_type = 'BOGOF';