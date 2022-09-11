- [meeting notes September 11, 2022](#orgdc06805)
  - [the raku study group](#org41fe942)
  - [current topics](#orgc435e66)
    - [stale perl code and the programmers who can't let go](#orgdd79f51)
    - [Where's -0?  Is it needed?](#org4f6b58e)
    - [many unix utils have some form of -0](#org72a4f5a)
    - [IntStr vs my Numesque subset](#org82f13b0)
    - [Checking lists of numbers (in arrays) for equality](#org808011e)
  - [additional topics, for someday](#orga7abee4)
    - [raku for data science](#orga3c0f40)
    - [william michels, corrupt json handling](#org35bf353)
    - [Raku conference vids, e.g. jonathan worthington](#org9f9c350)
  - [earlier topics](#org96ea13a)
    - [Grammar.nqp](#org419e261)
  - [announcements](#org647d31e)
    - [September 24th: the next raku study group meeting](#orgbec147b)
    - [Some of my Bali vacation pics:](#org668ccbf)


<a id="orgdc06805"></a>

# meeting notes September 11, 2022


<a id="org41fe942"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgc435e66"></a>

## current topics


<a id="orgdd79f51"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org4f6b58e"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="org72a4f5a"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```


<a id="org82f13b0"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org808011e"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orga7abee4"></a>

## additional topics, for someday


<a id="orga3c0f40"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org35bf353"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org9f9c350"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org96ea13a"></a>

## earlier topics


<a id="org419e261"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org647d31e"></a>

## announcements


<a id="orgbec147b"></a>

### September 24th: the next raku study group meeting


<a id="org668ccbf"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
