- [meeting notes September 11, 2022](#org1b7e73d)
  - [the raku study group](#orge8ec251)
  - [current topics](#orgc311ff6)
    - [stale perl code and the programmers who can't let go](#org8a168a8)
    - [Where's -0?  Is it needed?](#org600bd56)
    - [many unix utils have some form of -0](#orgbd7d6d2)
    - [IntStr vs my Numesque subset](#orgb109950)
    - [Checking lists of numbers (in arrays) for equality](#org6979cd5)
  - [additional topics, for someday](#orged15d86)
    - [raku for data science](#org0b53425)
    - [william michels, corrupt json handling](#org8e3d741)
    - [Raku conference vids, e.g. jonathan worthington](#orga958625)
  - [earlier topics](#org7fa2eb8)
    - [Grammar.nqp](#orge9e6ef3)
  - [announcements](#org941d68f)
    - [September 24th: the next raku study group meeting](#org225ee60)
    - [Some of my Bali vacation pics:](#orga6de5df)


<a id="org1b7e73d"></a>

# meeting notes September 11, 2022


<a id="orge8ec251"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgc311ff6"></a>

## current topics


<a id="org8a168a8"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org600bd56"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="orgbd7d6d2"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```


<a id="orgb109950"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org6979cd5"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orged15d86"></a>

## additional topics, for someday


<a id="org0b53425"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org8e3d741"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orga958625"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org7fa2eb8"></a>

## earlier topics


<a id="orge9e6ef3"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org941d68f"></a>

## announcements


<a id="org225ee60"></a>

### September 24th: the next raku study group meeting


<a id="orga6de5df"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
