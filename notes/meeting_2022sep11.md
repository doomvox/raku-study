- [meeting notes September 11, 2022](#orgd930532)
  - [the raku study group](#org8712a8e)
  - [current topics](#org52c93e2)
    - [stale perl code and the programmers who can't let go](#org46cb2fc)
    - [many unix utils have some form of -0](#orgba62d7b)
    - [IntStr vs my Numesque subset](#orgf2fa5cb)
    - [Checking lists of numbers (in arrays) for equality](#org694d78e)
  - [additional topics, for someday](#orgad5d9b2)
    - [raku for data science](#org7b20f0e)
    - [william michels, corrupt json handling](#orgae5e668)
    - [Raku conference vids, e.g. jonathan worthington](#orgf3da4a1)
  - [earlier topics](#org9560256)
    - [Grammar.nqp](#orgcd22e75)
  - [announcements](#orgac312ea)
    - [September 24th: the next raku study group meeting](#orgd2f10aa)
    - [Some of my Bali vacation pics:](#org1dc5d13)


<a id="orgd930532"></a>

# meeting notes September 11, 2022


<a id="org8712a8e"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org52c93e2"></a>

## current topics


<a id="org46cb2fc"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgba62d7b"></a>

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


<a id="orgf2fa5cb"></a>

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


<a id="org694d78e"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgad5d9b2"></a>

## additional topics, for someday


<a id="org7b20f0e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgae5e668"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgf3da4a1"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org9560256"></a>

## earlier topics


<a id="orgcd22e75"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgac312ea"></a>

## announcements


<a id="orgd2f10aa"></a>

### September 24th: the next raku study group meeting


<a id="org1dc5d13"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
