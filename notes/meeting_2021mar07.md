- [meeting notes Mar 07, 2021](#orgfb7b865)
  - [announcments](#org65814e6)
    - [richard hainsworth: alternative pod6 processing](#org04bff20)
  - [the usual meeting links:](#org74d86a8)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgbb06ff7)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org516b242)
  - [topics](#orga1a6c1a)
    - [lamberts regex problem, munging sudoers lines](#org14365fd)
    - [](#orgf831ecc)
    - [the great "say Set.<sup>methods</sup>" affair](#orge90a01f)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org93d6d8d)
    - [69 cent tour of raku regexs](#org1fcde07)
    - [some simple grammar demos](#orgfbbde10)
  - [possible topics (carried over from earlier meetings)](#org4face27)
    - [Steven<sub>lembark</sub>](#orge1ebec5)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org23198b2)
    - [andrew shitov "Perl 6 at a Glance"](#org5eb9fec)
    - [perl weekly challenge:](#org5ec6cb1)
    - [promises and threads](#org81b2eb1)


<a id="orgfb7b865"></a>

# meeting notes Mar 07, 2021


<a id="org65814e6"></a>

## announcments


<a id="org04bff20"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org74d86a8"></a>

## the usual meeting links:


<a id="orgbb06ff7"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org516b242"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orga1a6c1a"></a>

## topics


<a id="org14365fd"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgf831ecc"></a>

### 


<a id="orge90a01f"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org93d6d8d"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org1fcde07"></a>

### 69 cent tour of raku regexs


<a id="orgfbbde10"></a>

### some simple grammar demos


<a id="org4face27"></a>

## possible topics (carried over from earlier meetings)


<a id="orge1ebec5"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org23198b2"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org5eb9fec"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org5ec6cb1"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org81b2eb1"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
