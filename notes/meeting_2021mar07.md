- [meeting notes Mar 07, 2021](#org6adaec7)
  - [announcments](#org5f1c011)
    - [richard hainsworth: alternative pod6 processing](#orgd0eb745)
  - [the usual meeting links:](#orgc5106db)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org2dbbebd)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org886c38a)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org0fdb158)
    - [lamberts regex problem, munging sudoers lines](#org4c54bc9)
    - [jeff questions about compiler options, etc](#orgbe33e0c)
    - [the great "say Set.<sup>methods</sup>" affair](#orga5be4fd)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org2ad7f23)
    - [69 cent tour of raku regexs](#org4ec3d94)
    - [some simple grammar demos](#orgb8ba0af)
  - [possible topics (carried over from earlier meetings)](#org8929c92)
    - [Steven<sub>lembark</sub>](#org5e53bbe)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orge715fed)
    - [andrew shitov "Perl 6 at a Glance"](#orgdc0a6b2)
    - [perl weekly challenge:](#orge716916)
    - [promises and threads](#org6b4f0c0)
  - [linux kernel module to shut up damn bell](#org18958e7)
  - [bash books, much new features](#org66cddd9)
    - [bash          (d christensen pick)](#org76192c1)
    - [bash cookbook (d christensen mention, weak writing)](#orgff7eb57)
    - [unix shells (jeff pick)](#org66c6258)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org3a0e9a1)
    - [book on the hidden logic of english:](#org8bd0e0a)
    - [humble bundle promotion: oreilley pocket references](#orgbd09d36)
    - [bruce gray discussion](#org9ea6f18)
    - [shadow novel where esperanto was spoken](#orgae793ae)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgac31e71)


<a id="org6adaec7"></a>

# meeting notes Mar 07, 2021


<a id="org5f1c011"></a>

## announcments


<a id="orgd0eb745"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgc5106db"></a>

## the usual meeting links:


<a id="org2dbbebd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org886c38a"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org0fdb158"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="org4c54bc9"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgbe33e0c"></a>

### jeff questions about compiler options, etc


<a id="orga5be4fd"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org2ad7f23"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org4ec3d94"></a>

### 69 cent tour of raku regexs


<a id="orgb8ba0af"></a>

### some simple grammar demos


<a id="org8929c92"></a>

## possible topics (carried over from earlier meetings)


<a id="org5e53bbe"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orge715fed"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgdc0a6b2"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orge716916"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org6b4f0c0"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org18958e7"></a>

## linux kernel module to shut up damn bell


<a id="org66cddd9"></a>

## bash books, much new features


<a id="org76192c1"></a>

### bash          (d christensen pick)


<a id="orgff7eb57"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org66c6258"></a>

### unix shells (jeff pick)


<a id="org3a0e9a1"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org8bd0e0a"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orgbd09d36"></a>

### humble bundle promotion: oreilley pocket references


<a id="org9ea6f18"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgae793ae"></a>

### shadow novel where esperanto was spoken


<a id="orgac31e71"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
