- [meeting notes February 26, 2023](#org6f66efa)
  - [the raku study group](#orgfbb4f29)
  - [topics](#orgab4ca93)
    - [IPC (david)](#org74fd9a0)
    - [pod6](#org39be3ca)
    - [IUP (rob)](#org3c10477)
    - [the ever popular weekly challenge](#orge374012)
    - [jj merelo raku recipies code examples](#orgd5a1f1b)
    - [new version of docs live:](#org4edfde4)
    - [<https://github.com/Raku/doc-website/issues/124>](#org1984ccf)
  - [announcements](#orgb7757d2)
    - [next meeting: March 5th](#org774ad8d)
    - [the meeting after the next: March 26th](#orgdc0e8c2)
    - [perl & raku conference (formerly yapc) in toronto&#x2013; july 11th-13th](#org81d8099)


<a id="org6f66efa"></a>

# meeting notes February 26, 2023


<a id="orgfbb4f29"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb26.md>
        
        2.  source file (for corrections, etc)
        
            1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2023feb26.org>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2023feb26>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022feb12.md>


<a id="orgab4ca93"></a>

## topics


<a id="org74fd9a0"></a>

### IPC (david)

1.  stdout/stderr/stdin

2.  CAP vids from Jonathan Worthington

    1.  8 ways to do concurrency and parallelism in Perl 6
    
        1.  <https://www.youtube.com/watch?v=l2fSbOPeSQs>
    
    2.  Parallelism, Concurrency, and Asynchrony in Perl 6
    
        1.  <https://www.youtube.com/watch?v=JpqnNCx7wVY>

3.  <https://perldoc.perl.org/perlipc>

4.  <https://new-raku.finanalyst.org/language/ipc.html>

5.  <https://raku.land/cpan:NINE/Inline::Perl5>

6.  #+BEGIN<sub>SRC</sub> cperl

    my $rc = system("zfs whatever 2>&1 | tee $tempfile");\`

7.  #+END<sub>SRC</sub>


<a id="org39be3ca"></a>

### pod6


<a id="org3c10477"></a>

### IUP (rob)

1.  <https://en.wikipedia.org/wiki/IUP_(software)>

2.  <https://iup.sourceforge.net/>

3.  <https://raku.land/github:hankache/IUP>

1.  mrhdias

2.  like simple gtk

3.  on top of gtk3, a c-library, lua

4.  similar to perltk

5.  lacks test framework

    1.  dogtail for gui testing
    
        1.  <https://gitlab.com/dogtail/dogtail/>
        
        2.  Bruce Gray:
        
            1.  dogtail is a GUI test tool and automation framework written in Python. It uses Accessibility (a11y) technologies to communicate with desktop applications. dogtail scripts are written in Python and executed like any other Python program.
            
            2.  Currently GNOME and GTK+ applications are supported, as well as KDE and QT applications.


<a id="orge374012"></a>

### the ever popular weekly challenge

1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-203/>

2.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-205/>

    1.  TASK #1: Third Highest
    
        1.  You are given an array of integers. Write a script to find out the Third Highest if found otherwise return the maximum.
    
    2.  TASK #2: Maximum XOR
    
        1.  You are given an array of integers. Write a script to find the highest value obtained by XORing any two distinct members of the array.
    
    3.  bruce

3.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-204/>

    1.  Task 1: Monotonic Array
    
        1.  You are given an array of integers. Write a script to find out if the given array is Monotonic. Print 1 if it is otherwise 0.
    
    2.  Task 2: Reshape Matrix
    
        1.  You are given a matrix (m x n) and two integers (r) and (c).
        
        2.  Write a script to reshape the given matrix in form (r x c) with the original value in the given matrix. If you can’t reshape print 0.


<a id="orgd5a1f1b"></a>

### jj merelo raku recipies code examples

1.  <https://github.com/Apress/raku-recipes>


<a id="org4edfde4"></a>

### new version of docs live:

1.  <https://docs-dev.raku.org/>

2.  <https://github.com/Raku/doc-website/discussions/138>\*


<a id="org1984ccf"></a>

### <https://github.com/Raku/doc-website/issues/124>


<a id="orgb7757d2"></a>

## announcements


<a id="org774ad8d"></a>

### next meeting: March 5th

1.  that's an early one, only a week from now

2.  I'm going to be out-of-town for March 12 & 19


<a id="orgdc0e8c2"></a>

### the meeting after the next: March 26th


<a id="org81d8099"></a>

### perl & raku conference (formerly yapc) in toronto&#x2013; july 11th-13th

1.  airport downtown, "porter" flies in (alan is 3km away).
