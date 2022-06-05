- [meeting notes June 05, 2022](#org5f4bbf1)
  - [the raku study group](#orgb57d27a)
    - [topics](#org4aa0c8f)
  - [announcements](#orgdc5c49f)
    - [June 19th: next raku study group meeting (just a few days before&#x2026;)](#orgc8f2411)
    - [June 21-25: tprc: perl/raku conference](#org2ca6521)


<a id="org5f4bbf1"></a>

# meeting notes June 05, 2022


<a id="orgb57d27a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org4aa0c8f"></a>

### topics

1.  perl

    1.  perl 5.36 is out, showing some nice progress
    
        1.  features:
        
            1.  basic sub sigs, no longer "experimental"
            
            2.  more flexible for loops, getting more raku-ish
        
        2.  the psc has clarified they're committed to backwards compatibility (within reason)
        
        3.  no published criteria for when they'll declare "Perl 7"
        
            1.  I'm pretty sure it's waiting on Corina
            
            2.  (ovid's guess is that could be a few years)

2.  continuing adventures with move/copy/rename

    1.  roast test checks whether the old file name is gone after rename
    
        1.  roast/S32-io/rename.t
    
    2.  I found I needed to unlink the old after a rename
    
        1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>
    
    3.  how can you resolve that contradiction?
    
        1.  try this: roast test uses temp files in current directory
        
            1.  /home/doom/End/Cave/Raku/Wall/darkroast/S32-io/rename.t
            
            2.  eventually: <https://github.com/doomvox/darkroast>
    
    4.  some basics
    
        1.  <https://github.com/doomvox/raku-study/bin/2022jun05/trial-mkdir.raku>

3.  my intro to raku spiels need work: hyperoperators, junctions, etc.

4.  rob ransbottom topics

    1.  bug in raku?
    
    2.  equivalent of perl's optional export/imports
    
    3.  .list and .List
    
        1.  if you write your own .List does .list see it?

5.  recent weekly challenges that weren't number theory trivia for once

    1.  Task 1: Hexadecimal Words; Task 2: K-Directory Diff
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-166/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/hexa-diff.html>
    
    2.  Task 1: Scalable Vector Graphics (SVG); Task 2: Line of Best Fit
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-165/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/doubly-scalable.html>

6.  jonathan worthington on cro memory usage

    1.  <https://stackoverflow.com/questions/72180995/understanding-cro-request-response-cycle-and-memory-use>

7.  jonathan worthington on operator precedence, = vs ,

    1.  <https://stackoverflow.com/questions/72081593/assignment-destructuring-and-operator-precedence>


<a id="orgdc5c49f"></a>

## announcements


<a id="orgc8f2411"></a>

### June 19th: next raku study group meeting (just a few days before&#x2026;)


<a id="org2ca6521"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
