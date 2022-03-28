- [meeting notes March 27, 2022](#orga4aba41)
  - [the raku study group](#org9228695)
  - ["Raku, Rust and Tidyverse"](#org2d0289e)
    - [Docker image to use raku with rstudio](#org749dbf1)
    - [<https://github.com/sumanstats/rakurstudio>](#org095520f)
  - [an issue with "p6c" ecosystem](#org74b3b67)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org410898c)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org6723051)
  - [parrot raiser asks "how many lines of raku?"](#org8b03e59)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgd96b501)
  - [bruce gray, weekly challenge](#org9f693d3)
    - [fortunate numbers](#org6457614)
    - [pisano<sub>period</sub>](#orgebd1ab0)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org55fe4ef)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org29b9d26)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org51b7383)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org668099e)
    - [some discussion of juilia](#org1a901a2)
  - [rob asks about "deprecate"](#orgd4e75bb)
  - [later:](#orga846229)
  - [.trans allows regexs: how do ambiguous cases resolve?](#orgfc66076)
    - [longest token matching (tests for .trans are very good):](#org34905e4)
    - [dead-link in roast tests: revise (pull request)](#org35123cb)
  - [announcements](#orgd89458a)
    - [April 10th: next raku study group meeting](#orgc20c489)
    - [June 21-25: tprc: perl/raku conference](#org2fd2605)


<a id="orga4aba41"></a>

# meeting notes March 27, 2022


<a id="org9228695"></a>

## the raku study group


<a id="org2d0289e"></a>

## "Raku, Rust and Tidyverse"


<a id="org749dbf1"></a>

### Docker image to use raku with rstudio


<a id="org095520f"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org74b3b67"></a>

## an issue with "p6c" ecosystem


<a id="org410898c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org6723051"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org8b03e59"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgd96b501"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org9f693d3"></a>

## bruce gray, weekly challenge


<a id="org6457614"></a>

### fortunate numbers


<a id="orgebd1ab0"></a>

### pisano<sub>period</sub>


<a id="org55fe4ef"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org29b9d26"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org51b7383"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org668099e"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org1a901a2"></a>

### some discussion of juilia


<a id="orgd4e75bb"></a>

## rob asks about "deprecate"


<a id="orga846229"></a>

## later:


<a id="orgfc66076"></a>

## .trans allows regexs: how do ambiguous cases resolve?


<a id="org34905e4"></a>

### longest token matching (tests for .trans are very good):

./S05-transliteration/trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org35123cb"></a>

### TODO dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orgd89458a"></a>

## announcements


<a id="orgc20c489"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org2fd2605"></a>

### June 21-25: tprc: perl/raku conference
