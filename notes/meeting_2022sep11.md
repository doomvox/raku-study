- [meeting notes September 11, 2022](#org29e00d7)
  - [the raku study group](#orgf07d3e9)
  - [current topics](#org9dbcc64)
    - [stale perl code and the programmers who can't let go](#org6fcee41)
    - [many unix utils have some form of -0](#org7a9beb3)
    - [IntStr vs my Numesque subset](#org08e43bb)
    - [Checking lists of numbers (in arrays) for equality](#org75b259f)
    - [repeated](#org765fbe4)
  - [additional topics, for someday](#org0b6a45b)
    - [raku for data science](#org32512e5)
    - [william michels, corrupt json handling](#org95f7325)
    - [Raku conference vids, e.g. jonathan worthington](#org612fc64)
  - [earlier topics](#orgeba9bdb)
    - [Grammar.nqp](#org5c9b751)
  - [announcements](#orga35aee2)
    - [September 24th: the next raku study group meeting](#org1f97ea8)
    - [Some of my Bali vacation pics:](#org99f28c9)


<a id="org29e00d7"></a>

# meeting notes September 11, 2022


<a id="orgf07d3e9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org9dbcc64"></a>

## current topics


<a id="org6fcee41"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org7a9beb3"></a>

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


<a id="org08e43bb"></a>

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


<a id="org75b259f"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org765fbe4"></a>

### repeated

1.  <https://docs.raku.org/language/independent-routines#routine_repeated>

2.  <https://docs.raku.org/routine/repeated>

    1.  bruce gray usage:
    
        1.  ![img](https://github.com/doomvox/raku-study/notes/bg-01-use_of_repeated.png)
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/bg-01-use<sub>of</sub><sub>repeated.png</sub>


<a id="org0b6a45b"></a>

## additional topics, for someday


<a id="org32512e5"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org95f7325"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org612fc64"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="orgeba9bdb"></a>

## earlier topics


<a id="org5c9b751"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orga35aee2"></a>

## announcements


<a id="org1f97ea8"></a>

### September 24th: the next raku study group meeting


<a id="org99f28c9"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
