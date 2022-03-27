- [meeting notes March 27, 2022](#org1bd8a59)
  - [the raku study group](#orgad70c36)
  - ["Raku, Rust and Tidyverse"](#org5ea3102)
    - [Docker image to use raku with rstudio](#orge265d4e)
    - [<https://github.com/sumanstats/rakurstudio>](#org3e18771)
  - [an issue with "p6c" ecosystem](#org98902ed)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgf64e09c)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org5d9649a)
  - [parrot raiser asks "how many lines of raku?"](#org6c0c9b1)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgd577952)
  - [bruce gray, weekly challenge](#org8580af9)
    - [](#orgc664168)
    - [pisano<sub>period</sub>](#org9c51b42)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#orgcec9bbe)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org065d89a)
  - [later:](#org5f71b73)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org3c766ae)
    - [dead-link in roast tests: revise (pull request)](#org0b789eb)
  - [announcements](#org0952351)
    - [April 10th: next raku study group meeting](#orgbc248ef)
    - [June 21-25: tprc: perl/raku conference](#orge1d7484)


<a id="org1bd8a59"></a>

# meeting notes March 27, 2022


<a id="orgad70c36"></a>

## the raku study group


<a id="org5ea3102"></a>

## "Raku, Rust and Tidyverse"


<a id="orge265d4e"></a>

### Docker image to use raku with rstudio


<a id="org3e18771"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org98902ed"></a>

## an issue with "p6c" ecosystem


<a id="orgf64e09c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org5d9649a"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org6c0c9b1"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgd577952"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org8580af9"></a>

## bruce gray, weekly challenge


<a id="orgc664168"></a>

### 


<a id="org9c51b42"></a>

### pisano<sub>period</sub>


<a id="orgcec9bbe"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org065d89a"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org5f71b73"></a>

## later:


<a id="org3c766ae"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org0b789eb"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org0952351"></a>

## announcements


<a id="orgbc248ef"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orge1d7484"></a>

### June 21-25: tprc: perl/raku conference
