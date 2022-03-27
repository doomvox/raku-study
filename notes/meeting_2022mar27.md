- [meeting notes March 27, 2022](#orged3b09e)
  - [the raku study group](#orgff6d9d3)
  - ["Raku, Rust and Tidyverse"](#orgd2f6fef)
    - [Docker image to use raku with rstudio](#org94522a8)
    - [<https://github.com/sumanstats/rakurstudio>](#org11cc408)
  - [an issue with "p6c" ecosystem](#orgedce08f)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orga410256)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org52d0297)
  - [parrot raiser asks "how many lines of raku?"](#org0389b17)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org51d1ad9)
  - [bruce gray, weekly challenge](#orgf3d42a5)
    - [fortunate numbers](#orgd6a62c7)
    - [pisano<sub>period</sub>](#org729d38f)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#orga24f28b)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org565159c)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgfe33093)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org5a97f6c)
    - [some discussion of juilia](#org108d007)
  - [later:](#org79291e1)
    - [.trans allows regexs: how do ambiguous cases resolve?](#orgaa61cc8)
    - [dead-link in roast tests: revise (pull request)](#orgf62e959)
  - [announcements](#org6499a88)
    - [April 10th: next raku study group meeting](#org4a15f02)
    - [June 21-25: tprc: perl/raku conference](#org520749a)


<a id="orged3b09e"></a>

# meeting notes March 27, 2022


<a id="orgff6d9d3"></a>

## the raku study group


<a id="orgd2f6fef"></a>

## "Raku, Rust and Tidyverse"


<a id="org94522a8"></a>

### Docker image to use raku with rstudio


<a id="org11cc408"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgedce08f"></a>

## an issue with "p6c" ecosystem


<a id="orga410256"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org52d0297"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org0389b17"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org51d1ad9"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgf3d42a5"></a>

## bruce gray, weekly challenge


<a id="orgd6a62c7"></a>

### fortunate numbers


<a id="org729d38f"></a>

### pisano<sub>period</sub>


<a id="orga24f28b"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org565159c"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgfe33093"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org5a97f6c"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org108d007"></a>

### some discussion of juilia


<a id="org79291e1"></a>

## later:


<a id="orgaa61cc8"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgf62e959"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org6499a88"></a>

## announcements


<a id="org4a15f02"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org520749a"></a>

### June 21-25: tprc: perl/raku conference
