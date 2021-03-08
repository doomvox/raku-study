- [meeting notes Mar 07, 2021](#orgd4bb574)
  - [announcments](#org86e8bdb)
    - [richard hainsworth: alternative pod6 processing](#org44740ec)
  - [the usual meeting links:](#org0207d01)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org21ecfdd)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgc48a371)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org1e65666)
    - [lamberts regex problem, munging sudoers lines](#org076c1ed)
    - [jeff questions about compiler options, etc](#orgf706383)
    - [the great "say Set.<sup>methods</sup>" affair](#org897df69)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgec5fad1)
    - [69 cent tour of raku regexs](#orgb79849c)
    - [some simple grammar demos](#org3ebe660)
  - [possible topics (carried over from earlier meetings)](#org17a8fee)
    - [Steven<sub>lembark</sub>](#orge8bad2b)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org6d7b7d4)
    - [andrew shitov "Perl 6 at a Glance"](#orgb25f690)
    - [perl weekly challenge:](#org8bc2138)
    - [promises and threads](#org4c74ee9)
  - [linux kernel module to shut up damn bell](#orgb9e196f)
  - [bash books, much new features](#orgba426a5)
    - [bash          (d christensen pick)](#orgfd74c20)
    - [bash cookbook (d christensen mention, weak writing)](#org3fdc998)
    - [unix shells (jeff pick)](#org35ae8ea)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orge4bcb10)
    - [book on the hidden logic of english:](#org75c0c49)
    - [humble bundle promotion: oreilley pocket references](#org3fab403)
    - [bruce gray discussion](#org419eeaf)
    - [shadow novel where esperanto was spoken](#orge7539f3)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org333b545)


<a id="orgd4bb574"></a>

# meeting notes Mar 07, 2021


<a id="org86e8bdb"></a>

## announcments


<a id="org44740ec"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org0207d01"></a>

## the usual meeting links:


<a id="org21ecfdd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgc48a371"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org1e65666"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org076c1ed"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgf706383"></a>

### jeff questions about compiler options, etc


<a id="org897df69"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgec5fad1"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgb79849c"></a>

### 69 cent tour of raku regexs


<a id="org3ebe660"></a>

### some simple grammar demos


<a id="org17a8fee"></a>

## possible topics (carried over from earlier meetings)


<a id="orge8bad2b"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org6d7b7d4"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgb25f690"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org8bc2138"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org4c74ee9"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgb9e196f"></a>

## linux kernel module to shut up damn bell


<a id="orgba426a5"></a>

## bash books, much new features


<a id="orgfd74c20"></a>

### bash          (d christensen pick)


<a id="org3fdc998"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org35ae8ea"></a>

### unix shells (jeff pick)


<a id="orge4bcb10"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org75c0c49"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org3fab403"></a>

### humble bundle promotion: oreilley pocket references


<a id="org419eeaf"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orge7539f3"></a>

### shadow novel where esperanto was spoken


<a id="org333b545"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
