- [](#org5f054b7)


<a id="org5f054b7"></a>

# 

| p5             | raku                | comment                       |
|-------------- |------------------- |----------------------------- |
| ^              | ^                   |                               |
| (              | (                   | begin capture                 |
| [^=]\*? =  \s+ | <-[=]>\*?  \\=  \s+ | paths are after '= '          |
| (?!            | <!before            | zero-width negative lookahead |
| (?:            | [                   | non-capturing grouping        |
| [^:]\* : )\*   | [ <-[:]>\*? \\: ]\* |                               |
| /usr/local/bin | '/usr/local/bin'    |                               |
| (?: : ## $ )   | [ \\: ## $ ]        | (( ## stand-in for vertbar )) |
| )              | ]                   |                               |
|                | >                   |                               |
| .\*            | .\*                 | matches everything after =    |
| )              | )                   | end capture                   |
| $              | $                   |                               |
