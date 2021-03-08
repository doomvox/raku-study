- [meeting notes Mar 07, 2021](#org2ecb1cd)
  - [announcments](#org4f3d635)
    - [richard hainsworth: alternative pod6 processing](#orgcbe1f4e)
  - [the usual meeting links:](#orge4adbf5)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgff9d2cd)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgb3d16fb)
  - [topics](#org964e7ab)
    - [lamberts regex problem, munging sudoers lines](#org506e797)
    - [jeff questions about compiler options, etc](#org27cdcb9)
    - [the great "say Set.<sup>methods</sup>" affair](#orga1fc71a)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org1b3aca4)
    - [69 cent tour of raku regexs](#org438c1e5)
    - [some simple grammar demos](#orgec3af83)
  - [possible topics (carried over from earlier meetings)](#org382dcf9)
    - [Steven<sub>lembark</sub>](#org93b6184)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org943939a)
    - [andrew shitov "Perl 6 at a Glance"](#orgf7364a6)
    - [perl weekly challenge:](#orgd2c5f51)
    - [promises and threads](#org080d461)
  - [linux kernel module to shut up damn bell](#orgc83b8c4)
  - [bash books, much new features](#org36f070e)
    - [bash          (d christensen pick)](#org72ea11a)
    - [bash cookbook (d christensen mention, weak writing)](#org585eae4)
    - [unix shells (jeff pick)](#org2f95777)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org5bc7f84)
    - [book on the hidden logic of english:](#orgf9966fe)
    - [humble bundle promotion: oreilley pocket references](#orgc821df4)
    - [bruce gray discussion](#org84d4a56)
    - [shadow novel where esperanto was spoken](#orgbbe47f9)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org3eb2df0)


<a id="org2ecb1cd"></a>

# meeting notes Mar 07, 2021


<a id="org4f3d635"></a>

## announcments


<a id="orgcbe1f4e"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="orge4adbf5"></a>

## the usual meeting links:


<a id="orgff9d2cd"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgb3d16fb"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org964e7ab"></a>

## topics


<a id="org506e797"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org27cdcb9"></a>

### jeff questions about compiler options, etc


<a id="orga1fc71a"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org1b3aca4"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org438c1e5"></a>

### 69 cent tour of raku regexs


<a id="orgec3af83"></a>

### some simple grammar demos


<a id="org382dcf9"></a>

## possible topics (carried over from earlier meetings)


<a id="org93b6184"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org943939a"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgf7364a6"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="orgd2c5f51"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org080d461"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgc83b8c4"></a>

## linux kernel module to shut up damn bell


<a id="org36f070e"></a>

## bash books, much new features


<a id="org72ea11a"></a>

### bash          (d christensen pick)


<a id="org585eae4"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org2f95777"></a>

### unix shells (jeff pick)


<a id="org5bc7f84"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="orgf9966fe"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="orgc821df4"></a>

### humble bundle promotion: oreilley pocket references


<a id="org84d4a56"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="orgbbe47f9"></a>

### shadow novel where esperanto was spoken


<a id="org3eb2df0"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
