- [meeting notes September 11, 2022](#orged28962)
  - [the raku study group](#orgf477c46)
  - [current topics](#org2c588b2)
    - [stale perl code and the programmers who can't let go](#org4ca2d1a)
    - [Raku conference vids, e.g. jonathan worthington](#org5ab1278)
    - [Where's -0?  Is it needed?](#org7d40db6)
    - [IntStr vs my Numesque subset](#org65a9aca)
  - [additional topics, for someday](#orgf92771e)
    - [raku for data science](#orgcc0bff2)
    - [william michels, corrupt json handling](#org5bf0331)
  - [earlier topics](#org3056add)
    - [Grammar.nqp](#org6ed21b3)
  - [announcements](#orgd64123b)
    - [September 24th: the next raku study group meeting](#orgeb3db95)
    - [Some of my Bali vacation pics:](#orgb6cfa34)


<a id="orged28962"></a>

# meeting notes September 11, 2022


<a id="orgf477c46"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org2c588b2"></a>

## current topics


<a id="org4ca2d1a"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org5ab1278"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org7d40db6"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org65a9aca"></a>

### IntStr vs my Numesque subset

1.  


<a id="orgf92771e"></a>

## additional topics, for someday


<a id="orgcc0bff2"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org5bf0331"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org3056add"></a>

## earlier topics


<a id="org6ed21b3"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgd64123b"></a>

## announcements


<a id="orgeb3db95"></a>

### September 24th: the next raku study group meeting


<a id="orgb6cfa34"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
