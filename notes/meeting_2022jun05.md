- [meeting notes June 05, 2022](#org18864de)
  - [the raku study group](#org5c0fcbc)
    - [topics](#org7637767)
  - [announcements](#orgc4c90ac)
    - [June 19th: next raku study group meeting (just a few days before&#x2026;)](#org2b16f25)
    - [June 21-25: tprc: perl/raku conference](#orgb1c7a3e)


<a id="org18864de"></a>

# meeting notes June 05, 2022


<a id="org5c0fcbc"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022may22.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022may22>


<a id="org7637767"></a>

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
    
        1.  try this: roast test creates temp files in current directory

3.  recent weekly challenges that weren't number theory trivia for once

    1.  Task 1: Hexadecimal Words; Task 2: K-Directory Diff
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-166/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/hexa-diff.html>
    
    2.  Task 1: Scalable Vector Graphics (SVG); Task 2: Line of Best Fit
    
        1.  <https://theweeklychallenge.org/blog/perl-weekly-challenge-165/>
        
        2.  arne sommers
        
            1.  <https://raku-musings.com/doubly-scalable.html>

4.  jonathan worthington on cro memory usage

    1.  <https://stackoverflow.com/questions/72180995/understanding-cro-request-response-cycle-and-memory-use>

5.  jonathan worthington on operator precedence, = vs ,

    1.  <https://stackoverflow.com/questions/72081593/assignment-destructuring-and-operator-precedence>


<a id="orgc4c90ac"></a>

## announcements


<a id="org2b16f25"></a>

### June 19th: next raku study group meeting (just a few days before&#x2026;)


<a id="orgb1c7a3e"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
