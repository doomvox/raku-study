- [meeting notes March 27, 2022](#org897ca64)
  - [the raku study group](#org0e5767f)
  - ["Raku, Rust and Tidyverse"](#org9f3e032)
    - [Docker image to use raku with rstudio](#org2efa1fd)
    - [<https://github.com/sumanstats/rakurstudio>](#orgf6aaa79)
  - [an issue with "p6c" ecosystem](#orgd2c8925)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgab4e042)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org954f383)
  - [parrot raiser asks "how many lines of raku?"](#org69b4bb7)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org18eebca)
  - [bruce gray, weekly challenge](#orgfb65d00)
    - [fortunate numbers](#org5519c32)
    - [pisano<sub>period</sub>](#orgfc0fd00)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#orgf7b5b3a)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org891425e)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgda65764)
  - [later:](#org0c7f8ea)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org4c19efc)
    - [dead-link in roast tests: revise (pull request)](#org84ce913)
  - [announcements](#org063131c)
    - [April 10th: next raku study group meeting](#orge16f44b)
    - [June 21-25: tprc: perl/raku conference](#orgbbf3d69)


<a id="org897ca64"></a>

# meeting notes March 27, 2022


<a id="org0e5767f"></a>

## the raku study group


<a id="org9f3e032"></a>

## "Raku, Rust and Tidyverse"


<a id="org2efa1fd"></a>

### Docker image to use raku with rstudio


<a id="orgf6aaa79"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgd2c8925"></a>

## an issue with "p6c" ecosystem


<a id="orgab4e042"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org954f383"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org69b4bb7"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org18eebca"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgfb65d00"></a>

## bruce gray, weekly challenge


<a id="org5519c32"></a>

### fortunate numbers


<a id="orgfc0fd00"></a>

### pisano<sub>period</sub>


<a id="orgf7b5b3a"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org891425e"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgda65764"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org0c7f8ea"></a>

## later:


<a id="org4c19efc"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org84ce913"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org063131c"></a>

## announcements


<a id="orge16f44b"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgbbf3d69"></a>

### June 21-25: tprc: perl/raku conference
