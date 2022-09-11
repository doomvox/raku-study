- [meeting notes September 11, 2022](#org95797fa)
  - [the raku study group](#orgbf5b828)
  - [current topics](#orgd85d34b)
    - [stale perl code and the programmers who can't let go](#org02cfe6f)
    - [Raku conference vids, e.g. jonathan worthington](#org593d30d)
    - [Where's -0?  Is it needed?](#org377c530)
  - [additional topics, for someday](#orgb5f7b18)
    - [raku for data science](#orgb4ea98c)
    - [william michels, corrupt json handling](#org8109819)
  - [earlier topics](#orgdbc3c26)
    - [Grammar.nqp](#org9a3d085)
  - [announcements](#org7973873)
    - [September 24th: the next raku study group meeting](#org43fed9d)
    - [Pushed out some of the Bali vacation pics:](#org64e0aa5)


<a id="org95797fa"></a>

# meeting notes September 11, 2022


<a id="orgbf5b828"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgd85d34b"></a>

## current topics


<a id="org02cfe6f"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org593d30d"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org377c530"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="orgb5f7b18"></a>

## additional topics, for someday


<a id="orgb4ea98c"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org8109819"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgdbc3c26"></a>

## earlier topics


<a id="org9a3d085"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org7973873"></a>

## announcements


<a id="org43fed9d"></a>

### September 24th: the next raku study group meeting


<a id="org64e0aa5"></a>

### Pushed out some of the Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali_2022>

2.  (still a little rough)
