- [meeting notes June 19, 2022](#org8330a1b)
  - [the raku study group](#org43d1b83)
    - [topics](#org8febdc0)
    - [from the last meeting notes](#orge1713d3)
    - [for future meetings](#org86fb1cb)
  - [announcements](#org39aa047)
    - [July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)](#orgafa97d0)
    - [June 21-25: tprc: perl/raku conference](#org54212bc)


<a id="org8330a1b"></a>

# meeting notes June 19, 2022


<a id="org43d1b83"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jun19.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jun19>


<a id="org8febdc0"></a>

### topics

1.  regex feature: control what's captured with <( &#x2026; )>

    1.  from an old question in my notes:
    
        1.  Q: what's the Raku equivalent for p5's \K?
    
    2.  <( isn't really equivalent to <(
    
    3.  can do it with zero-width after/before matches

2.  rob ramsbottom

    1.  relating to the community
    
        1.  initiating pull requests and so on
        
        2.  rob opened a github issue, no action:
        
            1.  <https://github.com/rakudo/rakudo/issues/4945>
            
            2.  TODO add some comments

3.  the great file manipulation issue like does rename reanme

    1.  verbal status report

4.  unix.stackexchange

    1.  william michels
    
        1.  <https://unix.stackexchange.com/questions/706744/write-a-regular-expression-whose-output-will-only-be-rows-in-a-range-01-03-2021/706773#706773>
        
            1.  I have a file that got dates from 01/01/2020 to 04/04/2021 I want to get only the dates between 01/03/2020 to 01/03/2021 by using egrep. I tried to do
            
                raku -ne 'my $ts = .subst(/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) /, {"$2-$1-$0"}).Date; say $ts if Date.new("2020-03-01") < $ts < Date.new ("2021-03-01");'
                
                raku -ne '.say if Date.new("2020-03-01") < S/ ^ (\d*\*2) \\/ (\d*\*2) \\/ (\d*\*4) *{"$2-$1-$0"}*.Date < Date.new("2021-03-01");' file 13/03/2020

5.  the toddandmargo show on perl6-users


<a id="orge1713d3"></a>

### from the last meeting notes

1.  continuing adventures with move/copy/rename

    1.  roast test checks whether the old file name is gone after rename
    
        1.  roast/S32-io/rename.t
    
    2.  I found I needed to unlink the old after a rename
    
        1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>
    
    3.  how can you resolve that contradiction?
    
        1.  try this: roast test uses temp files in current directory
        
            1.  /home/doom/End/Cave/Raku/Wall/darkroast/S32-io/rename.t
            
            2.  eventually this will bt out: <https://github.com/doomvox/darkroast>
    
    4.  some basics
    
        1.  <https://github.com/doomvox/raku-study/bin/2022jun05/trial-mkdir.raku>


<a id="org86fb1cb"></a>

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


<a id="org39aa047"></a>

## announcements


<a id="orgafa97d0"></a>

### July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)


<a id="org54212bc"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
