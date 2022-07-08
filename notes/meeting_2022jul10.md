- [meeting notes July 10, 2022](#orgb91f859)
  - [the raku study group](#org7060feb)
    - [Videos are out for the TPRC 2022 in Houston:](#orge1edfc7)
    - [a problem-ette](#org45f46d1)
    - [topics from last meeting (June 19th)](#org1a19cae)
    - [regex feature: control what's captured with <( &#x2026; )>](#orgbe2117f)
    - [for future meetings](#orgdf3c579)
  - [announcements](#org3e1edb6)
    - [July 24th: next raku study group meeting (( or should it be the 17th? ))](#org0448cd2)


<a id="orgb91f859"></a>

# meeting notes July 10, 2022


<a id="org7060feb"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul10.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10>


<a id="orge1edfc7"></a>

### Videos are out for the TPRC 2022 in Houston:

1.  <https://www.youtube.com/playlist?list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE>

    1.  Bruce Gray, raku for beginners
    
        1.  comparing hash deref via curlies and double-angle
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10/hash_deref_syntax.raku>
            
            2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/hash<sub>deref</sub><sub>syntax.raku</sub>
    
    2.  Brett Estrade, thread support in perl using the gcc OpenMP feature


<a id="org45f46d1"></a>

### a problem-ette

1.  remove last two elements of an array, add a new element with them strung together

    1.  but preserve the order
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10/string_together_last_two_into_one.raku>
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/string<sub>together</sub><sub>last</sub><sub>two</sub><sub>into</sub><sub>one.raku</sub>


<a id="org1a19cae"></a>

### topics from last meeting (June 19th)


<a id="orgbe2117f"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  from an old question in my notes:

    1.  Q: what's the Raku equivalent for p5's \K?

2.  <( isn't really equivalent to <(

3.  can do it with zero-width after/before matches

4.  or by having multiple ordered captures, etc.

    1.  TODO try a variant without a named pattern ala quoted: what if it's embedded?

1.  the double-asterix non-flattening slurpy array signature

    1.  so the single asterix is flattening?
    
    2.  TODO investigate further, for next time

2.  rob ramsbottom

    1.  rob opened a github issue, no action:
    
        1.  <https://github.com/rakudo/rakudo/issues/4945>
        
        2.  TODO add some comments, at the very least confirm the behavior.

3.  rename, move, copy

    1.  difficulty reproducing the problem
    
        1.  current theory: rename was "failing" after the copy, and silently skipping the ulink, even though the copies were being made

4.  unix.stackexchange

    1.  william michels
    
        1.  <https://unix.stackexchange.com/questions/706744/write-a-regular-expression-whose-output-will-only-be-rows-in-a-range-01-03-2021/706773#706773>
        
            1.  I have a file that got dates from 01/01/2020 to 04/04/2021 I want to get only the dates between 01/03/2020 to 01/03/2021 by using egrep. I tried to do
            
                1.  raku -ne 'my $ts = .subst(/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) /, {"$2-$1-$0"}).Date; say $ts if Date.new("2020-03-01") < $ts < Date.new("2021-03-01");' file
                
                2.  raku -ne '.say if Date.new("2020-03-01") < S/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) *{"$2-$1-$0"}*.Date < Date.new("2021-03-01");' file


<a id="orgdf3c579"></a>

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


<a id="org3e1edb6"></a>

## announcements


<a id="org0448cd2"></a>

### July 24th: next raku study group meeting (( or should it be the 17th? ))
