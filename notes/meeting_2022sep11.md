- [meeting notes September 11, 2022](#org61fb37f)
  - [the raku study group](#org6adf2d1)
  - [current topics](#org4cb99be)
    - [stale perl code and the programmers who can't let go](#org7905a0f)
    - [many unix utils have some form of -0](#org4b6925e)
    - [IntStr vs my Numesque subset](#org8917257)
    - [Checking lists of numbers (in arrays) for equality](#org687befe)
    - [repeated](#org456d511)
    - ["eurorack": william michels interested in synthesized music](#org4684722)
  - [additional topics, for someday](#org89cd172)
    - [raku for data science](#org80dfbe5)
    - [william michels, corrupt json handling](#org52e44bb)
    - [Raku conference vids, e.g. jonathan worthington](#org7d854a8)
  - [earlier topics](#org764ccf0)
    - [Grammar.nqp](#org4cb9820)
  - [announcements](#org4861d29)
    - [September 24th: the next raku study group meeting](#org205e626)
    - [Some of my Bali vacation pics:](#org5cfe90c)


<a id="org61fb37f"></a>

# meeting notes September 11, 2022


<a id="org6adf2d1"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org4cb99be"></a>

## current topics


<a id="org7905a0f"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org4b6925e"></a>

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


<a id="org8917257"></a>

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


<a id="org687befe"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org456d511"></a>

### repeated

1.  <https://docs.raku.org/language/independent-routines#routine_repeated>

2.  <https://docs.raku.org/routine/repeated>

    1.  bruce gray usage:
    
        1.  ![img](https://github.com/doomvox/raku-study/notes/bg-01-use_of_repeated.png)
        
        2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/bg-01-use<sub>of</sub><sub>repeated.png</sub>


<a id="org4684722"></a>

### "eurorack": william michels interested in synthesized music

1.  <https://www.modulargrid.net/e/modules/evaluationlists>

2.  q: doing popularity stats and such


<a id="org89cd172"></a>

## additional topics, for someday


<a id="org80dfbe5"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org52e44bb"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org7d854a8"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org764ccf0"></a>

## earlier topics


<a id="org4cb9820"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org4861d29"></a>

## announcements


<a id="org205e626"></a>

### September 24th: the next raku study group meeting


<a id="org5cfe90c"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
