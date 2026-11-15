## Record a failed assertion for the current test. Call with {message:"what went wrong"}.
## Keep messages free of double quotes and @ selectors.

$data modify storage et_test:run message set value "$(message)"
scoreboard players set #test_failed et_test 1
function elemental_tools_test:harness/report_fail with storage et_test:run