- [meeting notes May 02, 2021](#org59d7e07)
  - [meeting links](#org400defe)
  - [agenda stuff](#org16ab090)
    - [69 cent tour of git and github](#org2242750)
    - [typology: what is accepted by what](#orgcdb15ab)
    - [raku classes as data containers](#org8076b97)
    - [slurpy hash named arguments, discussion with ralph](#org2fd51ef)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#org87dc3c7)
    - [some silly printf experiments (perl5)](#org5db71e8)
    - [raku idioms](#orgfb82202)
    - [data container class](#orgfef3c3c)
  - [announcement](#org0c4efcd)
    - [for next week, could everyone install git if they haven't already?](#org5014fab)
    - [bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orge3da635)
    - [Look at this:](#org707096c)


<a id="org59d7e07"></a>

# meeting notes May 02, 2021


<a id="org400defe"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="org16ab090"></a>

## agenda stuff


<a id="org2242750"></a>

### 69 cent tour of git and github


<a id="orgcdb15ab"></a>

### typology: what is accepted by what

1.  is anything ever cast automatically


<a id="org8076b97"></a>

### raku classes as data containers


<a id="org2fd51ef"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="org87dc3c7"></a>

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


<a id="org5db71e8"></a>

### some silly printf experiments (perl5)

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/line_character_counting_via_sprintf.pl>


<a id="orgfb82202"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="orgfef3c3c"></a>

### data container class

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data<sub>container</sub><sub>class.raku</sub>


<a id="org0c4efcd"></a>

## announcement


<a id="org5014fab"></a>

### for next week, could everyone install git if they haven't already?


<a id="orge3da635"></a>

### bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org707096c"></a>

### Look at this:

"All your idioms are belong to us" <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
