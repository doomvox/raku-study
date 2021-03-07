- [meeting notes Mar 07, 2021](#org97a8b91)
  - [announcments](#org6f0f6d0)
    - [richard hainsworth: alternative pod6 processing](#org304c0dc)
  - [the usual meeting links:](#org55f94dc)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org5f44d2b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org0a44071)
  - [topics](#org3a2a65a)
    - [lamberts regex problem, munging sudoers lines](#orgada5b05)
    - [jeff questions about compiler options, etc](#orgd5b15b2)
    - [the great "say Set.<sup>methods</sup>" affair](#orgabe0770)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orge7e1015)
    - [69 cent tour of raku regexs](#org4540f5f)
    - [some simple grammar demos](#org477c2c0)
  - [possible topics (carried over from earlier meetings)](#org154d7b6)
    - [Steven<sub>lembark</sub>](#org7ef7f25)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org0b01c98)
    - [andrew shitov "Perl 6 at a Glance"](#org4735e28)
    - [perl weekly challenge:](#org0307697)
    - [promises and threads](#org3d280c0)
  - [linux kernel module to shut up damn bell](#orge696213)
  - [bash books](#orgbb84ed1)


<a id="org97a8b91"></a>

# meeting notes Mar 07, 2021


<a id="org6f0f6d0"></a>

## announcments


<a id="org304c0dc"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org55f94dc"></a>

## the usual meeting links:


<a id="org5f44d2b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org0a44071"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org3a2a65a"></a>

## topics


<a id="orgada5b05"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgd5b15b2"></a>

### jeff questions about compiler options, etc


<a id="orgabe0770"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orge7e1015"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org4540f5f"></a>

### 69 cent tour of raku regexs


<a id="org477c2c0"></a>

### some simple grammar demos


<a id="org154d7b6"></a>

## possible topics (carried over from earlier meetings)


<a id="org7ef7f25"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org0b01c98"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org4735e28"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org0307697"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org3d280c0"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orge696213"></a>

## linux kernel module to shut up damn bell


<a id="orgbb84ed1"></a>

## bash books

bash (d christensen pick) bash cookbook (d christensen pick, weak writing) unix shells (jeff pick)
