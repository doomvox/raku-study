- [meeting notes September 11, 2022](#org6ac6694)
  - [the raku study group](#orge8852fe)
  - [current topics](#orgef0f3d0)
    - [stale perl code and the programmers who can't let go](#orgf85eb4a)
    - [Raku conference vids, e.g. jonathan worthington](#orgcf74db5)
    - [Where's -0?  Is it needed?](#org8748471)
  - [additional topics, for someday](#org8a69806)
    - [raku for data science](#orgb5a7201)
    - [william michels, corrupt json handling](#orga43e72f)
  - [earlier topics](#orge3c1862)
    - [Grammar.nqp](#org9001b19)
  - [announcements](#orgc54e0c2)
    - [September 24th: the next raku study group meeting](#org98f3c10)
    - [Some of my Bali vacation pics:](#org520c51b)


<a id="org6ac6694"></a>

# meeting notes September 11, 2022


<a id="orge8852fe"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgef0f3d0"></a>

## current topics


<a id="orgf85eb4a"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgcf74db5"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org8748471"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org8a69806"></a>

## additional topics, for someday


<a id="orgb5a7201"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orga43e72f"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orge3c1862"></a>

## earlier topics


<a id="org9001b19"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgc54e0c2"></a>

## announcements


<a id="org98f3c10"></a>

### September 24th: the next raku study group meeting


<a id="org520c51b"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
