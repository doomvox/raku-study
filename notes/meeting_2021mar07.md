- [meeting notes Mar 07, 2021](#org64a5ed4)
  - [announcments](#orgf87167d)
    - [richard hainsworth: alternative pod6 processing](#orgf9da859)
  - [the usual meeting links:](#orgd4e21d2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org27bcf37)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orge4874b0)
  - [possible topics (carried over from earlier meetings)](#org85c6761)
    - [Steven<sub>lembark</sub>](#orgdb536ec)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orga1e17ff)
    - [andrew shitov "Perl 6 at a Glance"](#org3e4630c)
    - [perl weekly challenge:](#orgc0bf00c)
    - [promises and threads](#org6ab59ea)
  - [other possible topics](#orgbcb877b)
    - [lamberts regex problem, munging sudoers lines](#org8eb36a6)
    - [](#orge23e5cf)
    - [the great "say Set.<sup>methods</sup>" affair](#org91cb11c)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org685a119)
    - [69 cent tour of raku regexs](#orgceb963a)
    - [some simple grammar demos](#org4d58f10)


<a id="org64a5ed4"></a>

# meeting notes Mar 07, 2021


<a id="orgf87167d"></a>

## announcments


<a id="orgf9da859"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgd4e21d2"></a>

## the usual meeting links:


<a id="org27bcf37"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orge4874b0"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org85c6761"></a>

## possible topics (carried over from earlier meetings)


<a id="orgdb536ec"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orga1e17ff"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org3e4630c"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgc0bf00c"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org6ab59ea"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgbcb877b"></a>

## other possible topics


<a id="org8eb36a6"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orge23e5cf"></a>

### 


<a id="org91cb11c"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org685a119"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgceb963a"></a>

### 69 cent tour of raku regexs


<a id="org4d58f10"></a>

### some simple grammar demos
