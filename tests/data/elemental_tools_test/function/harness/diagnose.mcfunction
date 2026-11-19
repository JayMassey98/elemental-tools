## TEMPORARY. Shows which step of the tool code stops working. Prints ET_DIAG lines to the server log.
## Remove the call to this function from harness/run once the problem is fixed.

data modify storage et_test:run name set value "diagnose"
function armour:harness/begin_test
execute positioned 8 150 8 run function elemental_tools_test:harness/diagnose_steps
function armour:harness/begin_test