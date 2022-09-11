- [meeting notes September 11, 2022](#org1d8803c)
  - [the raku study group](#org842c51a)
  - [current topics](#orgd52521f)
    - [stale perl code and the programmers who can't let go](#org47d9517)
    - [Where's -0?  Is it needed?](#orgc43eb3d)
    - [IntStr vs my Numesque subset](#org1d4e1a5)
    - [Checking lists of numbers (in arrays) for equality](#org6f2931a)
  - [additional topics, for someday](#org6823dfd)
    - [raku for data science](#orgbee8f93)
    - [william michels, corrupt json handling](#org13ac356)
    - [Raku conference vids, e.g. jonathan worthington](#org91aac65)
  - [earlier topics](#orgc00c6f8)
    - [Grammar.nqp](#orgd63e708)
  - [announcements](#orgd58373a)
    - [September 24th: the next raku study group meeting](#org7c4934e)
    - [Some of my Bali vacation pics:](#orgcbddcca)


<a id="org1d8803c"></a>

# meeting notes September 11, 2022


<a id="org842c51a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgd52521f"></a>

## current topics


<a id="org47d9517"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgc43eb3d"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'
    
    2.  many unix utils have some form of -0
    
        1.  find TreeAlpha -type f -print0 | xargs -0 egrep godzilla


<a id="org1d4e1a5"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)

4.  I defend the use: "strong" typing for perl-damaged brains


<a id="org6f2931a"></a>

### Checking lists of numbers (in arrays) for equality

1.  

    ```raku
    die unless ( @a »==« @b ).all.so
    ```

2.  

    ```raku
    die "Failed" unless @pcp.head(20).join(',') eq @exp.join(',');
    ```


<a id="org6823dfd"></a>

## additional topics, for someday


<a id="orgbee8f93"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org13ac356"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org91aac65"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="orgc00c6f8"></a>

## earlier topics


<a id="orgd63e708"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgd58373a"></a>

## announcements


<a id="org7c4934e"></a>

### September 24th: the next raku study group meeting


<a id="orgcbddcca"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
