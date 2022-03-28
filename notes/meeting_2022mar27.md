- [meeting notes March 27, 2022](#orgecb4be1)
  - [the raku study group](#org78160c3)
  - ["Raku, Rust and Tidyverse"](#orgf9f75db)
    - [Docker image to use raku with rstudio](#org70ebe2f)
    - [<https://github.com/sumanstats/rakurstudio>](#orga4d3396)
  - [an issue with "p6c" ecosystem](#org32fa52c)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org0c76ebf)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org9b2fb76)
  - [parrot raiser asks "how many lines of raku?"](#orge076992)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org51df63f)
  - [bruce gray, weekly challenge](#orge953292)
    - [fortunate numbers](#org67ab9bb)
    - [pisano<sub>period</sub>](#org4e7b109)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org543df32)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org06d7248)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgad65fa3)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org8966296)
    - [some discussion of juilia](#orgcf2eced)
  - [.trans allows regexs: how do ambiguous cases resolve?](#org2dae967)
    - [longest token matching&#x2013; the tests for .trans are very good:](#org0740dd0)
    - [dead-link in roast tests: revise (pull request)](#orgd71de1b)
  - [rob asks about "DEPRECATED"](#org0d5ee44)
    - [postponed to next meeting](#orgdefb3fa)
  - [announcements](#org4ce475d)
    - [April 10th: next raku study group meeting](#orgfd8c621)
    - [June 21-25: tprc: perl/raku conference](#org1c4edf5)


<a id="orgecb4be1"></a>

# meeting notes March 27, 2022


<a id="org78160c3"></a>

## the raku study group


<a id="orgf9f75db"></a>

## "Raku, Rust and Tidyverse"


<a id="org70ebe2f"></a>

### Docker image to use raku with rstudio


<a id="orga4d3396"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org32fa52c"></a>

## an issue with "p6c" ecosystem


<a id="org0c76ebf"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org9b2fb76"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orge076992"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org51df63f"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orge953292"></a>

## bruce gray, weekly challenge


<a id="org67ab9bb"></a>

### fortunate numbers


<a id="org4e7b109"></a>

### pisano<sub>period</sub>


<a id="org543df32"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org06d7248"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgad65fa3"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org8966296"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="orgcf2eced"></a>

### some discussion of juilia


<a id="org2dae967"></a>

## .trans allows regexs: how do ambiguous cases resolve?


<a id="org0740dd0"></a>

### longest token matching&#x2013; the tests for .trans are very good:

1.  ./S05-transliteration/trans.t

    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgd71de1b"></a>

### TODO dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org0d5ee44"></a>

## rob asks about "DEPRECATED"


<a id="orgdefb3fa"></a>

### postponed to next meeting


<a id="org4ce475d"></a>

## announcements


<a id="orgfd8c621"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org1c4edf5"></a>

### June 21-25: tprc: perl/raku conference
