- [meeting notes May 02, 2021](#org1308b53)
  - [meeting links](#org4d079f8)
  - [agenda stuff](#orgeda268b)
    - [69 cent tour of git and github](#org772dce9)
    - [typology: what is accepted by what](#orga203799)
    - [raku classes as data containers](#orgc728c6c)
    - [slurpy hash named arguments, discussion with ralph](#orgcc80bab)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#org2b2c7a3)
    - [some silly printf experiments (perl5)](#org8103d08)
    - [raku idioms](#org933b168)
    - [data container class](#org95e975b)
  - [announcement](#org709d874)
    - [for next week, could everyone install git if they haven't already?](#org94faa33)
    - [bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orgc8d36bd)
    - [Look at this:](#org5a2956b)


<a id="org1308b53"></a>

# meeting notes May 02, 2021


<a id="org4d079f8"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="orgeda268b"></a>

## agenda stuff


<a id="org772dce9"></a>

### 69 cent tour of git and github


<a id="orga203799"></a>

### typology: what is accepted by what

1.  is anything ever cast automatically


<a id="orgc728c6c"></a>

### raku classes as data containers


<a id="orgcc80bab"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="org2b2c7a3"></a>

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


<a id="org8103d08"></a>

### some silly printf experiments (perl5)

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/line_character_counting_via_sprintf.pl>


<a id="org933b168"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="org95e975b"></a>

### data container class

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data<sub>container</sub><sub>class.raku</sub>


<a id="org709d874"></a>

## announcement


<a id="org94faa33"></a>

### for next week, could everyone install git if they haven't already?


<a id="orgc8d36bd"></a>

### bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org5a2956b"></a>

### Look at this:

"All your idioms are belong to us" <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
