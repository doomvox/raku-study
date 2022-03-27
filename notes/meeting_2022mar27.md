- [meeting notes March 27, 2022](#org3cb1eeb)
  - [the raku study group](#orgf524a02)
  - ["Raku, Rust and Tidyverse"](#org698e9ee)
    - [Docker image to use raku with rstudio](#org8843a05)
    - [<https://github.com/sumanstats/rakurstudio>](#orgfca8e99)
  - [an issue with "p6c" ecosystem](#org97e9bd0)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org8698c51)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgcc570bc)
  - [parrot raiser asks "how many lines of raku?"](#org716257e)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgeceeb11)
  - [bruce gray, weekly challenge](#org7f88dee)
    - [fortunate numbers](#orgf09d53e)
    - [pisano<sub>period</sub>](#org0a39c0e)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#orgc40b6cd)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org50c1e83)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgc45b3ee)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org063e9c1)
  - [later:](#org852af1d)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org12a23db)
    - [dead-link in roast tests: revise (pull request)](#orgcf61df1)
  - [announcements](#org7ab92d9)
    - [April 10th: next raku study group meeting](#org80e0847)
    - [June 21-25: tprc: perl/raku conference](#org0012e47)


<a id="org3cb1eeb"></a>

# meeting notes March 27, 2022


<a id="orgf524a02"></a>

## the raku study group


<a id="org698e9ee"></a>

## "Raku, Rust and Tidyverse"


<a id="org8843a05"></a>

### Docker image to use raku with rstudio


<a id="orgfca8e99"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org97e9bd0"></a>

## an issue with "p6c" ecosystem


<a id="org8698c51"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgcc570bc"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org716257e"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgeceeb11"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org7f88dee"></a>

## bruce gray, weekly challenge


<a id="orgf09d53e"></a>

### fortunate numbers


<a id="org0a39c0e"></a>

### pisano<sub>period</sub>


<a id="orgc40b6cd"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org50c1e83"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgc45b3ee"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org063e9c1"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org852af1d"></a>

## later:


<a id="org12a23db"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgcf61df1"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org7ab92d9"></a>

## announcements


<a id="org80e0847"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org0012e47"></a>

### June 21-25: tprc: perl/raku conference
