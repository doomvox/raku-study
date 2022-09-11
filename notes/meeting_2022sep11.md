- [meeting notes September 11, 2022](#orgc8de294)
  - [the raku study group](#org5cac258)
  - [current topics](#org6d31f54)
    - [stale perl code and the programmers who can't let go](#org717ea4a)
    - [many unix utils have some form of -0](#org764b7a1)
    - [IntStr vs my Numesque subset](#org11c862e)
    - [Checking lists of numbers (in arrays) for equality](#orgd0ce946)
    - [repeated](#orgf22ec2b)
  - [additional topics, for someday](#orgc88d991)
    - [raku for data science](#orgd121dd1)
    - [william michels, corrupt json handling](#org00cc07e)
    - [Raku conference vids, e.g. jonathan worthington](#org39b151b)
  - [earlier topics](#org5efc127)
    - [Grammar.nqp](#orgd16e63a)
  - [announcements](#org9c6a252)
    - [September 24th: the next raku study group meeting](#org25e0e87)
    - [Some of my Bali vacation pics:](#org89ce5e0)


<a id="orgc8de294"></a>

# meeting notes September 11, 2022


<a id="org5cac258"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org6d31f54"></a>

## current topics


<a id="org717ea4a"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org764b7a1"></a>

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


<a id="org11c862e"></a>

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


<a id="orgd0ce946"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgf22ec2b"></a>

### repeated

1.  <https://docs.raku.org/language/independent-routines#routine_repeated>

2.  <https://docs.raku.org/routine/repeated>

    1.  bruce gray usage:
    
        1.  ![img](https://github.com/doomvox/raku-study/notes/bg-01-use_of_repeated.png)
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/bg-01-use<sub>of</sub><sub>repeated.png</sub>


<a id="orgc88d991"></a>

## additional topics, for someday


<a id="orgd121dd1"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org00cc07e"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org39b151b"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org5efc127"></a>

## earlier topics


<a id="orgd16e63a"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org9c6a252"></a>

## announcements


<a id="org25e0e87"></a>

### September 24th: the next raku study group meeting


<a id="org89ce5e0"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
