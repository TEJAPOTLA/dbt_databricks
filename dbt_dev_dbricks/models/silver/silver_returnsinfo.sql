{{config(materialized='view')}}

with returns as (
    select sales_id,
    product_sk,
    {{multiply('returned_qty', 'refund_amount')}} as total_refund_amount,   
    refund_amount,
    returned_qty,
    return_reason
    from {{ref('bronze_returns')}}
),
products as (
    select product_sk,
    category
    from {{ref('bronze_product')}}
),
joined_query as (
SELECT
    returns.sales_id,
    returns.refund_amount,
    returns.total_refund_amount,
    returns.returned_qty,
    returns.return_reason
from
    returns
    join products on returns.product_sk=products.product_sk
)

SELECT 
    return_reason,
    returned_qty,
    sum(refund_amount) as total_refunds
from
    joined_query
group by
    returned_qty,
    return_reason
order by
    returned_qty desc