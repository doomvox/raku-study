- [meeting notes September 11, 2022](#orge1a332d)
  - [the raku study group](#orga432f1b)
  - [current topics](#org7575713)
    - [stale perl code and the programmers who can't let go](#org35e57de)
    - [many unix utils have some form of -0](#orgc969a21)
    - [IntStr vs my Numesque subset](#orgb64d50d)
    - [Checking lists of numbers (in arrays) for equality](#org4572ee1)
  - [additional topics, for someday](#orgc852aa6)
    - [raku for data science](#org8675ecd)
    - [william michels, corrupt json handling](#orgbf6c3db)
    - [Raku conference vids, e.g. jonathan worthington](#orga078d0c)
  - [earlier topics](#org7f057fc)
    - [Grammar.nqp](#orgc1dc55a)
  - [announcements](#org3188b41)
    - [September 24th: the next raku study group meeting](#orgf98375f)
    - [Some of my Bali vacation pics:](#orgd39b98f)


<a id="orge1a332d"></a>

# meeting notes September 11, 2022


<a id="orga432f1b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org7575713"></a>

## current topics


<a id="org35e57de"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgc969a21"></a>

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


<a id="orgb64d50d"></a>

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


<a id="org4572ee1"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgc852aa6"></a>

## additional topics, for someday


<a id="org8675ecd"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgbf6c3db"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orga078d0c"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org7f057fc"></a>

## earlier topics


<a id="orgc1dc55a"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org3188b41"></a>

## announcements


<a id="orgf98375f"></a>

### September 24th: the next raku study group meeting


<a id="orgd39b98f"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
