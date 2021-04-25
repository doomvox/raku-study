- [meeting notes Apr 25, 2021](#org6d17900)
  - [meeting links](#org08a5115)
  - [agenda stuff](#org24eab58)
    - [slurpy hash named arguments, discussion with ralph](#orgd5ad6cd)
    - [paul evans (leonerd) talk from 2020 (or 2021?)](#orgd052b55)
    - [some silly printf experiments (perl5)](#org688ce4c)
    - [raku idioms](#org49880af)
    - [data container class](#org4ed071e)
    - [ralph on rakuism](#org8f69db9)
  - [announcement](#orgd6212d6)
    - [for next week, could everyone install git if they haven't already?](#orga322123)


<a id="org6d17900"></a>

# meeting notes Apr 25, 2021


<a id="org08a5115"></a>

## meeting links

The notes (this file): <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021apr25.org> more readable form of notes: <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2021apr25.md> code examples: <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/>


<a id="org24eab58"></a>

## agenda stuff


<a id="orgd5ad6cd"></a>

### slurpy hash named arguments, discussion with ralph

<https://www.nntp.perl.org/group/perl.perl6.users/2021/04/msg9883.html>


<a id="orgd052b55"></a>

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


<a id="org688ce4c"></a>

### some silly printf experiments (perl5)

my $rounded = sprintf("%3.2f", $cost);


<a id="org49880af"></a>

### raku idioms

/home/doom/End/Cave/Ice/Xtal/Perl6/idioms.org


<a id="org4ed071e"></a>

### data container class


<a id="org8f69db9"></a>

### ralph on rakuism


<a id="orgd6212d6"></a>

## announcement


<a id="orga322123"></a>

### for next week, could everyone install git if they haven't already?
