- [meeting notes September 11, 2022](#orgdfda557)
  - [the raku study group](#orgb7c041b)
  - [current topics](#org1a3feaf)
    - [stale perl code and the programmers who can't let go](#orgc081e1f)
    - [Where's -0?  Is it needed?](#org2be0a99)
    - [IntStr vs my Numesque subset](#org3d3c4d0)
    - [Checking lists of numbers (in arrays) for equality](#orgc26990f)
  - [additional topics, for someday](#org1b36158)
    - [raku for data science](#orgd19d425)
    - [william michels, corrupt json handling](#orgb9ecac4)
  - [earlier topics](#org10ad5d7)
    - [Grammar.nqp](#org7524bb0)
  - [announcements](#org33b1973)
    - [September 24th: the next raku study group meeting](#orgc220b35)
    - [Some of my Bali vacation pics:](#org951df6b)


<a id="orgdfda557"></a>

# meeting notes September 11, 2022


<a id="orgb7c041b"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org1a3feaf"></a>

## current topics


<a id="orgc081e1f"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org2be0a99"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org3d3c4d0"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="orgc26990f"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org1b36158"></a>

## additional topics, for someday


<a id="orgd19d425"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgb9ecac4"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org10ad5d7"></a>

## earlier topics


<a id="org7524bb0"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org33b1973"></a>

## announcements


<a id="orgc220b35"></a>

### September 24th: the next raku study group meeting


<a id="org951df6b"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
