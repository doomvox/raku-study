- [meeting notes March 27, 2022](#orgebadaf7)
  - [the raku study group](#org5e1a027)
  - ["Raku, Rust and Tidyverse"](#orgfb4178f)
    - [Docker image to use raku with rstudio](#orgb044c18)
    - [<https://github.com/sumanstats/rakurstudio>](#orgc38cc49)
  - [an issue with "p6c" ecosystem](#orgf990e0d)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>](#orgfeb57c4)
    - [<https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>](#org871fe7c)
  - [parrot raiser asks "how many lines of raku?"](#orgf012cbb)
    - [<https://www.theregister.com/2022/02/02/bash_wordle/>](#org7189047)
  - [later:](#org8c45e12)
    - [.trans allows regexs: how do ambiguous cases resolve?](#orgc2a4b0d)
    - [dead-link in roast tests: revise (pull request)](#org25db93d)
  - [announcements](#orgc706c45)
    - [April 10th: next raku study group meeting](#org1ae39d9)
    - [June 21-25: tprc: perl/raku conference](#orgf81c5f5)


<a id="orgebadaf7"></a>

# meeting notes March 27, 2022


<a id="org5e1a027"></a>

## the raku study group


<a id="orgfb4178f"></a>

## "Raku, Rust and Tidyverse"


<a id="orgb044c18"></a>

### Docker image to use raku with rstudio


<a id="orgc38cc49"></a>

### <https://github.com/sumanstats/rakurstudio>


<a id="orgf990e0d"></a>

## an issue with "p6c" ecosystem


<a id="orgfeb57c4"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/>


<a id="org871fe7c"></a>

### <https://www.reddit.com/r/rakulang/comments/tdui4t/support_arbitrary_git_urls_as_raku_module/i0m7yah/>


<a id="orgf012cbb"></a>

## parrot raiser asks "how many lines of raku?"


<a id="org7189047"></a>

### <https://www.theregister.com/2022/02/02/bash_wordle/>


<a id="org8c45e12"></a>

## later:


<a id="orgc2a4b0d"></a>

### .trans allows regexs: how do ambiguous cases resolve?

1.  longest token matching (tests for .trans are very good):

    ./S05-transliteration/trans.t
    
    is('ababab'.trans([/ab/, 'aba', 'bab', /baba/] => ['1', '2', '3', '4' ]), '23', 'longest token still holds, even between constant strings and regexes');


<a id="org25db93d"></a>

### dead-link in roast tests: revise (pull request)

1.  <https://irclog.perlgeek.de/perl6/2016-12-06#i_13692293>

2.  bruce gray suggests:

    <http://irclogs.raku.org/perl6/2016-12-06.html#18:51>


<a id="orgc706c45"></a>

## announcements


<a id="org1ae39d9"></a>

### April 10th: next raku study group meeting

1.  the week **before** easter


<a id="orgf81c5f5"></a>

### June 21-25: tprc: perl/raku conference
