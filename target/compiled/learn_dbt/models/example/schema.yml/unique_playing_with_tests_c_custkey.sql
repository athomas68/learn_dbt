
    
    

select
    c_custkey as unique_field,
    count(*) as n_records

from AT_TEST.dbt.playing_with_tests
where c_custkey is not null
group by c_custkey
having count(*) > 1


