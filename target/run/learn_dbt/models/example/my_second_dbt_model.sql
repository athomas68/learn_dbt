
  create or replace  view AT_TEST.dbt.my_second_dbt_model 
  
   as (
    -- Use the `ref` function to select from other models

select *
from AT_TEST.dbt.my_first_dbt_model
where id = 1
  );
