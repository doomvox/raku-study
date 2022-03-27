- [meeting notes March 27, 2022](#org5cdb20c)
  - [the raku study group](#org5b165dc)
  - ["Raku, Rust and Tidyverse"](#org9c3e458)
    - [Docker image to use raku with rstudio](#org67d8975)
    - [<https://github.com/sumanstats/rakurstudio>](#org8f97320)
  - [an issue with "p6c" ecosystem](#org3dfa18e)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org04bec1a)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgb4b79ed)
  - [parrot raiser asks "how many lines of raku?"](#orgb59a4fd)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgb1de20d)
  - [later:](#orgd16d255)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org4af29dd)
    - [dead-link in roast tests: revise](#orge4eb888)
  - [announcements](#orgcf1335e)
    - [April 10th: next raku study group meeting](#orgad37e04)
    - [June 21-25: tprc: perl/raku conference](#org74a7751)


<a id="org5cdb20c"></a>

# meeting notes March 27, 2022


<a id="org5b165dc"></a>

## the raku study group


<a id="org9c3e458"></a>

## "Raku, Rust and Tidyverse"


<a id="org67d8975"></a>

### Docker image to use raku with rstudio


<a id="org8f97320"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org3dfa18e"></a>

## an issue with "p6c" ecosystem


<a id="org04bec1a"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgb4b79ed"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgb59a4fd"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgb1de20d"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgd16d255"></a>

## later:


<a id="org4af29dd"></a>

### .trans allows regexs: how do ambiguous cases resolve?

S05 trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orge4eb888"></a>

### dead-link in roast tests: revise

1.  # <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>


<a id="orgcf1335e"></a>

## announcements


<a id="orgad37e04"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org74a7751"></a>

### June 21-25: tprc: perl/raku conference
