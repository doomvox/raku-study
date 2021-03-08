- [meeting notes Mar 07, 2021](#org38d9234)
  - [announcments](#org9d28a46)
    - [richard hainsworth: alternative pod6 processing](#orga326d82)
  - [the usual meeting links:](#orgd466f7d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org799ddc7)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org44ec40c)
  - [topics (really a disorganized list of stuff I'm pretending belongs in hierarchical order)](#org71a9747)
    - [lamberts regex problem, munging sudoers lines](#orgaea2e8f)
    - [jeff questions about compiler options, etc](#org9b34f40)
    - [the great "say Set.<sup>methods</sup>" affair](#org5d30742)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org29b64d8)
    - [69 cent tour of raku regexs](#orgde0c442)
    - [some simple grammar demos](#orgeb6fbd1)
  - [possible topics (carried over from earlier meetings)](#org86aabd6)
    - [Steven<sub>lembark</sub>](#org5abc609)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org9cbfa0e)
    - [andrew shitov "Perl 6 at a Glance"](#org9e783ea)
    - [perl weekly challenge:](#org61e4eed)
    - [promises and threads](#org20562dc)
  - [linux kernel module to shut up damn bell](#orgc1de9b2)
  - [bash books, much new features](#org518b153)
    - [bash          (d christensen pick)](#orgdcef1e3)
    - [bash cookbook (d christensen mention, weak writing)](#org600d8f1)
    - [unix shells (jeff pick)](#org5a97af2)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgf3ac087)
    - [book on the hidden logic of english:](#org1d9cbca)
    - [humble bundle promotion: oreilley pocket references](#org8c43057)
    - [bruce gray discussion](#org3419a06)
    - [shadow novel where esperanto was spoken](#org525741a)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgad83d5f)


<a id="org38d9234"></a>

# meeting notes Mar 07, 2021


<a id="org9d28a46"></a>

## announcments


<a id="orga326d82"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgd466f7d"></a>

## the usual meeting links:


<a id="org799ddc7"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org44ec40c"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org71a9747"></a>

## topics (really a disorganized list of stuff I'm pretending belongs in hierarchical order)


<a id="orgaea2e8f"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org9b34f40"></a>

### jeff questions about compiler options, etc


<a id="org5d30742"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org29b64d8"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgde0c442"></a>

### 69 cent tour of raku regexs


<a id="orgeb6fbd1"></a>

### some simple grammar demos


<a id="org86aabd6"></a>

## possible topics (carried over from earlier meetings)


<a id="org5abc609"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org9cbfa0e"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org9e783ea"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org61e4eed"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org20562dc"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgc1de9b2"></a>

## linux kernel module to shut up damn bell


<a id="org518b153"></a>

## bash books, much new features


<a id="orgdcef1e3"></a>

### bash          (d christensen pick)


<a id="org600d8f1"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org5a97af2"></a>

### unix shells (jeff pick)


<a id="orgf3ac087"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org1d9cbca"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org8c43057"></a>

### humble bundle promotion: oreilley pocket references


<a id="org3419a06"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org525741a"></a>

### shadow novel where esperanto was spoken


<a id="orgad83d5f"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
