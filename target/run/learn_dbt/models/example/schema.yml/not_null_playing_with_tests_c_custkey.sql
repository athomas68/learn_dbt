select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from AT_TEST.dbt.playing_with_tests
where c_custkey is null



      
    ) dbt_internal_test