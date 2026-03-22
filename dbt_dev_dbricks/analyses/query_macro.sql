SELECT 
    {{multiply('sales_id', 'gross_amount')}} as test_col

    FROM 

    {{ref('bronze_sales')}}