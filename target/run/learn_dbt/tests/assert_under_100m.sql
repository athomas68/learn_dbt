select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT sum(c_acctbal) as total
FROM AT_TEST.dbt.playing_with_tests

HAVING sum(c_acctbal) >= 100000000
      
    ) dbt_internal_test