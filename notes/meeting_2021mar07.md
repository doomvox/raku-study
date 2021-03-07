- [meeting notes Mar 07, 2021](#org20198ff)
  - [announcments](#org0a905bb)
    - [richard hainsworth: alternative pod6 processing](#org1812cdd)
  - [the usual meeting links:](#orgfeb5269)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org8de4508)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgd876899)
  - [other possible topics](#org9d35ff2)
    - [lamberts regex problem, munging sudoers lines](#orgba8689c)
    - [](#org4598df9)
    - [the great "say Set.<sup>methods</sup>" affair](#org34b2a9e)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orge563928)
    - [69 cent tour of raku regexs](#orgd03d51d)
    - [some simple grammar demos](#orgcd08b47)
  - [possible topics (carried over from earlier meetings)](#orgdf166fc)
    - [Steven<sub>lembark</sub>](#org49d3b8d)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgb462809)
    - [andrew shitov "Perl 6 at a Glance"](#orga8e9b1a)
    - [perl weekly challenge:](#org2a79fce)
    - [promises and threads](#orgd487c86)


<a id="org20198ff"></a>

# meeting notes Mar 07, 2021


<a id="org0a905bb"></a>

## announcments


<a id="org1812cdd"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgfeb5269"></a>

## the usual meeting links:


<a id="org8de4508"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgd876899"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org9d35ff2"></a>

## other possible topics


<a id="orgba8689c"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org4598df9"></a>

### 


<a id="org34b2a9e"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orge563928"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgd03d51d"></a>

### 69 cent tour of raku regexs


<a id="orgcd08b47"></a>

### some simple grammar demos


<a id="orgdf166fc"></a>

## possible topics (carried over from earlier meetings)


<a id="org49d3b8d"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgb462809"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orga8e9b1a"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org2a79fce"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgd487c86"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
