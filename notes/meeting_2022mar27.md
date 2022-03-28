- [meeting notes March 27, 2022](#orgbf6c686)
  - [the raku study group](#org83271fc)
  - ["Raku, Rust and Tidyverse"](#orgcb63994)
    - [Docker image to use raku with rstudio](#orge5352dd)
    - [<https://github.com/sumanstats/rakurstudio>](#orgfaa98ea)
  - [an issue with "p6c" ecosystem](#org8c72019)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org6f0251a)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org95d3241)
  - [parrot raiser asks "how many lines of raku?"](#org1002c81)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgc68b4be)
  - [bruce gray, weekly challenge](#org7082c64)
    - [fortunate numbers](#org14adbde)
    - [pisano<sub>period</sub>](#orgc88a20b)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#orge59bd99)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#orgd30fbeb)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgdf9cd44)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org3e413ae)
    - [some discussion of juilia](#org4cf6a47)
  - [.trans allows regexs: how do ambiguous cases resolve?](#org0057572)
    - [longest token matching (tests for .trans are very good):](#org150649a)
    - [dead-link in roast tests: revise (pull request)](#org4d872ff)
  - [rob asks about "DEPRECATED"](#orgac32bf0)
    - [postponed to next meeting](#org8779cc1)
  - [announcements](#org2cb4777)
    - [April 10th: next raku study group meeting](#orgaac0345)
    - [June 21-25: tprc: perl/raku conference](#orge2b7229)


<a id="orgbf6c686"></a>

# meeting notes March 27, 2022


<a id="org83271fc"></a>

## the raku study group


<a id="orgcb63994"></a>

## "Raku, Rust and Tidyverse"


<a id="orge5352dd"></a>

### Docker image to use raku with rstudio


<a id="orgfaa98ea"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org8c72019"></a>

## an issue with "p6c" ecosystem


<a id="org6f0251a"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org95d3241"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org1002c81"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgc68b4be"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org7082c64"></a>

## bruce gray, weekly challenge


<a id="org14adbde"></a>

### fortunate numbers


<a id="orgc88a20b"></a>

### pisano<sub>period</sub>


<a id="orge59bd99"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="orgd30fbeb"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgdf9cd44"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org3e413ae"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org4cf6a47"></a>

### some discussion of juilia


<a id="org0057572"></a>

## .trans allows regexs: how do ambiguous cases resolve?


<a id="org150649a"></a>

### longest token matching (tests for .trans are very good):

./S05-transliteration/trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org4d872ff"></a>

### TODO dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orgac32bf0"></a>

## rob asks about "DEPRECATED"


<a id="org8779cc1"></a>

### postponed to next meeting


<a id="org2cb4777"></a>

## announcements


<a id="orgaac0345"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orge2b7229"></a>

### June 21-25: tprc: perl/raku conference
