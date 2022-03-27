- [meeting notes March 27, 2022](#orgf7001d9)
  - [the raku study group](#org1f5343a)
  - ["Raku, Rust and Tidyverse"](#org776f187)
    - [Docker image to use raku with rstudio](#org904085e)
    - [<https://github.com/sumanstats/rakurstudio>](#org9fdeb73)
  - [an issue with "p6c" ecosystem](#org4b15575)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org44828f2)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org4722426)
  - [parrot raiser asks "how many lines of raku?"](#org4505157)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org06a648a)
  - [later:](#org9454d91)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org616687a)
    - [dead-link in roast tests: revise](#org9228af3)
  - [announcements](#orgd73b72b)
    - [April 10th: next raku study group meeting](#org367043a)
    - [June 21-25: tprc: perl/raku conference](#orgc9d3232)


<a id="orgf7001d9"></a>

# meeting notes March 27, 2022


<a id="org1f5343a"></a>

## the raku study group


<a id="org776f187"></a>

## "Raku, Rust and Tidyverse"


<a id="org904085e"></a>

### Docker image to use raku with rstudio


<a id="org9fdeb73"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org4b15575"></a>

## an issue with "p6c" ecosystem


<a id="org44828f2"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org4722426"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org4505157"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org06a648a"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org9454d91"></a>

## later:


<a id="org616687a"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org9228af3"></a>

### dead-link in roast tests: revise

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orgd73b72b"></a>

## announcements


<a id="org367043a"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgc9d3232"></a>

### June 21-25: tprc: perl/raku conference
