- [meeting notes September 11, 2022](#orgf637c96)
  - [the raku study group](#org05f2e2c)
  - [current topics](#org7b35441)
    - [stale perl code and the programmers who can't let go](#org01ddbee)
    - [Where's -0?  Is it needed?](#orgcf97dcd)
    - [many unix utils have some form of -0](#org1a880fe)
    - [IntStr vs my Numesque subset](#org0509dc2)
    - [Checking lists of numbers (in arrays) for equality](#org575241f)
  - [additional topics, for someday](#orga88827b)
    - [raku for data science](#orgbbf493a)
    - [william michels, corrupt json handling](#org160e510)
    - [Raku conference vids, e.g. jonathan worthington](#org900e764)
  - [earlier topics](#org6ab7a81)
    - [Grammar.nqp](#org886afb8)
  - [announcements](#org5963e73)
    - [September 24th: the next raku study group meeting](#org1802da4)
    - [Some of my Bali vacation pics:](#org27de65d)


<a id="orgf637c96"></a>

# meeting notes September 11, 2022


<a id="org05f2e2c"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org7b35441"></a>

## current topics


<a id="org01ddbee"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgcf97dcd"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="org1a880fe"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```


<a id="org0509dc2"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org575241f"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orga88827b"></a>

## additional topics, for someday


<a id="orgbbf493a"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org160e510"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org900e764"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org6ab7a81"></a>

## earlier topics


<a id="org886afb8"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org5963e73"></a>

## announcements


<a id="org1802da4"></a>

### September 24th: the next raku study group meeting


<a id="org27de65d"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
