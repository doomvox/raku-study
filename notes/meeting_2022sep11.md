- [meeting notes September 11, 2022](#org32dd67c)
  - [the raku study group](#orgc5b194f)
  - [current topics](#orgeafae13)
    - [stale perl code and the programmers who can't let go](#orge5f7081)
    - [Where's -0?  Is it needed?](#org95763cd)
    - [IntStr vs my Numesque subset](#orgc0cfd2a)
    - [Checking lists of numbers (in arrays) for equality](#org9fc0efd)
  - [additional topics, for someday](#org31dd0f2)
    - [raku for data science](#org3e6a0e9)
    - [william michels, corrupt json handling](#org887163f)
    - [Raku conference vids, e.g. jonathan worthington](#orga0f61d8)
  - [earlier topics](#org84c0e7b)
    - [Grammar.nqp](#org023f4ad)
  - [announcements](#org9a5a249)
    - [September 24th: the next raku study group meeting](#orga90ccd9)
    - [Some of my Bali vacation pics:](#org3787daf)


<a id="org32dd67c"></a>

# meeting notes September 11, 2022


<a id="orgc5b194f"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgeafae13"></a>

## current topics


<a id="orge5f7081"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org95763cd"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```
    
    2.  many unix utils have some form of -0
    
        1.  
        
            ```sh
            find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
            ```


<a id="orgc0cfd2a"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org9fc0efd"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org31dd0f2"></a>

## additional topics, for someday


<a id="org3e6a0e9"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org887163f"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orga0f61d8"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org84c0e7b"></a>

## earlier topics


<a id="org023f4ad"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org9a5a249"></a>

## announcements


<a id="orga90ccd9"></a>

### September 24th: the next raku study group meeting


<a id="org3787daf"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
