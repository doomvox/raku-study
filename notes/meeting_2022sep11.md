- [meeting notes September 11, 2022](#org999e3b5)
  - [the raku study group](#orgbe9c9e9)
  - [current topics](#org40e25f1)
    - [stale perl code and the programmers who can't let go](#org617f3b4)
    - [many unix utils have some form of -0](#orga724951)
    - [IntStr vs my Numesque subset](#org75c40ef)
    - [Checking lists of numbers (in arrays) for equality](#orgc2baf8c)
  - [additional topics, for someday](#orgdfcb777)
    - [raku for data science](#org6318a1b)
    - [william michels, corrupt json handling](#org4330894)
    - [Raku conference vids, e.g. jonathan worthington](#org11d72d9)
  - [earlier topics](#org4271888)
    - [Grammar.nqp](#org5c7b896)
  - [announcements](#org0eebc9e)
    - [September 24th: the next raku study group meeting](#orge1e7d7f)
    - [Some of my Bali vacation pics:](#org27904d2)


<a id="org999e3b5"></a>

# meeting notes September 11, 2022


<a id="orgbe9c9e9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org40e25f1"></a>

## current topics


<a id="org617f3b4"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orga724951"></a>

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


<a id="org75c40ef"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains

5.  related subject:

    1.  <https://www.youtube.com/watch?v=1-KV8oiOSZA&t=2s>
    
    2.  Playing nice with others using the new COERCE protocol - Matthew Stuckwisch


<a id="orgc2baf8c"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgdfcb777"></a>

## additional topics, for someday


<a id="org6318a1b"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org4330894"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org11d72d9"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org4271888"></a>

## earlier topics


<a id="org5c7b896"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org0eebc9e"></a>

## announcements


<a id="orge1e7d7f"></a>

### September 24th: the next raku study group meeting


<a id="org27904d2"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
