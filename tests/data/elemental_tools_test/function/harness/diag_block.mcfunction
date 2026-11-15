## TEMPORARY. Print whether the block at the test position matches. Call with {id:"D3 some step",block:"minecraft:coarse_dirt"}.

$execute if block ~ ~ ~ $(block) run say ET_DIAG $(id): yes, the block is now $(block)
$execute unless block ~ ~ ~ $(block) run say ET_DIAG $(id): NO, the block is not $(block)