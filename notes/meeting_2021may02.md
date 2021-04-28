- [meeting notes May 02, 2021](#orgac3ed7b)
  - [meeting links](#orgc209cdc)
  - [agenda stuff](#org11e4612)
    - [69cent tour of git and github](#org1afff03)
    - [typology: what is accepted by what](#org8ad0fa8)
    - [raku classes as data containers](#orga26df93)
    - [slurpy hash named arguments, discussion with ralph](#orgac5b562)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#org44f9f7e)
    - [some silly printf experiments (perl5)](#org690d4ed)
    - [raku idioms](#org2736375)
    - [data container class](#org4b62b16)
  - [announcement](#org5cb5b39)
    - [for next week, could everyone install git if they haven't already?](#orgfb1c453)
    - [bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orgae04956)
    - [Look at this:](#org1f3ec97)


<a id="orgac3ed7b"></a>

# meeting notes May 02, 2021


<a id="orgc209cdc"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="org11e4612"></a>

## agenda stuff


<a id="org1afff03"></a>

### 69cent tour of git and github


<a id="org8ad0fa8"></a>

### typology: what is accepted by what

1.  is anything ever cast automatically


<a id="orga26df93"></a>

### raku classes as data containers


<a id="orgac5b562"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="org44f9f7e"></a>

### paul evans (leonerd) talk from 2020 (or 2021?)

1.  <https://ftp.osuosl.org/pub/fosdem/2021/D.perl/perl_in_2025.mp4>

2.  my local copy:

    /home/doom/Dust/Video/Tech/paul<sub>evans</sub>-future<sub>of</sub><sub>perl</sub><sub>in</sub><sub>2025</sub>-2021feb06.mp4

3.  summary: ways to make perl more raku-like in the absence of a type system

    1.  match/case ideas are good
    
        1.  restricting to constants is un-perlish, though
        
        2.  maybe:
        
            perserve given/when, with default to "smartmatch", but you get match/case behavior when you specify a comparison
    
    2.  some slides: /home/doom/End/Cave/Perl6/Ore/Leonerd/leonerd-match<sub>case</sub><sub>idea</sub>-01.png


<a id="org690d4ed"></a>

### some silly printf experiments (perl5)

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/line_character_counting_via_sprintf.pl>


<a id="org2736375"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="org4b62b16"></a>

### data container class

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data<sub>container</sub><sub>class.raku</sub>


<a id="org5cb5b39"></a>

## announcement


<a id="orgfb1c453"></a>

### for next week, could everyone install git if they haven't already?


<a id="orgae04956"></a>

### bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org1f3ec97"></a>

### Look at this:

"All your idioms are belong to us" <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
