- [meeting notes June 19, 2022](#org3173c00)
  - [the raku study group](#org9761dd4)
    - [topics](#org9419fd3)
    - [save for next time](#orga59d623)
  - [announcements](#orgb13730d)
    - [July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)](#orgd8229c1)
    - [June 21-25: tprc: perl/raku conference](#orge8f2005)


<a id="org3173c00"></a>

# meeting notes June 19, 2022


<a id="org9761dd4"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jun19.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jun19>


<a id="org9419fd3"></a>

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
            
            2.  eventually this will bt out: <https://github.com/doomvox/darkroast>
    
    4.  some basics
    
        1.  <https://github.com/doomvox/raku-study/bin/2022jun05/trial-mkdir.raku>

3.  my intro to raku spiels need work: hyperoperators, junctions, etc.

4.  rob ransbottom topics

    1.  possible bug in raku: appending to a hash with ,= op with slice from another hash
    
        1.  <https://github.com/doomvox/raku-study/bin/2022jun05/rob_ransbottom-comma_equals_hash_assignment.raku>
        
        2.  <https://github.com/doomvox/raku-study/bin/2022jun05/comma_equals_of_doom.raku>
        
        3.  testing exceptions in code
        
            <https://docs.raku.org/language/testing>
        
        4.  can use a try block to convert die to warn
    
    2.  equivalent of perl's optional export/imports
    
        1.  some people actually create individual tags for every item they want to export
    
    3.  .list and .List
    
        1.  if you write your own .List does .list see it? A: no, .list still works as always
    
    4.  operators
    
        1.  operators are functions
        
        2.  can you easily define a recursive operator
    
    5.  David Christensen on perl5 modules with circular dependencies
    
        1.  <https://github.com/doomvox/raku-study/tree/main/lib/david_christensen-circular_dependencies.pm>
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/lib/david<sub>christensen</sub>-circular<sub>dependencies.pm</sub>


<a id="orga59d623"></a>

### save for next time

1.  recent weekly challenges that weren't number theory trivia for once

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


<a id="orgb13730d"></a>

## announcements


<a id="orgd8229c1"></a>

### July 10th: next raku study group meeting (in 3 weeks: skipping the weekend of the 4th)


<a id="orge8f2005"></a>

### June 21-25: tprc: perl/raku conference

1.  4 hours of Bruce Gray: talk + 3hr tutorial

    1.  <https://tprc2022.sched.com/event/ylEK/command-line-filters-time-to-shine>
    
    2.  <https://tprc2022.sched.com/overview/type/Raku+Track>
