- [meeting notes Mar 07, 2021](#org399c407)
  - [announcments](#orgfbf0eae)
    - [richard hainsworth: alternative pod6 processing](#org29e4ecb)
  - [the usual meeting links:](#orgcb950db)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgf86855b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orga0ddcfa)
  - [topics](#orgcac04ee)
    - [lamberts regex problem, munging sudoers lines](#orgef0e231)
    - [jeff questions about compiler options, etc](#org563dd72)
    - [the great "say Set.<sup>methods</sup>" affair](#orgd9c90ce)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org2071b7c)
    - [69 cent tour of raku regexs](#orga8181f3)
    - [some simple grammar demos](#orgc928e14)
  - [possible topics (carried over from earlier meetings)](#org084faca)
    - [Steven<sub>lembark</sub>](#org521fa7a)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgf8b46ae)
    - [andrew shitov "Perl 6 at a Glance"](#org6ac20ce)
    - [perl weekly challenge:](#orgb83cc1f)
    - [promises and threads](#orgc700c79)
  - [linux kernel module to shut up damn bell](#orgced3d0f)
  - [bash books, much new features](#org2d7105a)
    - [bash          (d christensen pick)](#org2725bfe)
    - [bash cookbook (d christensen pick, weak writing)](#orge15c896)
    - [unix shells (jeff pick)](#org284201b)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgea9c679)
    - [book on the hidden logic of english:](#orgf0c5a17)


<a id="org399c407"></a>

# meeting notes Mar 07, 2021


<a id="orgfbf0eae"></a>

## announcments


<a id="org29e4ecb"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgcb950db"></a>

## the usual meeting links:


<a id="orgf86855b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orga0ddcfa"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgcac04ee"></a>

## topics


<a id="orgef0e231"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org563dd72"></a>

### jeff questions about compiler options, etc


<a id="orgd9c90ce"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org2071b7c"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orga8181f3"></a>

### 69 cent tour of raku regexs


<a id="orgc928e14"></a>

### some simple grammar demos


<a id="org084faca"></a>

## possible topics (carried over from earlier meetings)


<a id="org521fa7a"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgf8b46ae"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org6ac20ce"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgb83cc1f"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgc700c79"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgced3d0f"></a>

## linux kernel module to shut up damn bell


<a id="org2d7105a"></a>

## bash books, much new features


<a id="org2725bfe"></a>

### bash          (d christensen pick)


<a id="orge15c896"></a>

### bash cookbook (d christensen pick, weak writing)


<a id="org284201b"></a>

### unix shells (jeff pick)


<a id="orgea9c679"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgf0c5a17"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes
