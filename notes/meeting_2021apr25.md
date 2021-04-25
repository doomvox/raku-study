- [meeting notes Apr 25, 2021](#orge9bde23)
  - [meeting links](#org245f441)
  - [agenda stuff](#orge398333)
    - [slurpy hash named arguments, discussion with ralph](#org78f306c)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#org1a67564)
    - [some silly printf experiments (perl5)](#org74a7b60)
    - [raku idioms](#org0d69298)
    - [data container class](#org8ac7d1d)
  - [announcement](#orgffab4eb)
    - [for next week, could everyone install git if they haven't already?](#org3baa431)
    - [<https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>](#org2740532)


<a id="orge9bde23"></a>

# meeting notes Apr 25, 2021


<a id="org245f441"></a>

## meeting links

The notes (this file): <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021apr25.org> more readable form of notes: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021apr25.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/>


<a id="orge398333"></a>

## agenda stuff


<a id="org78f306c"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="org1a67564"></a>

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


<a id="org74a7b60"></a>

### some silly printf experiments (perl5)

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/line_character_counting_via_sprintf.pl>


<a id="org0d69298"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="org8ac7d1d"></a>

### data container class

<https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku> /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021apr25/data<sub>container</sub><sub>class.raku</sub>


<a id="orgffab4eb"></a>

## announcement


<a id="org3baa431"></a>

### for next week, could everyone install git if they haven't already?


<a id="org2740532"></a>

### <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>
