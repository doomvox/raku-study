- [meeting notes Mar 07, 2021](#org1acb87a)
  - [announcments](#org1e4cd7a)
    - [richard hainsworth: alternative pod6 processing](#org35b90bb)
  - [usual links:](#org64f87aa)
  - [possible topics (carried over from earlier meetings)](#org7c41182)
    - [Steven<sub>lembark</sub>](#orge6ad23b)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org3c3b55f)
    - [andrew shitov "Perl 6 at a Glance"](#orgcc2b944)
    - [perl weekly challenge:](#orgd517519)
    - [promises and threads](#org7c42f55)
  - [other possible topics](#org66f8f55)
    - [lamberts regex problem, munging sudoers lines](#orga84174c)
    - [](#org539fd9c)
    - [the great "say Set.<sup>methods</sup>" affair](#orgcef65ef)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgce007a9)
    - [69 cent tour of raku regexs](#org86e2a3b)
    - [some simple grammar demos](#org505f238)


<a id="org1acb87a"></a>

# meeting notes Mar 07, 2021


<a id="org1e4cd7a"></a>

## announcments


<a id="org35b90bb"></a>

### richard hainsworth: alternative pod6 processing

1.  Raku docs: <http://raku.finanalyst.org>


<a id="org64f87aa"></a>

## usual links:

<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org7c41182"></a>

## possible topics (carried over from earlier meetings)


<a id="orge6ad23b"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org3c3b55f"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgcc2b944"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgd517519"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org7c42f55"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org66f8f55"></a>

## other possible topics


<a id="orga84174c"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org539fd9c"></a>

### 


<a id="orgcef65ef"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgce007a9"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org86e2a3b"></a>

### 69 cent tour of raku regexs


<a id="org505f238"></a>

### some simple grammar demos
