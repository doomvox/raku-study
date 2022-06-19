- [meeting notes June 19, 2022](#org7adc827)
  - [the raku study group](#org27bc886)
    - [topics](#org29820bd)
    - [from the last meeting notes](#org0d79bdf)
    - [for future meetings](#org4274d17)
  - [announcements](#org3e62b1b)
    - [July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)](#org8479d0e)
    - [June 21-25: tprc: perl/raku conference](#orgcb2071e)


<a id="org7adc827"></a>

# meeting notes June 19, 2022


<a id="org27bc886"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jun19.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jun19>


<a id="org29820bd"></a>

### topics

1.  regex feature: control what's captured with <( &#x2026; )>

    1.  from an old question in my notes:
    
        1.  Q: what's the Raku equivalent for p5's \K?
    
    2.  <( isn't really equivalent to <(
    
    3.  can do it with zero-width after/before matches

2.  the great file manipulation issue like does rename reanme

3.  unix.stackexchange

    1.  william michels

4.  the toddandmargo show on perl6-users

5.  rob ramsbottom

    1.  relating to the community
    
        1.  initiating pull requests and so on
        
        2.  rob opened a github issue, no action:
        
            1.  <https://github.com/rakudo/rakudo/issues/4945>


<a id="org0d79bdf"></a>

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


<a id="org4274d17"></a>

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


<a id="org3e62b1b"></a>

## announcements


<a id="org8479d0e"></a>

### July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)


<a id="orgcb2071e"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
