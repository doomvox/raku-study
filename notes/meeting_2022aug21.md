- [meeting notes August 07, 2022](#orgcbdd785)
  - [the raku study group](#org9bb37de)
  - [current topics](#org9977e5b)
    - [one-line twiddle](#org3f8db19)
    - [the revenge of the son of the return of junction gotchas](#orgb793027)
    - [strings modifications](#org92249de)
    - [review of some suggested reading](#org8632ca1)
  - [topics for next time](#orgca97e77)
    - [raku for data science](#org1410a27)
    - [william michels, corrupt json handling](#orgc9bae04)
  - [earlier topics](#org86d17c0)
    - [Grammar.nqp](#org5ca6566)
    - [regex feature: control what's captured with <( &#x2026; )>](#org72e4ea0)
  - [announcements](#org0591f59)
    - [August 13th & 14th: online raku conference](#org2a36184)
    - [August 21st: the next raku study group meeting](#orgc5af7c5)


<a id="orgcbdd785"></a>

# meeting notes August 07, 2022


<a id="org9bb37de"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022aug21.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug21>


<a id="org9977e5b"></a>

## current topics


<a id="org3f8db19"></a>

### one-line twiddle

```cperl
($b, $a) = ($a, $b);
```

1.  perl

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug2101-twiddle_vars.pl>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/01-twiddle<sub>vars.pl</sub>

2.  raku

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug2102-twiddle_vars.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022aug21/02-twiddle<sub>vars.raku</sub>


<a id="orgb793027"></a>

### the revenge of the son of the return of junction gotchas

1.  our story thus far:

    1.  Márton Polgár: junctions and negated operators (a bad raku trap)
    
        1.  negation with junctions goes outside the junction
        
        2.  <https://github.com/doomvox/raku-study/tree/main/bin/2022aug07/issue_with_negated_operators_and_junctions.raku>
        
        3.  really should be docummented on the traps page
        
        4.  these aren't equivalent:
        
            ```raku
            .none %% 2 
            ```
            
            ```raku
            .all  !%% 2 
            ```
        
        5.  archived irc discussion, larry wall on "english" understanding:
        
            1.  <https://colabti.org/irclogger/irclogger_log/perl6?date=2016-08-21#l51>
        
        6.  github issue:
        
            1.  <https://github.com/rakudo/rakudo/issues/3748>


<a id="org92249de"></a>

### strings modifications

1.  can be based on

    1.  locations
    
        1.  substr
    
    2.  contents (what the string is)
    
        1.  s///
    
    3.  combinations of the two

2.  last time we discussed:

3.  substr-rw

    1.  like substr but you can use it on the left-hand side
    
        1.  as with perl's dual usage "substr"


<a id="org8632ca1"></a>

### review of some suggested reading

1.  <https://vrurg.github.io/arfb.html>

2.  <https://vrurg.github.io/arfb-publication/03-containers-and-symbols/>


<a id="orgca97e77"></a>

## topics for next time


<a id="org1410a27"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgc9bae04"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org86d17c0"></a>

## earlier topics


<a id="org5ca6566"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org72e4ea0"></a>

### regex feature: control what's captured with <( &#x2026; )>

1.  <( isn't really equivalent to \K in a substitution

2.  can do it with zero-width after/before matches

3.  or by having multiple ordered captures, etc.

4.  william michels turned up this on the subject:

    <https://stackoverflow.com/questions/63426361/raku-effect-of-capture-markers-is-lost-higher-up>


<a id="org0591f59"></a>

## announcements


<a id="org2a36184"></a>

### August 13th & 14th: online raku conference

1.  <https://conf.raku.org/>

2.  <https://conf.raku.org/2022/schedule>

3.  Red, an ORM for Raku

    1.  <https://conf.raku.org/talk/181>


<a id="orgc5af7c5"></a>

### August 21st: the next raku study group meeting

1.  If I can't make it (I'll try), feel free to show up and do what you like with the meeting.
