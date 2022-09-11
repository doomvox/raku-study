- [meeting notes September 11, 2022](#org2147955)
  - [the raku study group](#org790051a)
  - [current topics](#orgb5b0fed)
    - [stale perl code and the programmers who can't let go](#org1f93bae)
    - [many unix utils have some form of -0](#orgc858811)
    - [IntStr vs my Numesque subset](#orgd39b2a5)
    - [Checking lists of numbers (in arrays) for equality](#orge28d5c0)
    - [repeated](#orgbdfa61c)
  - [additional topics, for someday](#org5750562)
    - [raku for data science](#org7bed12e)
    - [william michels, corrupt json handling](#orgc3973d7)
    - [Raku conference vids, e.g. jonathan worthington](#org6b88608)
  - [earlier topics](#org8f6335f)
    - [Grammar.nqp](#orgc05f891)
  - [announcements](#org08ea44f)
    - [September 24th: the next raku study group meeting](#org0fac025)
    - [Some of my Bali vacation pics:](#org61b88e6)


<a id="org2147955"></a>

# meeting notes September 11, 2022


<a id="org790051a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgb5b0fed"></a>

## current topics


<a id="org1f93bae"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgc858811"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```

2.  Does Raku/rakudo have a -0? Is it needed? Bruce gray solution:

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="orgd39b2a5"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains

5.  related subject:

    1.  <https://www.youtube.com/watch?v=1-KV8oiOSZA&t=2s>
    
    2.  Playing nice with others using the new COERCE protocol - Matthew Stuckwisch
    
        1.  <https://vrurg.github.io/2020/11/16/Report-On-New-Coercions>
        
        2.  <https://vrurg.github.io/2020/11/30/Report-On-New-Coercions-Part-2>
        
        3.  <https://vrurg.github.io/2020/12/26/Coercion-Return-Values>


<a id="orge28d5c0"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgbdfa61c"></a>

### repeated

1.  <https://docs.raku.org/language/independent-routines#routine_repeated>

2.  <https://docs.raku.org/routine/repeated>

    1.  bruce gray usage:
    
        1.  ![img](https://github.com/doomvox/raku-study/notes/bg-01-use_of_repeated.png)
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/bg-01-use<sub>of</sub><sub>repeated.png</sub>


<a id="org5750562"></a>

## additional topics, for someday


<a id="org7bed12e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgc3973d7"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org6b88608"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org8f6335f"></a>

## earlier topics


<a id="orgc05f891"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org08ea44f"></a>

## announcements


<a id="org0fac025"></a>

### September 24th: the next raku study group meeting


<a id="org61b88e6"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
