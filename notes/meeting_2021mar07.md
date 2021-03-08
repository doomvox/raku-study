- [meeting notes Mar 07, 2021](#orgaf0dcf3)
  - [announcments](#org16928b5)
    - [richard hainsworth: alternative pod6 processing](#org7b2f48b)
  - [the usual meeting links:](#org525c23a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org05f0cb3)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgbab2828)
  - [topics](#orge608cec)
    - [lamberts regex problem, munging sudoers lines](#org82fbcc2)
    - [jeff questions about compiler options, etc](#orgb933d47)
    - [the great "say Set.<sup>methods</sup>" affair](#org9f2c148)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org64e04df)
    - [69 cent tour of raku regexs](#orge3eff96)
    - [some simple grammar demos](#org1fc6a97)
  - [possible topics (carried over from earlier meetings)](#orgb93d343)
    - [Steven<sub>lembark</sub>](#org40929e4)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#orga7681d1)
    - [andrew shitov "Perl 6 at a Glance"](#org4e76170)
    - [perl weekly challenge:](#orgd169303)
    - [promises and threads](#org5a5c2b2)
  - [linux kernel module to shut up damn bell](#org1d4351d)
  - [bash books, much new features](#org7ee15bd)
    - [bash          (d christensen pick)](#org55c8850)
    - [bash cookbook (d christensen mention, weak writing)](#org16bc305)
    - [unix shells (jeff pick)](#org9c7c83a)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orga041741)
    - [book on the hidden logic of english:](#org15ed19b)
    - [humble bundle promotion: oreilley pocket references](#orge8824fa)


<a id="orgaf0dcf3"></a>

# meeting notes Mar 07, 2021


<a id="org16928b5"></a>

## announcments


<a id="org7b2f48b"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org525c23a"></a>

## the usual meeting links:


<a id="org05f0cb3"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgbab2828"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orge608cec"></a>

## topics


<a id="org82fbcc2"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgb933d47"></a>

### jeff questions about compiler options, etc


<a id="org9f2c148"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org64e04df"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orge3eff96"></a>

### 69 cent tour of raku regexs


<a id="org1fc6a97"></a>

### some simple grammar demos


<a id="orgb93d343"></a>

## possible topics (carried over from earlier meetings)


<a id="org40929e4"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="orga7681d1"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org4e76170"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgd169303"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org5a5c2b2"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org1d4351d"></a>

## linux kernel module to shut up damn bell


<a id="org7ee15bd"></a>

## bash books, much new features


<a id="org55c8850"></a>

### bash          (d christensen pick)


<a id="org16bc305"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org9c7c83a"></a>

### unix shells (jeff pick)


<a id="orga041741"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org15ed19b"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orge8824fa"></a>

### humble bundle promotion: oreilley pocket references
