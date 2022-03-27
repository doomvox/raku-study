- [meeting notes March 27, 2022](#org3c69731)
  - [the raku study group](#org756c72b)
  - ["Raku, Rust and Tidyverse"](#org04481c8)
    - [Docker image to use raku with rstudio](#org68e80bf)
    - [<https://github.com/sumanstats/rakurstudio>](#org40e385a)
  - [an issue with "p6c" ecosystem](#org86c0cc5)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org2ac689c)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org4f7a8cb)
  - [parrot raiser asks "how many lines of raku?"](#org4d20247)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org7b5c18a)
  - [bruce gray, weekly challenge](#org240726a)
    - [](#orgee02c10)
    - [pisano<sub>period</sub>](#org53da88a)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#org14b7b6f)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org6e97fe6)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org684693d)
  - [later:](#org593bbc7)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org0aa9e10)
    - [dead-link in roast tests: revise (pull request)](#org640d412)
  - [announcements](#orge4ae030)
    - [April 10th: next raku study group meeting](#org021794c)
    - [June 21-25: tprc: perl/raku conference](#org99acdcb)


<a id="org3c69731"></a>

# meeting notes March 27, 2022


<a id="org756c72b"></a>

## the raku study group


<a id="org04481c8"></a>

## "Raku, Rust and Tidyverse"


<a id="org68e80bf"></a>

### Docker image to use raku with rstudio


<a id="org40e385a"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org86c0cc5"></a>

## an issue with "p6c" ecosystem


<a id="org2ac689c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org4f7a8cb"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org4d20247"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org7b5c18a"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org240726a"></a>

## bruce gray, weekly challenge


<a id="orgee02c10"></a>

### 


<a id="org53da88a"></a>

### pisano<sub>period</sub>


<a id="org14b7b6f"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org6e97fe6"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org684693d"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org593bbc7"></a>

## later:


<a id="org0aa9e10"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org640d412"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orge4ae030"></a>

## announcements


<a id="org021794c"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org99acdcb"></a>

### June 21-25: tprc: perl/raku conference
