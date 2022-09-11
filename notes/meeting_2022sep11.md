- [meeting notes September 11, 2022](#org110a54b)
  - [the raku study group](#org5b63996)
  - [current topics](#orgff34e27)
    - [stale perl code and the programmers who can't let go](#org2efa707)
    - [many unix utils have some form of -0](#orge4b9ef6)
    - [IntStr vs my Numesque subset](#orgdf375f9)
    - [Checking lists of numbers (in arrays) for equality](#org9c90da1)
  - [additional topics, for someday](#org0360627)
    - [raku for data science](#orge6a1a15)
    - [william michels, corrupt json handling](#orge2db880)
    - [Raku conference vids, e.g. jonathan worthington](#org98604fa)
  - [earlier topics](#org4a242ad)
    - [Grammar.nqp](#orgb350310)
  - [announcements](#org900c4a7)
    - [September 24th: the next raku study group meeting](#orgca3be04)
    - [Some of my Bali vacation pics:](#orgead65a5)


<a id="org110a54b"></a>

# meeting notes September 11, 2022


<a id="org5b63996"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgff34e27"></a>

## current topics


<a id="org2efa707"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orge4b9ef6"></a>

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


<a id="orgdf375f9"></a>

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


<a id="org9c90da1"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org0360627"></a>

## additional topics, for someday


<a id="orge6a1a15"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orge2db880"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org98604fa"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org4a242ad"></a>

## earlier topics


<a id="orgb350310"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org900c4a7"></a>

## announcements


<a id="orgca3be04"></a>

### September 24th: the next raku study group meeting


<a id="orgead65a5"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
