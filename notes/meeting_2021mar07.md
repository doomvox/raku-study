- [meeting notes Mar 07, 2021](#orga4aa2c9)
  - [announcments](#orgff0a977)
    - [richard hainsworth: alternative pod6 processing](#orgc0b1b3b)
  - [the usual meeting links:](#orgdf386d3)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org3ffa128)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org1ee90f1)
  - [topics](#orgfcebb00)
    - [lamberts regex problem, munging sudoers lines](#orgc389aad)
    - [jeff questions about compiler options, etc](#org75afd1d)
    - [the great "say Set.<sup>methods</sup>" affair](#org27df8e3)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org31fe991)
    - [69 cent tour of raku regexs](#org9d0e067)
    - [some simple grammar demos](#org81add54)
  - [possible topics (carried over from earlier meetings)](#orgee769f3)
    - [Steven<sub>lembark</sub>](#org7ced90a)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org6c471c0)
    - [andrew shitov "Perl 6 at a Glance"](#org081c3c0)
    - [perl weekly challenge:](#orgecf9251)
    - [promises and threads](#org298be97)
  - [linux kernel module to shut up damn bell](#org88acbd3)
  - [bash books, much new features](#org471e04f)
    - [bash          (d christensen pick)](#orgc26890e)
    - [bash cookbook (d christensen pick, weak writing)](#orgb4b3638)
    - [unix shells (jeff pick)](#org4d18cc9)
    - [bash programming, apress (alan)](#orgcb7604e)
    - [book on the hidden logic of english:](#orgfb99964)


<a id="orga4aa2c9"></a>

# meeting notes Mar 07, 2021


<a id="orgff0a977"></a>

## announcments


<a id="orgc0b1b3b"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orgdf386d3"></a>

## the usual meeting links:


<a id="org3ffa128"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org1ee90f1"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgfcebb00"></a>

## topics


<a id="orgc389aad"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org75afd1d"></a>

### jeff questions about compiler options, etc


<a id="org27df8e3"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org31fe991"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org9d0e067"></a>

### 69 cent tour of raku regexs


<a id="org81add54"></a>

### some simple grammar demos


<a id="orgee769f3"></a>

## possible topics (carried over from earlier meetings)


<a id="org7ced90a"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org6c471c0"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org081c3c0"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgecf9251"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org298be97"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org88acbd3"></a>

## linux kernel module to shut up damn bell


<a id="org471e04f"></a>

## bash books, much new features


<a id="orgc26890e"></a>

### bash          (d christensen pick)


<a id="orgb4b3638"></a>

### bash cookbook (d christensen pick, weak writing)


<a id="org4d18cc9"></a>

### unix shells (jeff pick)


<a id="orgcb7604e"></a>

### bash programming, apress (alan)


<a id="orgfb99964"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes
