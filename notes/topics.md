- [topics](#org3bbc646)
  - [raku study group topics](#org39467ae)
    - [collected from previous meeting notes](#org20b1d03)
    - [delete these once they're covered](#org5dc6027)
  - [techid: create a database of topic ideas](#orgef7ed3c)
    - [features](#orgcafd4cf)
  - [subjects](#org2f9e278)
    - [nested map idioms](#org1991587)
    - [quoted string regexes](#org058f211)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgb63f50d)
    - [Steven Lembark](#org43d296b)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgdb8499a)
    - [andrew shitov "Perl 6 at a Glance"](#orgd2ce208)
    - [andrew shitov's raku course on-line:](#org700454e)
    - [promises and threads](#org2965bf0)
    - [other files to go through](#orgb97a43e)
    - [immutability](#org1053a7d)
  - [leftovers that I swear I will not leave here in this file](#org03aaa6f)
    - [more on data-handling in raku](#org53ee040)
    - [places to find topics](#org4fd285b)


<a id="org3bbc646"></a>

# topics


<a id="org39467ae"></a>

## raku study group topics


<a id="org20b1d03"></a>

### collected from previous meeting notes


<a id="org5dc6027"></a>

### delete these once they're covered


<a id="orgef7ed3c"></a>

## techid: create a database of topic ideas


<a id="orgcafd4cf"></a>

### features

1.  categorization

2.  links to meeting notes


<a id="org2f9e278"></a>

## subjects


<a id="org1991587"></a>

### nested map idioms

1.  TODO nested map: review perl5 approaches

    1.  maybe, try python version

2.  TODO nested map: get some raku code working

    1.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021mar21/nested<sub>map.raku</sub>


<a id="org058f211"></a>

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


<a id="orgb63f50d"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org43d296b"></a>

### Steven Lembark

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgdb8499a"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgd2ce208"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org700454e"></a>

### andrew shitov's raku course on-line:

<https://course.raku.org/>


<a id="org2965bf0"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgb97a43e"></a>

### other files to go through

-rw-r&#x2013;r&#x2013; 1 doom doom 1888 Feb 14 17:07 meeting<sub>2020dec20.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 3606 Feb 13 22:15 meeting<sub>2021feb07.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 3803 Feb 7 14:02 meeting<sub>2021jan31.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2519 Jan 24 20:45 meeting<sub>2021jan24.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 1940 Jan 18 13:17 meeting<sub>2020jan17.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 1505 Jan 12 11:52 meeting<sub>2020jan10.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2158 Dec 19 17:17 meeting<sub>2020dec13.org</sub> -rw-r&#x2013;r&#x2013; 1 doom doom 2146 Dec 7 13:23 meeting<sub>2020dec06.org</sub>


<a id="org1053a7d"></a>

### immutability

1.  <https://stackoverflow.com/questions/63294853/how-to-enforce-immutability-with-the-raku-typesystem?rq=1>


<a id="org03aaa6f"></a>

## leftovers that I swear I will not leave here in this file


<a id="org53ee040"></a>

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


<a id="org4fd285b"></a>

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
