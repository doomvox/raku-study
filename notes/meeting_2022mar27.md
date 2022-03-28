- [meeting notes March 27, 2022](#orgcf00810)
  - [the raku study group](#orgddc5eea)
  - ["Raku, Rust and Tidyverse"](#org71a2e28)
    - [Docker image to use raku with rstudio](#org5f799d3)
    - [<https://github.com/sumanstats/rakurstudio>](#org42ac37f)
  - [an issue with "p6c" ecosystem](#org325577b)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org9e7953f)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org976a25c)
  - [parrot raiser asks "how many lines of raku?"](#orge299753)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orge5a6b9b)
  - [bruce gray, weekly challenge](#org791bbc7)
    - [fortunate numbers](#orgc1ded7c)
    - [pisano<sub>period</sub>](#orgfad15a3)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org67dc51e)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org0abc7e3)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgf4d3ad2)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#orgd291b4e)
    - [some discussion of juilia](#org470b66c)
  - [.trans allows regexs: how do ambiguous cases resolve?](#org6d5b9ae)
    - [longest token matching&#x2013; the tests for .trans are very good:](#orgecad531)
    - [dead-link in roast tests: revise (pull request)](#org806db7d)
  - [rob asks about "DEPRECATED"](#org84a039f)
    - [postponed to next meeting](#orgcac2bea)
  - [announcements](#org32cbc9e)
    - [April 10th: next raku study group meeting](#org41c4d38)
    - [June 21-25: tprc: perl/raku conference](#orge0efeb0)


<a id="orgcf00810"></a>

# meeting notes March 27, 2022


<a id="orgddc5eea"></a>

## the raku study group


<a id="org71a2e28"></a>

## "Raku, Rust and Tidyverse"


<a id="org5f799d3"></a>

### Docker image to use raku with rstudio


<a id="org42ac37f"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org325577b"></a>

## an issue with "p6c" ecosystem


<a id="org9e7953f"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org976a25c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orge299753"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orge5a6b9b"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org791bbc7"></a>

## bruce gray, weekly challenge


<a id="orgc1ded7c"></a>

### fortunate numbers


<a id="orgfad15a3"></a>

### pisano<sub>period</sub>


<a id="org67dc51e"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org0abc7e3"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgf4d3ad2"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="orgd291b4e"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org470b66c"></a>

### some discussion of juilia


<a id="org6d5b9ae"></a>

## .trans allows regexs: how do ambiguous cases resolve?


<a id="orgecad531"></a>

### longest token matching&#x2013; the tests for .trans are very good:

1.  roast/S05-transliteration/trans.t

    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org806db7d"></a>

### TODO dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org84a039f"></a>

## rob asks about "DEPRECATED"


<a id="orgcac2bea"></a>

### postponed to next meeting


<a id="org32cbc9e"></a>

## announcements


<a id="org41c4d38"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orge0efeb0"></a>

### June 21-25: tprc: perl/raku conference
