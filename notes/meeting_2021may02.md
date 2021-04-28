- [meeting notes May 02, 2021](#orgd8b8b67)
  - [meeting links](#org24b3078)
  - [agenda stuff](#orgfaf4fb9)
    - [typology: what is accepted by what](#org01a986f)
    - [slurpy hash named arguments, discussion with ralph](#org04df287)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#org5e92919)
    - [some silly printf experiments (perl5)](#org02e3c1b)
    - [raku idioms](#org7572be8)
    - [data container class](#orgbf6d40f)
  - [announcement](#org716c53a)
    - [for next week, could everyone install git if they haven't already?](#orgbb7c8a9)
    - [bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#orga3b1c66)
    - [Look at this:](#org48f5054)


<a id="orgd8b8b67"></a>

# meeting notes May 02, 2021


<a id="org24b3078"></a>

## meeting links

This file of notes can be read over at github: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021may02.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021may02/>


<a id="orgfaf4fb9"></a>

## agenda stuff


<a id="org01a986f"></a>

### typology: what is accepted by what

1.  is anything ever cast automatically


<a id="org04df287"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="org5e92919"></a>

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


<a id="org02e3c1b"></a>

### some silly printf experiments (perl5)

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/line_character_counting_via_sprintf.pl>


<a id="org7572be8"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="orgbf6d40f"></a>

### data container class

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data<sub>container</sub><sub>class.raku</sub>


<a id="org716c53a"></a>

## announcement


<a id="orgbb7c8a9"></a>

### for next week, could everyone install git if they haven't already?


<a id="orga3b1c66"></a>

### bruce gray rosetta  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org48f5054"></a>

### Look at this:

"All your idioms are belong to us" <https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>
