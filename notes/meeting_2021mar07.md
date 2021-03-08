- [meeting notes Mar 07, 2021](#org2f401cc)
  - [announcments](#orgda01a68)
    - [richard hainsworth: alternative pod6 processing](#org6ac77c2)
  - [the usual meeting links:](#orgb3fc411)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org4ffcf26)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org75cbe93)
  - [topics](#org3de4877)
    - [lamberts regex problem, munging sudoers lines](#org23b7295)
    - [jeff questions about compiler options, etc](#orge56c5e0)
    - [the great "say Set.<sup>methods</sup>" affair](#orgc0eb079)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org71c828c)
    - [69 cent tour of raku regexs](#orgb2c4530)
    - [some simple grammar demos](#org4c25cf7)
  - [possible topics (carried over from earlier meetings)](#org82e8192)
    - [Steven<sub>lembark</sub>](#org84abbb3)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org7c9d22d)
    - [andrew shitov "Perl 6 at a Glance"](#orga9ab794)
    - [perl weekly challenge:](#orgab3de59)
    - [promises and threads](#org725c5ac)
  - [linux kernel module to shut up damn bell](#orgc2e23eb)
  - [bash books, much new features](#org25ee3a3)
    - [bash          (d christensen pick)](#org1588246)
    - [bash cookbook (d christensen mention, weak writing)](#orga735226)
    - [unix shells (jeff pick)](#org218e5c9)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org13d177c)
    - [book on the hidden logic of english:](#orgd2da703)


<a id="org2f401cc"></a>

# meeting notes Mar 07, 2021


<a id="orgda01a68"></a>

## announcments


<a id="org6ac77c2"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgb3fc411"></a>

## the usual meeting links:


<a id="org4ffcf26"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org75cbe93"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org3de4877"></a>

## topics


<a id="org23b7295"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orge56c5e0"></a>

### jeff questions about compiler options, etc


<a id="orgc0eb079"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org71c828c"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgb2c4530"></a>

### 69 cent tour of raku regexs


<a id="org4c25cf7"></a>

### some simple grammar demos


<a id="org82e8192"></a>

## possible topics (carried over from earlier meetings)


<a id="org84abbb3"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org7c9d22d"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orga9ab794"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgab3de59"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org725c5ac"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgc2e23eb"></a>

## linux kernel module to shut up damn bell


<a id="org25ee3a3"></a>

## bash books, much new features


<a id="org1588246"></a>

### bash          (d christensen pick)


<a id="orga735226"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org218e5c9"></a>

### unix shells (jeff pick)


<a id="org13d177c"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgd2da703"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes
