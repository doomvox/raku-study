- [meeting notes Mar 07, 2021](#orgfe50b21)
  - [announcments](#org4621e75)
    - [richard hainsworth: alternative pod6 processing](#org5db9ce3)
  - [the usual meeting links:](#orgcc0caed)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org54efefb)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org277e00b)
  - [topics](#org881e1d9)
    - [lamberts regex problem, munging sudoers lines](#org015ff7c)
    - [jeff questions about compiler options, etc](#org6325f32)
    - [the great "say Set.<sup>methods</sup>" affair](#orge029f99)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org764a0ee)
    - [69 cent tour of raku regexs](#org2fdbaf8)
    - [some simple grammar demos](#org92a6201)
  - [possible topics (carried over from earlier meetings)](#orge604607)
    - [Steven<sub>lembark</sub>](#orgf2ab2af)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgc4d3dd2)
    - [andrew shitov "Perl 6 at a Glance"](#org98a1803)
    - [perl weekly challenge:](#org9450995)
    - [promises and threads](#org7605049)
  - [linux kernel module to shut up damn bell](#org15f22cc)
  - [bash books, much new features](#orgc15a047)
    - [bash          (d christensen pick)](#org1695e37)
    - [bash cookbook (d christensen pick, weak writing)](#orge5f0963)
    - [unix shells (jeff pick)](#org521bb9b)
    - [bash programming, apress (alan)](#orga142a46)
    - [book on the hidden logic of english:](#org336e3ba)


<a id="orgfe50b21"></a>

# meeting notes Mar 07, 2021


<a id="org4621e75"></a>

## announcments


<a id="org5db9ce3"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgcc0caed"></a>

## the usual meeting links:


<a id="org54efefb"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org277e00b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org881e1d9"></a>

## topics


<a id="org015ff7c"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org6325f32"></a>

### jeff questions about compiler options, etc


<a id="orge029f99"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org764a0ee"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org2fdbaf8"></a>

### 69 cent tour of raku regexs


<a id="org92a6201"></a>

### some simple grammar demos


<a id="orge604607"></a>

## possible topics (carried over from earlier meetings)


<a id="orgf2ab2af"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgc4d3dd2"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org98a1803"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org9450995"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org7605049"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org15f22cc"></a>

## linux kernel module to shut up damn bell


<a id="orgc15a047"></a>

## bash books, much new features


<a id="org1695e37"></a>

### bash          (d christensen pick)


<a id="orge5f0963"></a>

### bash cookbook (d christensen pick, weak writing)


<a id="org521bb9b"></a>

### unix shells (jeff pick)


<a id="orga142a46"></a>

### bash programming, apress (alan)


<a id="org336e3ba"></a>

### book on the hidden logic of english:

1.
