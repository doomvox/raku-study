- [meeting notes Mar 07, 2021](#org4d1a2e0)
  - [announcments](#org5b4a074)
    - [richard hainsworth: alternative pod6 processing](#org753fec7)
  - [possible topics (carried over from earlier meetings)](#orge982168)
    - [Steven<sub>lembark</sub>](#org769df68)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orga888533)
    - [andrew shitov "Perl 6 at a Glance"](#org06691bb)
    - [perl weekly challenge:](#org3bfe5ec)
    - [promises and threads](#org26e0649)
  - [other possible topics](#orgd587eda)
    - [lamberts regex problem, munging sudoers lines](#org68106ba)
    - [](#org448f08c)
    - [the great "say Set.<sup>methods</sup>" affair](#org9c88ff3)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org854de16)
    - [69 cent tour of raku regexs](#orgb360eda)
    - [some simple grammar demos](#orgafa0392)


<a id="org4d1a2e0"></a>

# meeting notes Mar 07, 2021


<a id="org5b4a074"></a>

## announcments


<a id="org753fec7"></a>

### richard hainsworth: alternative pod6 processing

1.  Raku docs: <http://raku.finanalyst.org>


<a id="orge982168"></a>

## possible topics (carried over from earlier meetings)


<a id="org769df68"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orga888533"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org06691bb"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org3bfe5ec"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org26e0649"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgd587eda"></a>

## other possible topics


<a id="org68106ba"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution, additional test cases

2.  raku translation&#x2013; still has problems


<a id="org448f08c"></a>

### 


<a id="org9c88ff3"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org854de16"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgb360eda"></a>

### 69 cent tour of raku regexs


<a id="orgafa0392"></a>

### some simple grammar demos
