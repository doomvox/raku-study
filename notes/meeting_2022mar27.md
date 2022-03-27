- [meeting notes March 27, 2022](#org2237c4a)
  - [the raku study group](#org516ac2f)
  - ["Raku, Rust and Tidyverse"](#org07337fe)
    - [Docker image to use raku with rstudio](#orge84daf3)
    - [<https://github.com/sumanstats/rakurstudio>](#org81a903f)
  - [an issue with "p6c" ecosystem](#org5f9434c)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org6b026e5)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org4f97021)
  - [parrot raiser asks "how many lines of raku?"](#org04c0e9d)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgf879472)
  - [later:](#orgce05918)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org3d67476)
    - [dead-link in roast tests: revise](#orge30a5b6)
  - [announcements](#org94fb146)
    - [April 10th: next raku study group meeting](#org8ad8e8f)
    - [June 21-25: tprc: perl/raku conference](#orgfc53fc4)


<a id="org2237c4a"></a>

# meeting notes March 27, 2022


<a id="org516ac2f"></a>

## the raku study group


<a id="org07337fe"></a>

## "Raku, Rust and Tidyverse"


<a id="orge84daf3"></a>

### Docker image to use raku with rstudio


<a id="org81a903f"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org5f9434c"></a>

## an issue with "p6c" ecosystem


<a id="org6b026e5"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org4f97021"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org04c0e9d"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgf879472"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgce05918"></a>

## later:


<a id="org3d67476"></a>

### .trans allows regexs: how do ambiguous cases resolve?

S05 trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orge30a5b6"></a>

### dead-link in roast tests: revise

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>


<a id="org94fb146"></a>

## announcements


<a id="org8ad8e8f"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgfc53fc4"></a>

### June 21-25: tprc: perl/raku conference
