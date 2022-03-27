- [meeting notes March 27, 2022](#org02c9f64)
  - [the raku study group](#org90ae099)
  - ["Raku, Rust and Tidyverse"](#org7ab2de2)
    - [Docker image to use raku with rstudio](#org6b5d350)
    - [<https://github.com/sumanstats/rakurstudio>](#orgd7367df)
  - [an issue with "p6c" ecosystem](#org2b4d9f7)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgadf6974)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org09d867d)
  - [parrot raiser asks "how many lines of raku?"](#org0a2e1c2)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orga8a3d52)
  - [bruce gray, weekly challenge](#org3894924)
    - [](#org6db22e1)
    - [pisano<sub>period</sub>](#org66b5f9e)
  - [later:](#org7050d83)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org9473e02)
    - [dead-link in roast tests: revise (pull request)](#orge1f5921)
  - [announcements](#org1eb3020)
    - [April 10th: next raku study group meeting](#orgf6436bd)
    - [June 21-25: tprc: perl/raku conference](#orgb656596)


<a id="org02c9f64"></a>

# meeting notes March 27, 2022


<a id="org90ae099"></a>

## the raku study group


<a id="org7ab2de2"></a>

## "Raku, Rust and Tidyverse"


<a id="org6b5d350"></a>

### Docker image to use raku with rstudio


<a id="orgd7367df"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org2b4d9f7"></a>

## an issue with "p6c" ecosystem


<a id="orgadf6974"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org09d867d"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org0a2e1c2"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orga8a3d52"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org3894924"></a>

## bruce gray, weekly challenge

<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org6db22e1"></a>

### 


<a id="org66b5f9e"></a>

### pisano<sub>period</sub>


<a id="org7050d83"></a>

## later:


<a id="org9473e02"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orge1f5921"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org1eb3020"></a>

## announcements


<a id="orgf6436bd"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgb656596"></a>

### June 21-25: tprc: perl/raku conference
