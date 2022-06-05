- [meeting notes June 05, 2022](#orgd5bbc48)
  - [the raku study group](#orgbe025df)
    - [topics](#org13ff897)
  - [announcements](#orgb7575bd)
    - [June 19th: next raku study group meeting (just a few days before&#x2026;)](#orgf9f10d3)
    - [June 21-25: tprc: perl/raku conference](#org7605b3b)


<a id="orgd5bbc48"></a>

# meeting notes June 05, 2022


<a id="orgbe025df"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org13ff897"></a>

### topics

1.  perl 5.36 is out, showing some nice progress

    1.  the psc has clarified they're committed to backwards compatibility (within reason)
    
    2.  no published criteria for when they'll declare "Perl 7"
    
        1.  I'm pretty sure it's waiting on Corina
        
        2.  (ovid's guess is that could be a few years)

2.  continuing adventures with move/copy/rename

    1.  roast test checks whether the old file name is gone after rename
    
        1.  roast/S32-io/rename.t
    
    2.  I found I needed to unlink the old after a rename
    
        1.  <https://github.com/doomvox/raku-study/bin/2022mar13/tagger.raku>
    
    3.  how can you resolve that contradiction?
    
        1.  try this: roast test uses temp files in current directory
    
    4.  

3.  my intro to raku spiels need work: hyperoperators, junctions&#x2026;

4.  recent weekly challenges that weren't number theory trivia for once

    1.  Task 1: Hexadecimal Words; Task 2: K-Directory Diff
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-166/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/hexa-diff.html>
    
    2.  Task 1: Scalable Vector Graphics (SVG); Task 2: Line of Best Fit
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-165/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/doubly-scalable.html>

5.  jonathan worthington on cro memory usage

    1.  <https://stackoverflow.com/questions/72180995/understanding-cro-request-response-cycle-and-memory-use>

6.  jonathan worthington on operator precedence, = vs ,

    1.  <https://stackoverflow.com/questions/72081593/assignment-destructuring-and-operator-precedence>


<a id="orgb7575bd"></a>

## announcements


<a id="orgf9f10d3"></a>

### June 19th: next raku study group meeting (just a few days before&#x2026;)


<a id="org7605b3b"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
