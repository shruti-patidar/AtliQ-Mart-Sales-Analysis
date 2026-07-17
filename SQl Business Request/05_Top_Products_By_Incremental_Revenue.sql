WITH product_revenue AS
(
    SELECT
        p.product_name,
        p.category,
        c.campaign_name,

        SUM(f.base_price * f.`quantity_sold(before_promo)`) AS revenue_before,

        SUM(
            CASE
                WHEN f.promo_type = '50% OFF'
                    THEN f.base_price * 0.50 * f.`quantity_sold(after_promo)`

                WHEN f.promo_type = '25% OFF'
                    THEN f.base_price * 0.75 * f.`quantity_sold(after_promo)`

                WHEN f.promo_type = '33% OFF'
                    THEN f.base_price * 0.67 * f.`quantity_sold(after_promo)`

                WHEN f.promo_type = 'BOGOF'
                    THEN (f.base_price * f.`quantity_sold(after_promo)`) / 2

                WHEN f.promo_type = '500 Cashback'
                    THEN (f.base_price - 500) * f.`quantity_sold(after_promo)`
            END
        ) AS revenue_after

    FROM fact_events f

    JOIN dim_products p
        ON f.product_code = p.product_code

    JOIN dim_campaigns c
        ON f.campaign_id = c.campaign_id

    WHERE c.campaign_name = 'Diwali'

    GROUP BY
        p.product_name,
        p.category,
        c.campaign_name
)

SELECT
    product_name,
    category,

    ROUND(
        ((revenue_after - revenue_before) * 100.0) /
        revenue_before,
        2
    ) AS IR_Percentage,

    RANK() OVER (
        ORDER BY
        ((revenue_after - revenue_before) * 100.0) /
        revenue_before DESC
    ) AS product_rank

FROM product_revenue

ORDER BY product_rank

LIMIT 5;