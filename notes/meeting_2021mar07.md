- [meeting notes Mar 07, 2021](#org1f0502e)
  - [announcments](#orgc51e9ec)
    - [richard hainsworth: alternative pod6 processing](#orge0aab51)
  - [the usual meeting links:](#org9c1eff5)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgb9d50d9)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org54e4e0a)
  - [topics](#orge25f0ac)
    - [lamberts regex problem, munging sudoers lines](#org2376d23)
    - [jeff questions about compiler options, etc](#orgb2c9729)
    - [the great "say Set.<sup>methods</sup>" affair](#orgaab1b10)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgdd586bd)
    - [69 cent tour of raku regexs](#org1bb9b1c)
    - [some simple grammar demos](#org8d0f0e4)
  - [possible topics (carried over from earlier meetings)](#org5fdf7de)
    - [Steven<sub>lembark</sub>](#org98f367e)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org6b42a10)
    - [andrew shitov "Perl 6 at a Glance"](#org5544ede)
    - [perl weekly challenge:](#orgb6df616)
    - [promises and threads](#org08942f9)
  - [linux kernel module to shut up damn bell](#org2eaa265)
  - [bash books, much new features](#orgeaaa012)
    - [bash          (d christensen pick)](#orgf1c5321)
    - [bash cookbook (d christensen mention, weak writing)](#org1257a38)
    - [unix shells (jeff pick)](#orgfc5f54f)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org28edb5e)
    - [book on the hidden logic of english:](#org7e576ce)
    - [humble bundle promotion: oreilley pocket references](#org4636ef0)


<a id="org1f0502e"></a>

# meeting notes Mar 07, 2021


<a id="orgc51e9ec"></a>

## announcments


<a id="orge0aab51"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org9c1eff5"></a>

## the usual meeting links:


<a id="orgb9d50d9"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org54e4e0a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orge25f0ac"></a>

## topics


<a id="org2376d23"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgb2c9729"></a>

### jeff questions about compiler options, etc


<a id="orgaab1b10"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgdd586bd"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org1bb9b1c"></a>

### 69 cent tour of raku regexs


<a id="org8d0f0e4"></a>

### some simple grammar demos


<a id="org5fdf7de"></a>

## possible topics (carried over from earlier meetings)


<a id="org98f367e"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org6b42a10"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org5544ede"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgb6df616"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org08942f9"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org2eaa265"></a>

## linux kernel module to shut up damn bell


<a id="orgeaaa012"></a>

## bash books, much new features


<a id="orgf1c5321"></a>

### bash          (d christensen pick)


<a id="org1257a38"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orgfc5f54f"></a>

### unix shells (jeff pick)


<a id="org28edb5e"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org7e576ce"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org4636ef0"></a>

### humble bundle promotion: oreilley pocket references
