- [meeting notes September 11, 2022](#org9150ae5)
  - [the raku study group](#orgd7c04ef)
  - [current topics](#orgdf4303a)
    - [stale perl code and the programmers who can't let go](#orgaf3ff52)
    - [many unix utils have some form of -0](#orga16711f)
    - [IntStr vs my Numesque subset](#org27d8d3c)
    - [Checking lists of numbers (in arrays) for equality](#org9ce4370)
  - [additional topics, for someday](#org408a424)
    - [raku for data science](#org9e2967a)
    - [william michels, corrupt json handling](#org91267be)
    - [Raku conference vids, e.g. jonathan worthington](#orgb31cf86)
  - [earlier topics](#orgdeb5d13)
    - [Grammar.nqp](#orga6bc997)
  - [announcements](#orgf0477b0)
    - [September 24th: the next raku study group meeting](#org95bf3c2)
    - [Some of my Bali vacation pics:](#orgf1968b8)


<a id="org9150ae5"></a>

# meeting notes September 11, 2022


<a id="orgd7c04ef"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgdf4303a"></a>

## current topics


<a id="orgaf3ff52"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orga16711f"></a>

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


<a id="org27d8d3c"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org9ce4370"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org408a424"></a>

## additional topics, for someday


<a id="org9e2967a"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org91267be"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgb31cf86"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="orgdeb5d13"></a>

## earlier topics


<a id="orga6bc997"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgf0477b0"></a>

## announcements


<a id="org95bf3c2"></a>

### September 24th: the next raku study group meeting


<a id="orgf1968b8"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
