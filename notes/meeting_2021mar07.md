- [meeting notes Mar 07, 2021](#org8188687)
  - [announcments](#org72c55c1)
    - [richard hainsworth: alternative pod6 processing](#org2415dde)
  - [the usual meeting links:](#orgcdfd2a7)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgb0e8d5e)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org676f6c8)
  - ["topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)](#org7e1b0f2)
    - [lamberts regex problem, munging sudoers lines](#orge6936f1)
    - [jeff questions about compiler options, etc](#org0e288d7)
    - [the great "say Set.<sup>methods</sup>" affair](#org320c871)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgc475ab7)
    - [69 cent tour of raku regexs](#org0f87236)
    - [some simple grammar demos](#orgf91070c)
  - [possible topics (carried over from earlier meetings)](#org0f06d5d)
    - [Steven<sub>lembark</sub>](#org1caea3c)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org6b15360)
    - [andrew shitov "Perl 6 at a Glance"](#org4123bf3)
    - [perl weekly challenge:](#org353c5e2)
    - [promises and threads](#orgce427a7)
  - [linux kernel module to shut up damn bell](#orgb5e1827)
  - [bash books, much new features](#orgd6e130b)
    - [bash          (d christensen pick)](#orge2e0e26)
    - [bash cookbook (d christensen mention, weak writing)](#org58b0a54)
    - [unix shells (jeff pick)](#orga6d83ff)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org5ba021a)
    - [book on the hidden logic of english:](#orge8efadf)
    - [humble bundle promotion: oreilley pocket references](#org75821d1)
    - [bruce gray discussion](#orgaf90058)
    - [shadow novel where esperanto was spoken](#orgb60326b)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#orgcf8901a)


<a id="org8188687"></a>

# meeting notes Mar 07, 2021


<a id="org72c55c1"></a>

## announcments


<a id="org2415dde"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgcdfd2a7"></a>

## the usual meeting links:


<a id="orgb0e8d5e"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org676f6c8"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org7e1b0f2"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in a hierarchy)


<a id="orge6936f1"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org0e288d7"></a>

### jeff questions about compiler options, etc


<a id="org320c871"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgc475ab7"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org0f87236"></a>

### 69 cent tour of raku regexs


<a id="orgf91070c"></a>

### some simple grammar demos


<a id="org0f06d5d"></a>

## possible topics (carried over from earlier meetings)


<a id="org1caea3c"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org6b15360"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org4123bf3"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org353c5e2"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgce427a7"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgb5e1827"></a>

## linux kernel module to shut up damn bell


<a id="orgd6e130b"></a>

## bash books, much new features


<a id="orge2e0e26"></a>

### bash          (d christensen pick)


<a id="org58b0a54"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orga6d83ff"></a>

### unix shells (jeff pick)


<a id="org5ba021a"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orge8efadf"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org75821d1"></a>

### humble bundle promotion: oreilley pocket references


<a id="orgaf90058"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgb60326b"></a>

### shadow novel where esperanto was spoken


<a id="orgcf8901a"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
