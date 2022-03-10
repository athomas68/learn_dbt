
  create or replace  view AT_TEST.dbt.cumulative_orders_by_date 
  
   as (
    with orders as (
  SELECT *
  FROM snowflake_sample_data.tpch_sf1.orders

)

select distinct
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales

from orders


where year(o_orderdate) = 1996


order by o_orderdate
  );
