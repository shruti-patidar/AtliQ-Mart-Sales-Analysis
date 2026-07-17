SELECT
    c.campaign_name,

    CONCAT(
        ROUND(
            SUM(f.base_price * f.`quantity_sold(before_promo)`) / 1000000,
            2
        ),
        'M'
    ) AS Revenue_Before,

    CONCAT(
        ROUND(
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
            ) / 1000000,
            2
        ),
        'M'
    ) AS Revenue_After

FROM fact_events f
JOIN dim_campaigns c
    ON f.campaign_id = c.campaign_id

GROUP BY c.campaign_name;