- [meeting notes September 11, 2022](#orgfc1ef3c)
  - [the raku study group](#org87d9e65)
  - [current topics](#orgad2e78e)
    - [stale perl code and the programmers who can't let go](#orgcb62e0b)
    - [many unix utils have some form of -0](#orga3754e9)
    - [IntStr vs my Numesque subset](#org0ff8d37)
    - [Checking lists of numbers (in arrays) for equality](#org920baca)
  - [additional topics, for someday](#orgd849784)
    - [raku for data science](#org647e5b6)
    - [william michels, corrupt json handling](#org37fc551)
    - [Raku conference vids, e.g. jonathan worthington](#org1b6b84d)
  - [earlier topics](#org6cc5b2d)
    - [Grammar.nqp](#org47c7c39)
  - [announcements](#org305e8a4)
    - [September 24th: the next raku study group meeting](#org2333553)
    - [Some of my Bali vacation pics:](#orgb11df50)


<a id="orgfc1ef3c"></a>

# meeting notes September 11, 2022


<a id="org87d9e65"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgad2e78e"></a>

## current topics


<a id="orgcb62e0b"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orga3754e9"></a>

### many unix utils have some form of -0

1.  

    ```sh
    find TreeAlpha -type f -print0 | xargs -0 egrep godzilla
    ```

2.  Does Raku/rakudo have a -0?  Is it needed? Bruce gray solution:

    1.  
    
        ```sh
        find . -print0 | raku -ne 'BEGIN $*IN.nl-in = "\0"; .say;'
        ```


<a id="org0ff8d37"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org920baca"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="orgd849784"></a>

## additional topics, for someday


<a id="org647e5b6"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org37fc551"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org1b6b84d"></a>

### Raku conference vids, e.g. jonathan worthington

1.  database migrations in raku


<a id="org6cc5b2d"></a>

## earlier topics


<a id="org47c7c39"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org305e8a4"></a>

## announcements


<a id="org2333553"></a>

### September 24th: the next raku study group meeting


<a id="orgb11df50"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
