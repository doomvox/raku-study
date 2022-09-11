- [meeting notes September 11, 2022](#org9025c97)
  - [the raku study group](#org08066cf)
  - [current topics](#org254721c)
    - [stale perl code and the programmers who can't let go](#org11ff522)
    - [Raku conference vids, e.g. jonathan worthington](#org73eda5e)
    - [Where's -0?  Is it needed?](#org002b07c)
    - [IntStr vs my Numesque subset](#org9ff697f)
    - [Checking lists of numbers (in arrays) for equality](#orgbf00073)
  - [additional topics, for someday](#org1de74d2)
    - [raku for data science](#org061811e)
    - [william michels, corrupt json handling](#orgcf466cc)
  - [earlier topics](#org3bca9ff)
    - [Grammar.nqp](#orgede2e4f)
  - [announcements](#org94b4ddc)
    - [September 24th: the next raku study group meeting](#org8d4fe9a)
    - [Some of my Bali vacation pics:](#org9c9ee94)


<a id="org9025c97"></a>

# meeting notes September 11, 2022


<a id="org08066cf"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org254721c"></a>

## current topics


<a id="org11ff522"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org73eda5e"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org002b07c"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org9ff697f"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="orgbf00073"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org1de74d2"></a>

## additional topics, for someday


<a id="org061811e"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgcf466cc"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org3bca9ff"></a>

## earlier topics


<a id="orgede2e4f"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org94b4ddc"></a>

## announcements


<a id="org8d4fe9a"></a>

### September 24th: the next raku study group meeting


<a id="org9c9ee94"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
