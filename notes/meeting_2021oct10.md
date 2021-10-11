- [meeting notes October 10, 2021                                      a](#org5601f68)
  - [the usual links:](#org03e8b17)
    - [meeting notes](#org75416d0)
    - [code examples:](#org432a7ac)
  - [stuff it all in to the great stuffiness](#orgc382f62)
    - [data-handling in raku](#orgf11ae2d)
    - [more on data-handling in raku](#org5a6356c)
    - [codesections on "patternmatching"](#orgc31a482)
    - [bioinformatics on rosettacode](#org2ced368)
    - [other leftover bits](#org74e6a57)
    - [general notes](#orga3f38ee)
  - [announcements](#orgad2d93f)
    - [the ephemeral miniconf: nov 18 2021](#org5b13faa)
  - [next meeting](#orgec9831c)
    - [next meeting: Oct 24, 2021](#org4c4e5f5)


<a id="org5601f68"></a>

# meeting notes October 10, 2021                                      a


<a id="org03e8b17"></a>

## the usual links:


<a id="org75416d0"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="org432a7ac"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="orgc382f62"></a>

## stuff it all in to the great stuffiness


<a id="orgf11ae2d"></a>

### data-handling in raku

1.  talked about three rough approaches

    1.  perl-style: arrays of hashes, hashes as records
    
    2.  raku: data container objects more practical
    
    3.  rlang-style: columns of data, aggregate methods appropriate for type

2.  note: i'm agnostic on strong typing

    1.  some type checking good, large amounts may just be redundant
    
    2.  testing can stubstitute for strong-types, but not vice-versa

3.  bruce gray demoed some techniques

    1.  micro-objects as data records
    
    2.  custom new method


<a id="org5a6356c"></a>

### more on data-handling in raku

1.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

2.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>

3.  Data::Reshapers

    1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>

4.  "format data into a table"

    <https://unix.stackexchange.com/questions/649799/format-data-into-a-table/655944#655944>

5.  secure json-ification, vadim belman

    1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>
    
    2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>
    
    3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="orgc31a482"></a>

### codesections on "patternmatching"

1.  <https://www.codesections.com/blog/try-some-pattern-matching/>

2.  <https://www.codesections.com/blog/pattern-matching-2/>


<a id="org2ced368"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org74e6a57"></a>

### other leftover bits

1.  a buglet or I'm crazy (smart money is on&#x2026;)  (yup, crazy)

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021sep26/anon_var_vs_topic.raku>

2.  pairs of separators from a string

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>
    
    2.  a discussion yary was involved in, which indicates there's something interesting

3.  lispyness of raku

    1.  <https://www.codesections.com/blog/raku-lisp-impression/>
    
    2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>

4.  old raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>


<a id="orga3f38ee"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="orgad2d93f"></a>

## announcements


<a id="org5b13faa"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="orgec9831c"></a>

## next meeting


<a id="org4c4e5f5"></a>

### next meeting: Oct 24, 2021
