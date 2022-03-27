- [meeting notes March 27, 2022](#org3e3aeae)
  - [the raku study group](#orgd53c273)
  - ["Raku, Rust and Tidyverse"](#org8330fb1)
    - [Docker image to use raku with rstudio](#orgaed663b)
    - [<https://github.com/sumanstats/rakurstudio>](#org37bb450)
  - [an issue with "p6c" ecosystem](#org94db508)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#org2c0264f)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#orgeeeb511)
  - [parrot raiser asks "how many lines of raku?"](#org83e251e)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org26a51da)
  - [later:](#org532f7aa)
    - [.trans allows regexs: how do ambiguous cases resolve?](#org1b67e95)
    - [dead-link in roast tests: revise (pull request)](#orgd99dbe9)
  - [announcements](#org9b833a5)
    - [April 10th: next raku study group meeting](#orgbdc2767)
    - [June 21-25: tprc: perl/raku conference](#org55480f7)


<a id="org3e3aeae"></a>

# meeting notes March 27, 2022


<a id="orgd53c273"></a>

## the raku study group


<a id="org8330fb1"></a>

## "Raku, Rust and Tidyverse"


<a id="orgaed663b"></a>

### Docker image to use raku with rstudio


<a id="org37bb450"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="org94db508"></a>

## an issue with "p6c" ecosystem


<a id="org2c0264f"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="orgeeeb511"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="org83e251e"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org26a51da"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org532f7aa"></a>

## later:


<a id="org1b67e95"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="orgd99dbe9"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="org9b833a5"></a>

## announcements


<a id="orgbdc2767"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="org55480f7"></a>

### June 21-25: tprc: perl/raku conference
