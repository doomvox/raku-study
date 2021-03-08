- [meeting notes Mar 07, 2021](#org77fdda7)
  - [announcments](#org0c8ab9e)
    - [richard hainsworth: alternative pod6 processing](#orgff0b5e9)
  - [the usual meeting links:](#org7f7d55c)
    - [<https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>](#orgca29728)
    - [<https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>](#org1f3aabf)
  - ["topics" (disorganized list of stuff I'm pretending belongs in hierarchical order)](#org2ce9b44)
    - [lamberts regex problem, munging sudoers lines](#orgdc1b38b)
    - [jeff questions about compiler options, etc](#org10bed85)
    - [the great "say Set.<sup>methods</sup>" affair](#orga92a62c)
    - [a stupid mistake that isn't: naming a method with a leading ^](#orgc6c37c2)
    - [69 cent tour of raku regexs](#org3581e42)
    - [some simple grammar demos](#orgd43c8b2)
  - [possible topics (carried over from earlier meetings)](#orge02d46c)
    - [Steven<sub>lembark</sub>](#org1efc541)
    - [adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)](#org256cd08)
    - [andrew shitov "Perl 6 at a Glance"](#org88bca43)
    - [perl weekly challenge:](#org8bc5492)
    - [promises and threads](#org6587206)
  - [linux kernel module to shut up damn bell](#orgcf78de8)
  - [bash books, much new features](#org7bed207)
    - [bash          (d christensen pick)](#org8917a86)
    - [bash cookbook (d christensen mention, weak writing)](#orgbc6c4db)
    - [unix shells (jeff pick)](#org7fbd36d)
    - ["pro bash programming" by chris johnson, apress (alan pick)](#org103ae4a)
    - [book on the hidden logic of english:](#org8f104a2)
    - [humble bundle promotion: oreilley pocket references](#org16cc149)
    - [bruce gray discussion](#org57de8a1)
    - [shadow novel where esperanto was spoken](#org4955d8d)
    - ["Crime Under Cover" (1941) by Maxwell Grant](#org230b6ac)


<a id="org77fdda7"></a>

# meeting notes Mar 07, 2021


<a id="org0c8ab9e"></a>

## announcments


<a id="orgff0b5e9"></a>

### richard hainsworth: alternative pod6 processing

1.  His version of Raku docs: <http://raku.finanalyst.org>


<a id="org7f7d55c"></a>

## the usual meeting links:


<a id="orgca29728"></a>

### <https://github.com/doomvox/raku-study/tree/main/bin/2021mar07>


<a id="org1f3aabf"></a>

### <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021mar07.md>


<a id="org2ce9b44"></a>

## "topics" (disorganized list of stuff I'm pretending belongs in hierarchical order)


<a id="orgdc1b38b"></a>

### lamberts regex problem, munging sudoers lines

1.  david christensen variation: scripted solution

2.  raku translation&#x2013; still has problems


<a id="org10bed85"></a>

### jeff questions about compiler options, etc


<a id="orga92a62c"></a>

### the great "say Set.<sup>methods</sup>" affair

1.  the issue (bug report and discussion):

    <https://github.com/rakudo/rakudo/issues/4207>

2.  the roast test, aka the spec:

    <https://github.com/Raku/roast/blob/master/S12-introspection/methods.t>
    
    1.  it checks the case of inheritence, but not roles


<a id="orgc6c37c2"></a>

### a stupid mistake that isn't: naming a method with a leading ^

1.  <https://stackoverflow.com/questions/54143036/class-method-name-with-doesnt-get-invoked-properly/54147131#54147131>

    1.  should this generate a warning/error?


<a id="org3581e42"></a>

### 69 cent tour of raku regexs


<a id="orgd43c8b2"></a>

### some simple grammar demos


<a id="orge02d46c"></a>

## possible topics (carried over from earlier meetings)


<a id="org1efc541"></a>

### Steven<sub>lembark</sub>

1.  <https://www.slideshare.net/lembark/hypers-and-gathers-and-takes-oh-my>

    1.  slide21:  "unit sub MAIN { &#x2026;"  unit?

2.  <https://www.slideshare.net/lembark/generating-querying-calendar-tables-in-posgresql>


<a id="org256cd08"></a>

### adverbs that control returns, e.g. :p for pairs (a feature Bruce Gray likes)

1.  <https://docs.raku.org/language/subscripts#index-entry-:p_(subscript_adverb)>


<a id="org88bca43"></a>

### andrew shitov "Perl 6 at a Glance"

1.  <https://andrewshitov.com/perl6-at-a-glance/>

2.  <https://andrewshitov.com/wp-content/uploads/2020/01/Perl-6-at-a-Glance.pdf>


<a id="org8bc5492"></a>

### perl weekly challenge:

1.  <https://perlweeklychallenge.org/>


<a id="org6587206"></a>

### promises and threads

1.  <https://www.reddit.com/r/rakulang/comments/lthpxe/are_promises_multithreaded/>

2.  Jonathan Worthington

    1.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/Racing-to-writeness-to-wrongness-leads.md>
    
    2.  <https://github.com/Raku/CCR/blob/main/Remaster/Jonathan%20Worthington/A-unified-and-improved-Supply-concurrency-model.md>


<a id="orgcf78de8"></a>

## linux kernel module to shut up damn bell


<a id="org7bed207"></a>

## bash books, much new features


<a id="org8917a86"></a>

### bash          (d christensen pick)


<a id="orgbc6c4db"></a>

### bash cookbook (d christensen mention, weak writing)


<a id="org7fbd36d"></a>

### unix shells (jeff pick)


<a id="org103ae4a"></a>

### "pro bash programming" by chris johnson, apress (alan pick)


<a id="org8f104a2"></a>

### book on the hidden logic of english:

1.  "uncovering the logic of english" (jeff pick)

    1.  clusters of morphemes


<a id="org16cc149"></a>

### humble bundle promotion: oreilley pocket references


<a id="org57de8a1"></a>

### bruce gray discussion

1.  <http://rosettacode.org/wiki/Modified_random_distribution#Raku>


<a id="org4955d8d"></a>

### shadow novel where esperanto was spoken


<a id="org230b6ac"></a>

### "Crime Under Cover" (1941) by Maxwell Grant

1.  <http://obsidianrook.com/doomfiles/LA_OMBRO.html>
