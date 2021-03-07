- [meeting notes Mar 07, 2021](#org3765c49)
  - [announcments](#orgcc51e40)
    - [richard hainsworth: alternative pod6 processing](#org0777b5e)
  - [usual links:](#org5a5ad38)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org7db359b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org15a45ff)
  - [possible topics (carried over from earlier meetings)](#org87dd444)
    - [Steven<sub>lembark</sub>](#org6ccb46f)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org796b8a1)
    - [andrew shitov "Perl 6 at a Glance"](#org05197f7)
    - [perl weekly challenge:](#org11e95e4)
    - [promises and threads](#orgeb6aacb)
  - [other possible topics](#orgd2f4967)
    - [lamberts regex problem, munging sudoers lines](#orga5d0e91)
    - [](#org2874b9d)
    - [the great "say Set.<sup>methods</sup>" affair](#org78fd6fb)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org849b43a)
    - [69 cent tour of raku regexs](#org6c1ed3f)
    - [some simple grammar demos](#orgdd4e457)


<a id="org3765c49"></a>

# meeting notes Mar 07, 2021


<a id="orgcc51e40"></a>

## announcments


<a id="org0777b5e"></a>

### richard hainsworth: alternative pod6 processing

1.  Raku docs: <http://raku.finanalyst.org>


<a id="org5a5ad38"></a>

## usual links:


<a id="org7db359b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org15a45ff"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org87dd444"></a>

## possible topics (carried over from earlier meetings)


<a id="org6ccb46f"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org796b8a1"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org05197f7"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org11e95e4"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgeb6aacb"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgd2f4967"></a>

## other possible topics


<a id="orga5d0e91"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org2874b9d"></a>

### 


<a id="org78fd6fb"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org849b43a"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org6c1ed3f"></a>

### 69 cent tour of raku regexs


<a id="orgdd4e457"></a>

### some simple grammar demos
