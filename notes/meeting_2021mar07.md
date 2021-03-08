- [meeting notes Mar 07, 2021](#orgb8d15f7)
  - [announcments](#org282f112)
    - [richard hainsworth: alternative pod6 processing](#org8e64f3a)
  - [the usual meeting links:](#orgb1894bf)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org5eb62da)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org8935638)
  - [topics](#orgaee3d00)
    - [lamberts regex problem, munging sudoers lines](#org9e958f6)
    - [jeff questions about compiler options, etc](#orgec05f98)
    - [the great "say Set.<sup>methods</sup>" affair](#org1c0c506)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org256f8f0)
    - [69 cent tour of raku regexs](#orgd201f36)
    - [some simple grammar demos](#org7b79954)
  - [possible topics (carried over from earlier meetings)](#org167a3ee)
    - [Steven<sub>lembark</sub>](#org5d2071d)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org2679908)
    - [andrew shitov "Perl 6 at a Glance"](#org718a17f)
    - [perl weekly challenge:](#org4cbc3ad)
    - [promises and threads](#org106df5b)
  - [linux kernel module to shut up damn bell](#org476b39a)
  - [bash books, much new features](#orgbffdd8c)
    - [bash          (d christensen pick)](#org629dd2e)
    - [bash cookbook (d christensen mention, weak writing)](#orgb84ef04)
    - [unix shells (jeff pick)](#org736da66)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgf5d44fa)
    - [book on the hidden logic of english:](#org51b81fc)
    - [humble bundle promotion: oreilley pocket references](#org9f2d74f)
    - [bruce gray discussion](#org77b18f7)
    - [shadow novel where esperanto was spoken](#org392f879)


<a id="orgb8d15f7"></a>

# meeting notes Mar 07, 2021


<a id="org282f112"></a>

## announcments


<a id="org8e64f3a"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgb1894bf"></a>

## the usual meeting links:


<a id="org5eb62da"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org8935638"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgaee3d00"></a>

## topics


<a id="org9e958f6"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgec05f98"></a>

### jeff questions about compiler options, etc


<a id="org1c0c506"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org256f8f0"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgd201f36"></a>

### 69 cent tour of raku regexs


<a id="org7b79954"></a>

### some simple grammar demos


<a id="org167a3ee"></a>

## possible topics (carried over from earlier meetings)


<a id="org5d2071d"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org2679908"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org718a17f"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org4cbc3ad"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org106df5b"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org476b39a"></a>

## linux kernel module to shut up damn bell


<a id="orgbffdd8c"></a>

## bash books, much new features


<a id="org629dd2e"></a>

### bash          (d christensen pick)


<a id="orgb84ef04"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org736da66"></a>

### unix shells (jeff pick)


<a id="orgf5d44fa"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org51b81fc"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org9f2d74f"></a>

### humble bundle promotion: oreilley pocket references


<a id="org77b18f7"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org392f879"></a>

### shadow novel where esperanto was spoken
