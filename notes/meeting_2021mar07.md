- [meeting notes Mar 07, 2021](#orgd489839)
  - [announcments](#org73edf64)
    - [richard hainsworth: alternative pod6 processing](#orgb44f449)
  - [the usual meeting links:](#org2f7a87a)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#org1efa336)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org8ed1540)
  - [topics](#org2e1e246)
    - [lamberts regex problem, munging sudoers lines](#org042d274)
    - [jeff questions about compiler options, etc](#org979620f)
    - [the great "say Set.<sup>methods</sup>" affair](#org54e4512)
    - [a stupid mistake that isn't: naming a method with a leading ^](#org3d4fcb8)
    - [69 cent tour of raku regexs](#orgfa7804b)
    - [some simple grammar demos](#org9cc28b5)
  - [possible topics (carried over from earlier meetings)](#org6943f95)
    - [Steven<sub>lembark</sub>](#orgac944ae)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org500d19d)
    - [andrew shitov "Perl 6 at a Glance"](#orgef90703)
    - [perl weekly challenge:](#org81df6a3)
    - [promises and threads](#orgd910149)
  - [linux kernel module to shut up damn bell](#org282b89b)
  - [bash books, much new features](#orgc2dc3a7)
    - [bash          (d christensen pick)](#orgf169fee)
    - [bash cookbook (d christensen mention, weak writing)](#org755dd21)
    - [unix shells (jeff pick)](#orgbaa5b8b)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#orgdbc7c8e)
    - [book on the hidden logic of english:](#org26bb9ac)
    - [humble bundle promotion: oreilley pocket references](#org9ce8579)
    - [bruce gray discussion](#orgf6ab64c)
    - [shadow novel where esperanto was spoken](#org6270320)


<a id="orgd489839"></a>

# meeting notes Mar 07, 2021


<a id="org73edf64"></a>

## announcments


<a id="orgb44f449"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org2f7a87a"></a>

## the usual meeting links:


<a id="org1efa336"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org8ed1540"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org2e1e246"></a>

## topics


<a id="org042d274"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org979620f"></a>

### jeff questions about compiler options, etc


<a id="org54e4512"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="org3d4fcb8"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="orgfa7804b"></a>

### 69 cent tour of raku regexs


<a id="org9cc28b5"></a>

### some simple grammar demos


<a id="org6943f95"></a>

## possible topics (carried over from earlier meetings)


<a id="orgac944ae"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org500d19d"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="orgef90703"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org81df6a3"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="orgd910149"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="org282b89b"></a>

## linux kernel module to shut up damn bell


<a id="orgc2dc3a7"></a>

## bash books, much new features


<a id="orgf169fee"></a>

### bash          (d christensen pick)


<a id="org755dd21"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="orgbaa5b8b"></a>

### unix shells (jeff pick)


<a id="orgdbc7c8e"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org26bb9ac"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org9ce8579"></a>

### humble bundle promotion: oreilley pocket references


<a id="orgf6ab64c"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org6270320"></a>

### shadow novel where esperanto was spoken
