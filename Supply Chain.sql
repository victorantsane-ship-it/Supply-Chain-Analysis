-- PnP data analysis

select *
from stores
;

select *
from products
;

with flagged_products as (
select promo_id, product_id,
case
	when promo_id is not null then 1
    else 0
end promo_flag
from promos
),

flagged_products_combo as (
select products.*, flagged_products.promo_flag, flagged_products.promo_id
from products
left join flagged_products
	on products.product_id = flagged_products.product_id
)

select
    s.*,  -- Selects all columns from sales_daily
    fpc.promo_flag, -- The most important result: the promo flag on the sales transaction
    fpc.promo_id    -- The promo ID for reference
from
    sales_daily s
inner join
    Flagged_Products_Combo fpc
    ON s.product_id = fpc.product_id
;