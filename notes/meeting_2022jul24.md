- [meeting notes July 24, 2022](#org29e17bb)
  - [the raku study group](#orgad47e52)
    - [haskell's span](#org42ecd2d)
    - [Videos are out for the TPRC 2022 in Houston:](#orge61e50c)
  - [announcements](#orgfa4e6e8)
    - [August 7th: next raku study group meeting](#orgf44a811)
    - [online conference next sunday, I think&#x2026;](#orgb4f35dc)


<a id="org29e17bb"></a>

# meeting notes July 24, 2022


<a id="orgad47e52"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022jul24.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022jul24>


<a id="org42ecd2d"></a>

### haskell's span

1.  <https://stackoverflow.com/questions/72809469/in-raku-how-does-one-write-the-equivalent-of-haskells-span-function>


<a id="orge61e50c"></a>

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
    
    5.  earlier topics
    
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


<a id="orgfa4e6e8"></a>

## announcements


<a id="orgf44a811"></a>

### August 7th: next raku study group meeting


<a id="orgb4f35dc"></a>

### online conference next sunday, I think&#x2026;
