## Print the final totals and the overall result.

execute store result storage et_test:counts passed int 1 run scoreboard players get #passed et_test
execute store result storage et_test:counts failed int 1 run scoreboard players get #failed et_test
execute store result storage et_test:counts skipped int 1 run scoreboard players get #skipped et_test
function elemental_tools_test:harness/report_counts with storage et_test:counts

execute if score #failed et_test matches 1.. run return run say ET_RESULT FAILED
say ET_RESULT PASSED