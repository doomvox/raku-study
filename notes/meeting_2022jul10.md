- [meeting notes July 10, 2022](#org84d4008)
  - [the raku study group](#orgcf72901)
    - [topics from last meeting (June 19th)](#org1319da9)
    - [for future meetings](#org229b950)
  - [announcements](#orgfc239b5)
    - [July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)](#org3a81b75)
    - [June 21-25: tprc: perl/raku conference](#org2fa0f9e)


<a id="org84d4008"></a>

# meeting notes July 10, 2022


<a id="orgcf72901"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul10.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10>


<a id="org1319da9"></a>

### topics from last meeting (June 19th)

1.  the double-asterix non-flattening slurpy array signature

    1.  so the single asterix is flattening?
    
    2.  TODO investigate further, for next time

2.  regex feature: control what's captured with <( &#x2026; )>

    1.  from an old question in my notes:
    
        1.  Q: what's the Raku equivalent for p5's \K?
    
    2.  <( isn't really equivalent to <(
    
    3.  can do it with zero-width after/before matches
    
    4.  or by having multiple ordered captures, etc.
    
        1.  TODO try a variant without a named pattern ala quoted: what if it's embedded?

3.  rob ramsbottom

    1.  rob opened a github issue, no action:
    
        1.  <https://github.com/rakudo/rakudo/issues/4945>
        
        2.  TODO add some comments, at the very least confirm the behavior.

4.  rename, move, copy

    1.  difficulty reproducing the problem
    
        1.  current theory: rename was "failing" after the copy, and silently skipping the ulink, even though the copies were being made

5.  unix.stackexchange

    1.  william michels
    
        1.  <https://unix.stackexchange.com/questions/706744/write-a-regular-expression-whose-output-will-only-be-rows-in-a-range-01-03-2021/706773#706773>
        
            1.  I have a file that got dates from 01/01/2020 to 04/04/2021 I want to get only the dates between 01/03/2020 to 01/03/2021 by using egrep. I tried to do
            
                1.  raku -ne 'my $ts = .subst(/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) /, {"$2-$1-$0"}).Date; say $ts if Date.new("2020-03-01") < $ts < Date.new("2021-03-01");' file
                
                2.  raku -ne '.say if Date.new("2020-03-01") < S/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) *{"$2-$1-$0"}*.Date < Date.new("2021-03-01");' file


<a id="org229b950"></a>

### for future meetings

1.  some relatively recent weekly challenges that weren't number theory trivia for once

    1.  Task 1: Hexadecimal Words; Task 2: K-Directory Diff
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-166/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/hexa-diff.html>
    
    2.  Task 1: Scalable Vector Graphics (SVG); Task 2: Line of Best Fit
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-165/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/doubly-scalable.html>

2.  jonathan worthington on cro memory usage

    1.  <https://stackoverflow.com/questions/72180995/understanding-cro-request-response-cycle-and-memory-use>

3.  jonathan worthington on operator precedence, = vs ,

    1.  <https://stackoverflow.com/questions/72081593/assignment-destructuring-and-operator-precedence>


<a id="orgfc239b5"></a>

## announcements


<a id="org3a81b75"></a>

### July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)


<a id="org2fa0f9e"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
