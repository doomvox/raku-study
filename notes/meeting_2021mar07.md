- [meeting notes Mar 07, 2021](#org25e6b70)
  - [announcments](#orge329669)
    - [richard hainsworth: alternative pod6 processing](#orgc58352a)
  - [the usual meeting links:](#orgee55a3f)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgb5c1be3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org8f88e95)
  - [topics](#org5d7460a)
    - [lamberts regex problem, munging sudoers lines](#org2b20865)
    - [jeff questions about compiler options, etc](#org438a0fe)
    - [the great "say Set.<sup>methods</sup>" affair](#org7f72196)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org5e8dc53)
    - [69 cent tour of raku regexs](#orgcffe105)
    - [some simple grammar demos](#org0c14911)
  - [possible topics (carried over from earlier meetings)](#orgc226e88)
    - [Steven<sub>lembark</sub>](#org285533c)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgfe13b4b)
    - [andrew shitov "Perl 6 at a Glance"](#org2687596)
    - [perl weekly challenge:](#orgc0fdad8)
    - [promises and threads](#org52000ff)


<a id="org25e6b70"></a>

# meeting notes Mar 07, 2021


<a id="orge329669"></a>

## announcments


<a id="orgc58352a"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgee55a3f"></a>

## the usual meeting links:


<a id="orgb5c1be3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org8f88e95"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org5d7460a"></a>

## topics


<a id="org2b20865"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org438a0fe"></a>

### jeff questions about compiler options, etc


<a id="org7f72196"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org5e8dc53"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgcffe105"></a>

### 69 cent tour of raku regexs


<a id="org0c14911"></a>

### some simple grammar demos


<a id="orgc226e88"></a>

## possible topics (carried over from earlier meetings)


<a id="org285533c"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgfe13b4b"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org2687596"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgc0fdad8"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org52000ff"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>
