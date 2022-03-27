- [meeting notes March 27, 2022](#org6a6f589)
  - [the raku study group](#org314145b)
  - ["Raku, Rust and Tidyverse"](#org25d7c71)
    - [Docker image to use raku with rstudio](#org0567467)
    - [<https://github.com/sumanstats/rakurstudio>](#org8233ff0)
  - [an issue with "p6c" ecosystem](#orgf1c4f8f)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgba8053d)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org40c382c)
  - [parrot raiser asks "how many lines of raku?"](#orgb0bafd0)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org09c54a0)
  - [later:](#org84c7c15)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org2e83be5)
  - [announcements](#org99364e0)
    - [April 10th: next raku study group meeting](#org00b2692)
    - [June 21-25: tprc: perl/raku conference](#org7a4c20b)


<a id="org6a6f589"></a>

# meeting notes March 27, 2022


<a id="org314145b"></a>

## the raku study group


<a id="org25d7c71"></a>

## "Raku, Rust and Tidyverse"


<a id="org0567467"></a>

### Docker image to use raku with rstudio


<a id="org8233ff0"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgf1c4f8f"></a>

## an issue with "p6c" ecosystem


<a id="orgba8053d"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org40c382c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgb0bafd0"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org09c54a0"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org84c7c15"></a>

## later:


<a id="org2e83be5"></a>

### .trans allows regexs: how do ambiguous cases resolve?

S05 trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org99364e0"></a>

## announcements


<a id="org00b2692"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org7a4c20b"></a>

### June 21-25: tprc: perl/raku conference
