SELECT
    c.campaign_name,

    ROUND(
        (
            SUM(f.`quantity_sold(after_promo)`) -
            SUM(f.`quantity_sold(before_promo)`)
        ) * 100.0 /
        SUM(f.`quantity_sold(before_promo)`),
        2
    ) AS ISU_Percentage,

    RANK() OVER (
        ORDER BY
        (
            SUM(f.`quantity_sold(after_promo)`) -
            SUM(f.`quantity_sold(before_promo)`)
        ) * 100.0 /
        SUM(f.`quantity_sold(before_promo)`) DESC
    ) AS campaign_rank

FROM fact_events f

JOIN dim_campaigns c
ON f.campaign_id = c.campaign_id

GROUP BY c.campaign_name;