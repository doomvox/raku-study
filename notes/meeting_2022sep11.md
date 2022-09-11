- [meeting notes September 11, 2022](#orgb0ecf6a)
  - [the raku study group](#orgc06578f)
  - [current topics](#orgfe186a3)
    - [stale perl code and the programmers who can't let go](#orgfaabf64)
    - [many unix utils have some form of -0](#orgc087c74)
    - [IntStr vs my Numesque subset](#org906aca5)
    - [Checking lists of numbers (in arrays) for equality](#org1734dba)
  - [additional topics, for someday](#org68b5eab)
    - [raku for data science](#org10c009e)
    - [william michels, corrupt json handling](#org2cfd908)
    - [Raku conference vids, e.g. jonathan worthington](#org541de4f)
  - [earlier topics](#orga9d7670)
    - [Grammar.nqp](#org2ed6fc4)
  - [announcements](#org43c9ab6)
    - [September 24th: the next raku study group meeting](#org663a6b0)
    - [Some of my Bali vacation pics:](#org55360e4)


<a id="orgb0ecf6a"></a>

# meeting notes September 11, 2022


<a id="orgc06578f"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgfe186a3"></a>

## current topics


<a id="orgfaabf64"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgc087c74"></a>

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


<a id="org906aca5"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org1734dba"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org68b5eab"></a>

## additional topics, for someday


<a id="org10c009e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org2cfd908"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org541de4f"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="orga9d7670"></a>

## earlier topics


<a id="org2ed6fc4"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org43c9ab6"></a>

## announcements


<a id="org663a6b0"></a>

### September 24th: the next raku study group meeting


<a id="org55360e4"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
