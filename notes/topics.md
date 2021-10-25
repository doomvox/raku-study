- [topics](#org5115855)
  - [raku study group topics](#org1cb39d4)
    - [collected from previous meeting notes](#orgcc79592)
    - [delete these once they're covered](#org15cd40d)
  - [techid: create a database of topic ideas](#orga6066eb)
    - [features](#org455afa4)
  - [subjects](#org4440e31)
    - [nested map idioms](#org38587d1)
    - [quoted string regexes](#orgf873482)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgceb0bf5)
    - [Steven Lembark](#org43c3313)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org315c894)
    - [andrew shitov "Perl 6 at a Glance"](#org052f0c0)
    - [andrew shitov's raku course on-line:](#org40d245b)
    - [promises and threads](#org8956b66)
    - [other files to go through](#orgf547fa1)
    - [immutability](#org810a46e)
    - [more on data-handling in raku](#org21b8439)
    - [places to find topics](#org8441ae0)


<a id="org5115855"></a>

# topics


<a id="org1cb39d4"></a>

## raku study group topics


<a id="orgcc79592"></a>

### collected from previous meeting notes


<a id="org15cd40d"></a>

### delete these once they're covered


<a id="orga6066eb"></a>

## techid: create a database of topic ideas


<a id="org455afa4"></a>

### features

1.  categorization

2.  links to meeting notes


<a id="org4440e31"></a>

## subjects


<a id="org38587d1"></a>

### nested map idioms

1.  TODO nested map: review perl5 approaches

    1.  maybe, try python version

2.  TODO nested map: get some raku code working

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/nested<sub>map.raku</sub>


<a id="orgf873482"></a>

### quoted string regexes

1.  TODO re<sub>quoted</sub><sub>str</sub>: perl5 versions

2.  TODO re<sub>quoted</sub><sub>str</sub>: continue with raku versions

    1.  next: balanced quotes of various types
    
        1.  yary hluchan
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/bin/richard_hainsworth_grammar.raku>
            
            2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/richard<sub>hainsworth</sub><sub>grammar.raku</sub>
        
        2.  moritz lenz
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/bin/2021mar21/parsing_quoted_strings_backslash.raku>
            
            2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/parsing<sub>quoted</sub><sub>strings</sub><sub>backslash.raku</sub>


<a id="orgceb0bf5"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org43c3313"></a>

### Steven Lembark

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org315c894"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org052f0c0"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org40d245b"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org8956b66"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgf547fa1"></a>

### other files to go through

-rw-r&#x2013;r&#x2013; 1 doom doom 1888 Feb 14 17:07 meeting<sub>2020dec20.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 3606 Feb 13 22:15 meeting<sub>2021feb07.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 3803 Feb 7 14:02 meeting<sub>2021jan31.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2519 Jan 24 20:45 meeting<sub>2021jan24.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 1940 Jan 18 13:17 meeting<sub>2020jan17.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 1505 Jan 12 11:52 meeting<sub>2020jan10.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2158 Dec 19 17:17 meeting<sub>2020dec13.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2146 Dec 7 13:23 meeting<sub>2020dec06.org</sub>


<a id="org810a46e"></a>

### immutability

1.  <https://stackoverflow.com/questions/63294853/how-to-enforce-immutability-with-the-raku-typesystem?rq=1>


<a id="org21b8439"></a>

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

6.  pairs of separators from a string

    1.  <https://www.nntp.perl.org/group/perl.perl6.users/2021/09/msg10138.html>
    
    2.  a discussion yary was involved in, which indicates there's something interesting

7.  lispyness of raku

    1.  <https://www.codesections.com/blog/raku-lisp-impression/>
    
    2.  <https://www.reddit.com/r/rakulang/comments/ptm7qx/rakus_surprisingly_good_lisp_impression/>

8.  old raku weekly

    1.  <https://rakudoweekly.blog/2021/09/20/2021-38-questions-ideas-feedback/>


<a id="org8441ae0"></a>

### places to find topics

1.  perl weekly challenge:

    1.  <https://perlweeklychallenge.org/>

2.  stackoverflow

3.  perl6-users

4.  Raku weekly

    1.  <https://rakudoweekly.blog>

5.  rosettacode

6.  frequently revisited doc pages

    1.  <https://docs.raku.org/language/operators>
    
    2.  <https://docs.raku.org/language/pod>
    
    3.  <https://docs.raku.org/type/Test>
    
    4.  <https://docs.raku.org/language/variables>
    
    5.
