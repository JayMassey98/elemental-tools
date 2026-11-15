## Entry point. Run once on a running server to start the whole test suite:
##   /function elemental_tools_test:harness/start
## Results are written to the server log as ET_FAIL / ET_SKIP / ET_COUNTS / ET_RESULT lines.

scoreboard objectives add et_test dummy
scoreboard players set #attempts et_test 0

# The arena is the chunk containing 0 0, high above any terrain (see harness/run).
forceload add 0 0 15 15
function elemental_tools_test:harness/wait_for_arena