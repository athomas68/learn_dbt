SELECT sum(c_acctbal) as total
FROM AT_TEST.dbt.playing_with_tests

HAVING sum(c_acctbal) >= 100000000