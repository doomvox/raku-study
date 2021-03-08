- [meeting notes Mar 07, 2021](#org300bc0a)
  - [announcments](#org68edbce)
    - [richard hainsworth: alternative pod6 processing](#orgd561720)
  - [the usual meeting links:](#org3d7200d)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org249573b)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#orgd813d22)
  - [topics](#orgc3d3c18)
    - [lamberts regex problem, munging sudoers lines](#org08a4d74)
    - [jeff questions about compiler options, etc](#orgd524582)
    - [the great "say Set.<sup>methods</sup>" affair](#org0fd443c)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org137de7f)
    - [69 cent tour of raku regexs](#orgba72d50)
    - [some simple grammar demos](#org96fa8a7)
  - [possible topics (carried over from earlier meetings)](#org9c56021)
    - [Steven<sub>lembark</sub>](#orgf877a61)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org3aef7b5)
    - [andrew shitov "Perl 6 at a Glance"](#org6f04bb6)
    - [perl weekly challenge:](#org0b236b1)
    - [promises and threads](#orgb4f3a00)
  - [linux kernel module to shut up damn bell](#org9187fc5)
  - [bash books, much new features](#orga732485)
    - [bash          (d christensen pick)](#org8a3875f)
    - [bash cookbook (d christensen mention, weak writing)](#org8f9ed3f)
    - [unix shells (jeff pick)](#org4eeba47)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgd38da3d)
    - [book on the hidden logic of english:](#org743b6f1)
    - [humble bundle promotion: oreilley pocket references](#org4a16bf9)
    - [bruce gray discussion](#org8879d11)


<a id="org300bc0a"></a>

# meeting notes Mar 07, 2021


<a id="org68edbce"></a>

## announcments


<a id="orgd561720"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org3d7200d"></a>

## the usual meeting links:


<a id="org249573b"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="orgd813d22"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="orgc3d3c18"></a>

## topics


<a id="org08a4d74"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="orgd524582"></a>

### jeff questions about compiler options, etc


<a id="org0fd443c"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org137de7f"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgba72d50"></a>

### 69 cent tour of raku regexs


<a id="org96fa8a7"></a>

### some simple grammar demos


<a id="org9c56021"></a>

## possible topics (carried over from earlier meetings)


<a id="orgf877a61"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org3aef7b5"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org6f04bb6"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org0b236b1"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgb4f3a00"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org9187fc5"></a>

## linux kernel module to shut up damn bell


<a id="orga732485"></a>

## bash books, much new features


<a id="org8a3875f"></a>

### bash          (d christensen pick)


<a id="org8f9ed3f"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org4eeba47"></a>

### unix shells (jeff pick)


<a id="orgd38da3d"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org743b6f1"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org4a16bf9"></a>

### humble bundle promotion: oreilley pocket references


<a id="org8879d11"></a>

### bruce gray discussion

<http://rosettacode.org/wiki/Modified_random_distribution#Raku>
