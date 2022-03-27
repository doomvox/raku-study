- [meeting notes March 27, 2022](#org1b6648f)
  - [the raku study group](#orgbf8202f)
  - ["Raku, Rust and Tidyverse"](#orgf2164c7)
    - [Docker image to use raku with rstudio](#orga7c1a96)
    - [<https://github.com/sumanstats/rakurstudio>](#org15c44ad)
  - [an issue with "p6c" ecosystem](#orgbaaae97)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgb156481)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgfb3a8ef)
  - [parrot raiser asks "how many lines of raku?"](#org3434ff5)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org18d3ca5)
  - [later:](#org0f13b24)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org31c7016)
    - [dead-link in roast tests: revise](#org7098601)
  - [announcements](#orge9be7a8)
    - [April 10th: next raku study group meeting](#orgc119910)
    - [June 21-25: tprc: perl/raku conference](#org660a3c0)


<a id="org1b6648f"></a>

# meeting notes March 27, 2022


<a id="orgbf8202f"></a>

## the raku study group


<a id="orgf2164c7"></a>

## "Raku, Rust and Tidyverse"


<a id="orga7c1a96"></a>

### Docker image to use raku with rstudio


<a id="org15c44ad"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgbaaae97"></a>

## an issue with "p6c" ecosystem


<a id="orgb156481"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgfb3a8ef"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org3434ff5"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org18d3ca5"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org0f13b24"></a>

## later:


<a id="org31c7016"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org7098601"></a>

### dead-link in roast tests: revise

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>


<a id="orge9be7a8"></a>

## announcements


<a id="orgc119910"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org660a3c0"></a>

### June 21-25: tprc: perl/raku conference
