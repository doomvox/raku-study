- [meeting notes September 11, 2022](#org8b33578)
  - [the raku study group](#org7b80bc8)
  - [current topics](#org7447435)
    - [stale perl code and the programmers who can't let go](#org1dfdbe4)
    - [Where's -0?  Is it needed?](#orgb07608f)
    - [IntStr vs my Numesque subset](#org87bf632)
    - [Checking lists of numbers (in arrays) for equality](#orgdf8a712)
  - [additional topics, for someday](#orga51d231)
    - [raku for data science](#orgf36c22b)
    - [william michels, corrupt json handling](#org1b1749b)
    - [Raku conference vids, e.g. jonathan worthington](#org3004961)
  - [earlier topics](#orgbe57043)
    - [Grammar.nqp](#orga9fc4c2)
  - [announcements](#orgc8b0f2f)
    - [September 24th: the next raku study group meeting](#orgb019e1e)
    - [Some of my Bali vacation pics:](#org10cba59)


<a id="org8b33578"></a>

# meeting notes September 11, 2022


<a id="org7b80bc8"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org7447435"></a>

## current topics


<a id="org1dfdbe4"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgb07608f"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org87bf632"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="orgdf8a712"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orga51d231"></a>

## additional topics, for someday


<a id="orgf36c22b"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org1b1749b"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org3004961"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="orgbe57043"></a>

## earlier topics


<a id="orga9fc4c2"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgc8b0f2f"></a>

## announcements


<a id="orgb019e1e"></a>

### September 24th: the next raku study group meeting


<a id="org10cba59"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
