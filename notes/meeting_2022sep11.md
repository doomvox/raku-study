- [meeting notes September 11, 2022](#org13b691b)
  - [the raku study group](#orgb838a73)
  - [current topics](#org17bf95e)
    - [stale perl code and the programmers who can't let go](#orga134644)
    - [many unix utils have some form of -0](#org87d7892)
    - [IntStr vs my Numesque subset](#org8589424)
    - [Checking lists of numbers (in arrays) for equality](#org5863b95)
  - [additional topics, for someday](#org528e5fb)
    - [raku for data science](#org396927b)
    - [william michels, corrupt json handling](#orgb495522)
    - [Raku conference vids, e.g. jonathan worthington](#org98479ca)
  - [earlier topics](#org69a6984)
    - [Grammar.nqp](#org3888fd9)
  - [announcements](#orgd18e169)
    - [September 24th: the next raku study group meeting](#orgf38613f)
    - [Some of my Bali vacation pics:](#org2cb29b8)


<a id="org13b691b"></a>

# meeting notes September 11, 2022


<a id="orgb838a73"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org17bf95e"></a>

## current topics


<a id="orga134644"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org87d7892"></a>

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


<a id="org8589424"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains

5.  related subject

    1.  <https://www.youtube.com/watch?v=1-KV8oiOSZA&t=2s>
    
    2.  Playing nice with others using the new COERCE protocol - Matthew Stuckwisch


<a id="org5863b95"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org528e5fb"></a>

## additional topics, for someday


<a id="org396927b"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgb495522"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org98479ca"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org69a6984"></a>

## earlier topics


<a id="org3888fd9"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgd18e169"></a>

## announcements


<a id="orgf38613f"></a>

### September 24th: the next raku study group meeting


<a id="org2cb29b8"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
