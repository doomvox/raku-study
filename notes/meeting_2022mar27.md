- [meeting notes March 27, 2022](#orga42f3ab)
  - [the raku study group](#org25ddb0e)
  - ["Raku, Rust and Tidyverse"](#orgbd69e29)
    - [Docker image to use raku with rstudio](#orgcf9b3cf)
    - [<https://github.com/sumanstats/rakurstudio>](#org7085372)
  - [an issue with "p6c" ecosystem](#org0797e07)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgef47f7b)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgf183415)
  - [parrot raiser asks "how many lines of raku?"](#org7aad48b)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#orgefaf7ae)
  - [bruce gray, weekly challenge](#orgc20ed3d)
    - [fortunate numbers](#orge23cc15)
    - [pisano<sub>period</sub>](#orga06d679)
    - [<https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>](#orgcb4f0e7)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>](#org157baa0)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>](#org93552a2)
    - [<https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>](#org8dea9f6)
    - [some discussion of juilia](#orge3a8df0)
  - [.trans allows regexs: how do ambiguous cases resolve?](#org62b08b0)
    - [longest token matching&#x2013; the tests for .trans are very good:](#org60539ad)
    - [dead-link in roast tests: revise (pull request)](#orgdab4574)
  - [rob asks about "DEPRECATED"](#org8f41743)
    - [postponed to next meeting](#orgf9d7164)
  - [announcements](#org12c54a3)
    - [April 10th: next raku study group meeting](#org3461b0b)
    - [June 21-25: tprc: perl/raku conference](#orgfee36ef)


<a id="orga42f3ab"></a>

# meeting notes March 27, 2022


<a id="org25ddb0e"></a>

## the raku study group


<a id="orgbd69e29"></a>

## "Raku, Rust and Tidyverse"


<a id="orgcf9b3cf"></a>

### Docker image to use raku with rstudio


<a id="org7085372"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org0797e07"></a>

## an issue with "p6c" ecosystem


<a id="orgef47f7b"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgf183415"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org7aad48b"></a>

## parrot raiser asks "how many lines of raku?"


<a id="orgefaf7ae"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="orgc20ed3d"></a>

## bruce gray, weekly challenge


<a id="orge23cc15"></a>

### fortunate numbers


<a id="orga06d679"></a>

### pisano<sub>period</sub>


<a id="orgcb4f0e7"></a>

### <https://theweeklychallenge.org/blog/perl-weekly-challenge-155/>


<a id="org157baa0"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/raku/ch-1.raku>


<a id="org93552a2"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-1.jl>


<a id="org8dea9f6"></a>

### <https://github.com/manwar/perlweeklychallenge-club/blob/master/challenge-155/bruce-gray/julia/ch-2.jl>


<a id="orge3a8df0"></a>

### some discussion of juilia


<a id="org62b08b0"></a>

## .trans allows regexs: how do ambiguous cases resolve?


<a id="org60539ad"></a>

### longest token matching&#x2013; the tests for .trans are very good:

./S05-transliteration/trans.t

is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgdab4574"></a>

### TODO dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org8f41743"></a>

## rob asks about "DEPRECATED"


<a id="orgf9d7164"></a>

### postponed to next meeting


<a id="org12c54a3"></a>

## announcements


<a id="org3461b0b"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgfee36ef"></a>

### June 21-25: tprc: perl/raku conference
