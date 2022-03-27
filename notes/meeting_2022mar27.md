- [meeting notes March 27, 2022](#org66327c8)
  - [the raku study group](#orgc7b6327)
  - ["Raku, Rust and Tidyverse"](#orgd73cdcd)
    - [Docker image to use raku with rstudio](#org40c71ae)
    - [<https://github.com/sumanstats/rakurstudio>](#org53dc703)
  - [an issue with "p6c" ecosystem](#orgd3880d0)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org5e23a1d)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org0184dc5)
  - [parrot raiser asks "how many lines of raku?"](#orgdc038e6)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org1a9f7e3)
  - [later:](#org32e897a)
    - [.trans allows regexs: how do ambiguous cases resolve?](#orgca7da87)
    - [dead-link in roast tests: revise](#org87136ed)
  - [announcements](#org00a12a4)
    - [April 10th: next raku study group meeting](#org80a1cbe)
    - [June 21-25: tprc: perl/raku conference](#org9031a8a)


<a id="org66327c8"></a>

# meeting notes March 27, 2022


<a id="orgc7b6327"></a>

## the raku study group


<a id="orgd73cdcd"></a>

## "Raku, Rust and Tidyverse"


<a id="org40c71ae"></a>

### Docker image to use raku with rstudio


<a id="org53dc703"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgd3880d0"></a>

## an issue with "p6c" ecosystem


<a id="org5e23a1d"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org0184dc5"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgdc038e6"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org1a9f7e3"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org32e897a"></a>

## later:


<a id="orgca7da87"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org87136ed"></a>

### dead-link in roast tests: revise

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>


<a id="org00a12a4"></a>

## announcements


<a id="org80a1cbe"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org9031a8a"></a>

### June 21-25: tprc: perl/raku conference
