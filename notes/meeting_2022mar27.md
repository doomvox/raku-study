- [meeting notes March 27, 2022](#org1c32f58)
  - [the raku study group](#org7f1a101)
  - ["Raku, Rust and Tidyverse"](#orge8de6f7)
    - [Docker image to use raku with rstudio](#orgdaa19fc)
    - [<https://github.com/sumanstats/rakurstudio>](#orgc443f20)
  - [an issue with "p6c" ecosystem](#orga1f3c9f)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgdea986a)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgba70bdc)
  - [parrot raiser asks "how many lines of raku?"](#org5122373)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org3c2d4eb)
  - [bruce gray, weekly challenge](#orgb0782d1)
    - [fortunate numbers](#org36480c7)
    - [pisano<sub>period</sub>](#orgaafca93)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org406f4de)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#orgbb37060)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#orgba6fe40)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org4831b20)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org3f0a7db)
  - [later:](#org3c4fe97)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org35b1d93)
    - [dead-link in roast tests: revise (pull request)](#orgb5e081d)
  - [announcements](#org6953d26)
    - [April 10th: next raku study group meeting](#org14b0cee)
    - [June 21-25: tprc: perl/raku conference](#orge91fd2b)


<a id="org1c32f58"></a>

# meeting notes March 27, 2022


<a id="org7f1a101"></a>

## the raku study group


<a id="orge8de6f7"></a>

## "Raku, Rust and Tidyverse"


<a id="orgdaa19fc"></a>

### Docker image to use raku with rstudio


<a id="orgc443f20"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orga1f3c9f"></a>

## an issue with "p6c" ecosystem


<a id="orgdea986a"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgba70bdc"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org5122373"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org3c2d4eb"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgb0782d1"></a>

## bruce gray, weekly challenge


<a id="org36480c7"></a>

### fortunate numbers


<a id="orgaafca93"></a>

### pisano<sub>period</sub>


<a id="org406f4de"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="orgbb37060"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="orgba6fe40"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org4831b20"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="org3f0a7db"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org3c4fe97"></a>

## later:


<a id="org35b1d93"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgb5e081d"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org6953d26"></a>

## announcements


<a id="org14b0cee"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orge91fd2b"></a>

### June 21-25: tprc: perl/raku conference
