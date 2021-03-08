- [meeting notes Mar 07, 2021](#orga97844c)
  - [announcments](#orgc38c212)
    - [richard hainsworth: alternative pod6 processing](#orgd5a91a8)
  - [the usual meeting links:](#org677226c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgfb347f4)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgeea875c)
  - [topics](#org66e4bdf)
    - [lamberts regex problem, munging sudoers lines](#orgf7d7a9f)
    - [jeff questions about compiler options, etc](#org97419fa)
    - [the great "say Set.<sup>methods</sup>" affair](#org45da622)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgade5f06)
    - [69 cent tour of raku regexs](#orgcc42d8c)
    - [some simple grammar demos](#org712bee4)
  - [possible topics (carried over from earlier meetings)](#org8e336db)
    - [Steven<sub>lembark</sub>](#orgffe2d78)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orga0065a8)
    - [andrew shitov "Perl 6 at a Glance"](#org304d9be)
    - [perl weekly challenge:](#org64e574f)
    - [promises and threads](#orgc7b7aa9)
  - [linux kernel module to shut up damn bell](#org0dbb3c2)
  - [bash books, much new features](#org3e8a956)
    - [bash          (d christensen pick)](#org7869183)
    - [bash cookbook (d christensen mention, weak writing)](#orgd19c1f2)
    - [unix shells (jeff pick)](#orgf6f6a09)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org30d098e)
    - [book on the hidden logic of english:](#orgd506361)


<a id="orga97844c"></a>

# meeting notes Mar 07, 2021


<a id="orgc38c212"></a>

## announcments


<a id="orgd5a91a8"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org677226c"></a>

## the usual meeting links:


<a id="orgfb347f4"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgeea875c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org66e4bdf"></a>

## topics


<a id="orgf7d7a9f"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org97419fa"></a>

### jeff questions about compiler options, etc


<a id="org45da622"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgade5f06"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgcc42d8c"></a>

### 69 cent tour of raku regexs


<a id="org712bee4"></a>

### some simple grammar demos


<a id="org8e336db"></a>

## possible topics (carried over from earlier meetings)


<a id="orgffe2d78"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orga0065a8"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org304d9be"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org64e574f"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgc7b7aa9"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org0dbb3c2"></a>

## linux kernel module to shut up damn bell


<a id="org3e8a956"></a>

## bash books, much new features


<a id="org7869183"></a>

### bash          (d christensen pick)


<a id="orgd19c1f2"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orgf6f6a09"></a>

### unix shells (jeff pick)


<a id="org30d098e"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgd506361"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes
