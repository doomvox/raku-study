- [](#org98941a4)


<a id="org98941a4"></a>

# 

| p5                                        | raku                                     |
|----------------------------------------- |---------------------------------------- |
| ^                                         | ^                                        |
| (        # Capture to $1                  | (   # Begin capture                      |
| [^=]\*?   =  \s+   # Begin after  '= '    | <-[=]>\*?  \\=  \s+   # Begin after '= ' |
| (?!      #  zero-width negative lookahead | <!before                                 |
|                                           | [                                        |
|                                           | [ <-[:]>\*? \\: ]\*                      |
|                                           | '/usr/local/bin'                         |
|                                           | [ \\: ## $ ]                             |
|                                           | ]                                        |
|                                           | >                                        |
|                                           | .\*  ## matches **everything**           |
|                                           | )   # End capture                        |
|                                           | $                                        |
|                                           |                                          |
|                                           |                                          |
