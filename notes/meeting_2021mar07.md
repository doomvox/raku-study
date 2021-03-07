- [meeting notes Mar 07, 2021](#org0b2fc41)
  - [announcments](#orgd7680be)
    - [richard hainsworth: alternative pod6 processing](#org96fcc25)
  - [usual links:](#org5d2e51a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orge6ebd99)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org9614484)
  - [possible topics (carried over from earlier meetings)](#org7d1f83c)
    - [Steven<sub>lembark</sub>](#orgf11dae4)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc552c5b)
    - [andrew shitov "Perl 6 at a Glance"](#org29b8710)
    - [perl weekly challenge:](#orgaa8fe5f)
    - [promises and threads](#org766f430)
  - [other possible topics](#org6bae606)
    - [lamberts regex problem, munging sudoers lines](#org75ea140)
    - [](#org592f443)
    - [the great "say Set.<sup>methods</sup>" affair](#orga4e82ff)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org2d8013c)
    - [69 cent tour of raku regexs](#orgff94888)
    - [some simple grammar demos](#org93c0c8d)


<a id="org0b2fc41"></a>

# meeting notes Mar 07, 2021


<a id="orgd7680be"></a>

## announcments


<a id="org96fcc25"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org5d2e51a"></a>

## usual links:


<a id="orge6ebd99"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org9614484"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org7d1f83c"></a>

## possible topics (carried over from earlier meetings)


<a id="orgf11dae4"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc552c5b"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org29b8710"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgaa8fe5f"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org766f430"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org6bae606"></a>

## other possible topics


<a id="org75ea140"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org592f443"></a>

### 


<a id="orga4e82ff"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org2d8013c"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgff94888"></a>

### 69 cent tour of raku regexs


<a id="org93c0c8d"></a>

### some simple grammar demos
