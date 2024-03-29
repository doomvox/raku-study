- [meeting notes July 10, 2022](#orgf114636)
  - [the raku study group](#org283a954)
    - [haskell's span](#orgacfb824)
    - [Videos are out for the TPRC 2022 in Houston:](#org1ceb2f4)
  - [wrap up and prep](#org5216673)
    - [check bruce gray email on an alternate to augment](#org57df5eb)
    - [make sure dpchrist ideas roll forward](#org20eb4b9)
    - [work out how to make sure announcments go out early](#org72e4a7c)
    - [yary wants to see a synopsis of the log processing issue from stackexchange](#org4519349)
  - [announcements](#org7711d0b)
    - [July 24th: next raku study group meeting](#org67e1f90)


<a id="orgf114636"></a>

# meeting notes July 10, 2022


<a id="org283a954"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul10.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10>


<a id="orgacfb824"></a>

### haskell's span

1.  <https://stackoverflow.com/questions/72809469/in-raku-how-does-one-write-the-equivalent-of-haskells-span-function>


<a id="org1ceb2f4"></a>

### Videos are out for the TPRC 2022 in Houston:

1.  <https://www.youtube.com/playlist?list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE>

    1.  Brett Estrade, thread support in perl using the gcc OpenMP feature
    
        1.  Intro OpenMP for perl programmers
        
            1.  <https://www.youtube.com/watch?v=4SRR2-uGg40&list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE&index=22>
        
        2.  State of using OpenMP from Perl for multithreaded
        
            1.  <https://www.youtube.com/watch?v=lMRjdpygVFM&list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE&index=23>
    
    2.  Bruce Gray, raku for beginners
    
        1.  <https://www.youtube.com/watch?v=rSP_GgcHQ0Q&list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE&index=16>
        
        2.  comparing hash deref via curlies and double-angle
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10/hash_deref_syntax.raku>
            
            2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/hash<sub>deref</sub><sub>syntax.raku</sub>
        
        3.  gluing together last two array elements into one
        
            1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul10/string_together_last_two_into_one.raku>
            
            2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/string<sub>together</sub><sub>last</sub><sub>two</sub><sub>into</sub><sub>one.raku</sub>
        
        4.  small point:
        
            1.  perl pulled ahead on unicode **because** it was late in adopting it: utf-8 era vs utf-16
        
        5.  some good bits:
        
            1.  raku lets you define operators like the built-in ones, **except** for ternaries
            
            2.  complex math requires complex arguments to "turn it on"
            
                ```raku
                my $i = sqrt( -1 );       ## DOESN'T WORK.
                my $i = sqrt( -1 + 0i );  ## works
                
                # Another way of getting a complex -1
                (-1).Complex
                
                ```
            
            3.  nice lazy list examples
            
                ```perl6
                my @lines = $filename.IO.lines();
                my @primes = grep &is-prime, 0..Inf;
                ```
        
        6.  Ovid, state of the Corinna project
        
            1.  <https://www.youtube.com/watch?v=5lSdBSCkFGs&list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE&index=14>
        
        7.  Ruth Holloway, DbiX::Class and Dancer2 (perl5 web/database work)
        
            1.  <https://www.youtube.com/watch?v=FAHP4IN5wiQ&list=PLA9_Hq3zhoFyOpb-U3DMU7OT93dPUdtpE&index=20>
    
    3.  why is perl still relevant:
    
        1.  <https://www.google.com/url?q=https%3A%2F%2Fstackoverflow.blog%2F2022%2F07%2F06%2Fwhy-perl-is-still-relevant-in-2022%2F&sa=D&sntz=1&usg=AOvVaw3aI-NUWmi9G4Fg8w95CYio>
    
    4.  david christensen issues;
    
        1.  book review
        
            1.  bill hails, "exploring programming language architecture in perl"
            
                <http://www.billhails.net/Book/>
        
        2.  perl
        
            1.  weakened refs
            
            2.  arguments with weakened refs
        
        3.  crawling recursive structures with loops (technique from erlang)
    
    5.  topics from last meeting (June 19th)
    
        1.  regex feature: control what's captured with <( &#x2026; )>
        
            1.  <( isn't really equivalent to \K in a substitution
            
            2.  can do it with zero-width after/before matches
            
            3.  or by having multiple ordered captures, etc.
            
            4.  william michels turned up this on the subject:
            
                <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>
            
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
        
        2.  for future meetings
        
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


<a id="org5216673"></a>

## TODO wrap up and prep


<a id="org57df5eb"></a>

### check bruce gray email on an alternate to augment


<a id="org20eb4b9"></a>

### make sure dpchrist ideas roll forward


<a id="org72e4a7c"></a>

### work out how to make sure announcments go out early


<a id="org4519349"></a>

### yary wants to see a synopsis of the log processing issue from stackexchange


<a id="org7711d0b"></a>

## announcements


<a id="org67e1f90"></a>

### July 24th: next raku study group meeting
