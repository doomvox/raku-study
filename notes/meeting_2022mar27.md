- [meeting notes March 27, 2022](#orge537a4f)
  - [the raku study group](#orge3061a6)
  - ["Raku, Rust and Tidyverse"](#org8c79fbe)
    - [Docker image to use raku with rstudio](#org6c84da7)
    - [<https://github.com/sumanstats/rakurstudio>](#orgc4c5a0c)
  - [an issue with "p6c" ecosystem](#orgecbb488)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org2b757b6)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org11b9755)
  - [parrot raiser asks "how many lines of raku?"](#orgddb15c2)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgf5e6cd7)
  - [bruce gray, weekly challenge](#orgdd7ea03)
    - [fortunate numbers](#org19bf5cf)
    - [pisano<sub>period</sub>](#org3305ee7)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org4b94178)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org3887f7a)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org41a292a)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#orgd75e344)
    - [some discussion of juilia](#org66f1174)
  - [rob asks about "deprecate"](#org4e4d306)
  - [later:](#orgd0aafd7)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org97178e5)
    - [dead-link in roast tests: revise (pull request)](#orge465fff)
  - [announcements](#orgbb30166)
    - [April 10th: next raku study group meeting](#org53c08e6)
    - [June 21-25: tprc: perl/raku conference](#org5751958)


<a id="orge537a4f"></a>

# meeting notes March 27, 2022


<a id="orge3061a6"></a>

## the raku study group


<a id="org8c79fbe"></a>

## "Raku, Rust and Tidyverse"


<a id="org6c84da7"></a>

### Docker image to use raku with rstudio


<a id="orgc4c5a0c"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgecbb488"></a>

## an issue with "p6c" ecosystem


<a id="org2b757b6"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org11b9755"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgddb15c2"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgf5e6cd7"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgdd7ea03"></a>

## bruce gray, weekly challenge


<a id="org19bf5cf"></a>

### fortunate numbers


<a id="org3305ee7"></a>

### pisano<sub>period</sub>


<a id="org4b94178"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org3887f7a"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org41a292a"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="orgd75e344"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org66f1174"></a>

### some discussion of juilia


<a id="org4e4d306"></a>

## rob asks about "deprecate"


<a id="orgd0aafd7"></a>

## later:


<a id="org97178e5"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orge465fff"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orgbb30166"></a>

## announcements


<a id="org53c08e6"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org5751958"></a>

### June 21-25: tprc: perl/raku conference
