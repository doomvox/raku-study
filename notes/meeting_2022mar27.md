- [meeting notes March 27, 2022](#org3f47543)
  - [the raku study group](#org382c2aa)
  - ["Raku, Rust and Tidyverse"](#orgcf0138a)
    - [Docker image to use raku with rstudio](#org5c7742d)
    - [<https://github.com/sumanstats/rakurstudio>](#orgd9d7d95)
  - [an issue with "p6c" ecosystem](#org93d2466)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org160cade)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org07f77e5)
  - [parrot raiser asks "how many lines of raku?"](#orgf786e48)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org9e53bae)
  - [bruce gray, weekly challenge](#org7ffeddf)
    - [](#orgd47560f)
    - [pisano<sub>period</sub>](#org1ad740c)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org0aa5be0)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org448fdaf)
  - [later:](#org866c660)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org11c905f)
    - [dead-link in roast tests: revise (pull request)](#org7f82e00)
  - [announcements](#org896281a)
    - [April 10th: next raku study group meeting](#orge9eb2b8)
    - [June 21-25: tprc: perl/raku conference](#org6ca9ec1)


<a id="org3f47543"></a>

# meeting notes March 27, 2022


<a id="org382c2aa"></a>

## the raku study group


<a id="orgcf0138a"></a>

## "Raku, Rust and Tidyverse"


<a id="org5c7742d"></a>

### Docker image to use raku with rstudio


<a id="orgd9d7d95"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org93d2466"></a>

## an issue with "p6c" ecosystem


<a id="org160cade"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org07f77e5"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgf786e48"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org9e53bae"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org7ffeddf"></a>

## bruce gray, weekly challenge


<a id="orgd47560f"></a>

### 


<a id="org1ad740c"></a>

### pisano<sub>period</sub>


<a id="org0aa5be0"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org448fdaf"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org866c660"></a>

## later:


<a id="org11c905f"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org7f82e00"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org896281a"></a>

## announcements


<a id="orge9eb2b8"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org6ca9ec1"></a>

### June 21-25: tprc: perl/raku conference
