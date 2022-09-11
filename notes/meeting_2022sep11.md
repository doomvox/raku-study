- [meeting notes September 11, 2022](#org920731a)
  - [the raku study group](#org673ffa0)
  - [current topics](#org296dec9)
    - [stale perl code and the programmers who can't let go](#org5c65cba)
    - [Raku conference vids, e.g. jonathan worthington](#org5c09ee5)
    - [Where's -0?  Is it needed?](#org9d3b3ee)
    - [IntStr vs my Numesque subset](#org6d2d7b1)
    - [Checking lists of numbers (in arrays) for equality](#org02e46ad)
  - [additional topics, for someday](#org7ac8509)
    - [raku for data science](#org9ea0bfd)
    - [william michels, corrupt json handling](#org0d34ab1)
  - [earlier topics](#org900e215)
    - [Grammar.nqp](#org79ee20f)
  - [announcements](#org0fc31ea)
    - [September 24th: the next raku study group meeting](#org654e646)
    - [Some of my Bali vacation pics:](#orga6cecba)


<a id="org920731a"></a>

# meeting notes September 11, 2022


<a id="org673ffa0"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org296dec9"></a>

## current topics


<a id="org5c65cba"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org5c09ee5"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org9d3b3ee"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org6d2d7b1"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org02e46ad"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org7ac8509"></a>

## additional topics, for someday


<a id="org9ea0bfd"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org0d34ab1"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org900e215"></a>

## earlier topics


<a id="org79ee20f"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org0fc31ea"></a>

## announcements


<a id="org654e646"></a>

### September 24th: the next raku study group meeting


<a id="orga6cecba"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
