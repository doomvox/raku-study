- [meeting notes September 11, 2022](#orgbc32b6f)
  - [the raku study group](#orgf1439eb)
  - [current topics](#org12a0137)
    - [stale perl code and the programmers who can't let go](#org8b22ca2)
    - [many unix utils have some form of -0](#orgee598f0)
    - [IntStr vs my Numesque subset](#orge12e006)
    - [Checking lists of numbers (in arrays) for equality](#orgb6a2a00)
  - [additional topics, for someday](#orgc565f6f)
    - [raku for data science](#org3af3ee4)
    - [william michels, corrupt json handling](#org9b0d45b)
    - [Raku conference vids, e.g. jonathan worthington](#org322eecb)
  - [earlier topics](#org4717313)
    - [Grammar.nqp](#orgfc72ebd)
  - [announcements](#org922cbd7)
    - [September 24th: the next raku study group meeting](#org641106a)
    - [Some of my Bali vacation pics:](#org63a6285)


<a id="orgbc32b6f"></a>

# meeting notes September 11, 2022


<a id="orgf1439eb"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org12a0137"></a>

## current topics


<a id="org8b22ca2"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgee598f0"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```

2.  Does Raku/rakudo have a -0?  Is it needed? bruce gray solution

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="orge12e006"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="orgb6a2a00"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgc565f6f"></a>

## additional topics, for someday


<a id="org3af3ee4"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org9b0d45b"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org322eecb"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org4717313"></a>

## earlier topics


<a id="orgfc72ebd"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org922cbd7"></a>

## announcements


<a id="org641106a"></a>

### September 24th: the next raku study group meeting


<a id="org63a6285"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
