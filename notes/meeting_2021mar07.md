- [meeting notes Mar 07, 2021](#orgbd61999)
  - [announcments](#org3b842db)
    - [richard hainsworth: alternative pod6 processing](#org0fd3b10)
  - [the usual meeting links:](#org7d01ea2)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org28f6a16)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgc30cf3b)
  - [topics](#org5f6cac7)
    - [lamberts regex problem, munging sudoers lines](#org9e78e4b)
    - [jeff questions about compiler options, etc](#org9de8523)
    - [the great "say Set.<sup>methods</sup>" affair](#org3a1c805)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org61da82a)
    - [69 cent tour of raku regexs](#org692f9fe)
    - [some simple grammar demos](#org5e21679)
  - [possible topics (carried over from earlier meetings)](#orgb616031)
    - [Steven<sub>lembark</sub>](#orgaf992cf)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orgae4762e)
    - [andrew shitov "Perl 6 at a Glance"](#org1c773c7)
    - [perl weekly challenge:](#org8792ba9)
    - [promises and threads](#org576e358)
  - [linux kernel module to shut up damn bell](#org16f1327)
  - [bash books, much new features](#orgca909d9)
    - [bash          (d christensen pick)](#orgc3fc96d)
    - [bash cookbook (d christensen pick, weak writing)](#org446fa79)
    - [unix shells (jeff pick)](#orga6ef043)
    - [bash programming, apress (alan)](#orgb045ff4)


<a id="orgbd61999"></a>

# meeting notes Mar 07, 2021


<a id="org3b842db"></a>

## announcments


<a id="org0fd3b10"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org7d01ea2"></a>

## the usual meeting links:


<a id="org28f6a16"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgc30cf3b"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org5f6cac7"></a>

## topics


<a id="org9e78e4b"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org9de8523"></a>

### jeff questions about compiler options, etc


<a id="org3a1c805"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org61da82a"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org692f9fe"></a>

### 69 cent tour of raku regexs


<a id="org5e21679"></a>

### some simple grammar demos


<a id="orgb616031"></a>

## possible topics (carried over from earlier meetings)


<a id="orgaf992cf"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orgae4762e"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org1c773c7"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org8792ba9"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org576e358"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org16f1327"></a>

## linux kernel module to shut up damn bell


<a id="orgca909d9"></a>

## bash books, much new features


<a id="orgc3fc96d"></a>

### bash          (d christensen pick)


<a id="org446fa79"></a>

### bash cookbook (d christensen pick, weak writing)


<a id="orga6ef043"></a>

### unix shells (jeff pick)


<a id="orgb045ff4"></a>

### bash programming, apress (alan)
