- [](#org04b9a7b)


<a id="org04b9a7b"></a>

# 

| p5             | raku                | comment                        |
|-------------- |------------------- |------------------------------ |
| ^              | ^                   | bos                            |
| (              | (                   | begin capture                  |
| [^=]\*? =  \s+ | <-[=]>\*?  \\=  \s+ | paths are after '= '           |
| (?!            | <!before            | zero-width negative lookahead  |
| (?:            | [                   | non-capturing grouping         |
| [^:]\* :       | [ <-[:]>\*? \\:     |                                |
| )\*            | ]\*                 | 0 or more of the non-cap group |
| /usr/local/bin | '/usr/local/bin'    |                                |
| (?: : ## $ )   | [ \\: ## $ ]        | colon or end-of-string         |
| )              | ]                   |                                |
|                | >                   |                                |
| .\*            | .\*                 | matches everything after =     |
| )              | )                   | end capture                    |
| $              | $                   | eos                            |

\## is a stand-in for vertbar
