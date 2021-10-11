- [meeting notes October 10, 2021                                      a](#org3cb4c3a)
  - [the usual links:](#orgfe102a8)
    - [meeting notes](#org905217b)
    - [code examples:](#orgd20df96)
  - [stuff it all in to the great stuffiness](#org6f4bb86)
    - [data-handling in raku](#orge227c91)
    - [codesections on "patternmatching"](#org0d05e2d)
    - [bioinformatics on rosettacode](#orgbb329a0)
    - [other leftover bits](#org5209180)
    - [general notes](#orgd523a35)
  - [announcements](#org01ee37d)
    - [the ephemeral miniconf: nov 18 2021](#org82b282b)
  - [next meeting](#org6c54deb)
    - [next meeting: Oct 24, 2021](#orgf0ee28a)


<a id="org3cb4c3a"></a>

# meeting notes October 10, 2021                                      a


<a id="orgfe102a8"></a>

## the usual links:


<a id="org905217b"></a>

### meeting notes

1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021oct10.md>


<a id="orgd20df96"></a>

### code examples:

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021oct10>


<a id="org6f4bb86"></a>

## stuff it all in to the great stuffiness


<a id="orge227c91"></a>

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

4.  <https://stackoverflow.com/questions/66926663/is-there-a-convenient-way-to-replicate-rs-concept-of-named-vectors-in-raku-p/67513527?noredirect=1#comment122449810_67513527>

    1.  William Michaels objects to the word "Row" for a data-record in my solution

5.  arrays-of-objects

    1.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/hczfj2r/>

6.  Data::Reshapers

    1.  <https://raku.land/cpan:ANTONOV/Data::Reshapers>

7.  "format data into a table"

    <https://unix.stackexchange.com/questions/649799/format-data-into-a-table/655944#655944>

8.  secure json-ification, vadim belman

    1.  <https://colabti.org/irclogger/irclogger_log/raku?date=2021-09-14#l100>
    
    2.  <https://vrurg.github.io/2021/09/14/Secure-JSONification>
    
    3.  <https://www.reddit.com/r/rakulang/comments/pocomd/a_post_which_came_out_from_a_provocation/>


<a id="org0d05e2d"></a>

### codesections on "patternmatching"

1.  <https://www.codesections.com/blog/try-some-pattern-matching/>

2.  <https://www.codesections.com/blog/pattern-matching-2/>


<a id="orgbb329a0"></a>

### bioinformatics on rosettacode

1.  there's a half dozen entries, here's a simple one:

    1.  <http://rosettacode.org/wiki/Bioinformatics/base_count>


<a id="org5209180"></a>

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


<a id="orgd523a35"></a>

### general notes

1.  Herbert Simon, "Sciences of the Artificial", an Alan pick

    1.  <https://mitpress.mit.edu/books/sciences-artificial>


<a id="org01ee37d"></a>

## announcements


<a id="org82b282b"></a>

### the ephemeral miniconf: nov 18 2021

1.  <https://dev.to/thibaultduponchelle/the-ephemeral-miniconf-292j>


<a id="org6c54deb"></a>

## next meeting


<a id="orgf0ee28a"></a>

### next meeting: Oct 24, 2021
