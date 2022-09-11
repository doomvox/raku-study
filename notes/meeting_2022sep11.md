- [meeting notes September 11, 2022](#orgee2aa06)
  - [the raku study group](#org65de0bd)
  - [current topics](#org1f118c1)
    - [stale perl code and the programmers who can't let go](#orgaa82057)
    - [Raku conference vids, e.g. jonathan worthington](#org0fcdd8f)
    - [Where's -0?  Is it needed?](#org5cdd005)
    - [IntStr vs my Numesque subset](#org1c3f18d)
  - [additional topics, for someday](#org23c32cd)
    - [raku for data science](#org6d37143)
    - [william michels, corrupt json handling](#orgd1072d7)
  - [earlier topics](#org0916b79)
    - [Grammar.nqp](#org3a60fbf)
  - [announcements](#orge679502)
    - [September 24th: the next raku study group meeting](#org150810b)
    - [Some of my Bali vacation pics:](#org69c9d3e)


<a id="orgee2aa06"></a>

# meeting notes September 11, 2022


<a id="org65de0bd"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org1f118c1"></a>

## current topics


<a id="orgaa82057"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org0fcdd8f"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org5cdd005"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org1c3f18d"></a>

### IntStr vs my Numesque subset

1.  subset Numesque of Any where { defined .Numeric };

2.  things typed as IntStr won't accept Int or Str

3.  IntStr(Cool) does weird things (LTA errors)


<a id="org23c32cd"></a>

## additional topics, for someday


<a id="org6d37143"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgd1072d7"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org0916b79"></a>

## earlier topics


<a id="org3a60fbf"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orge679502"></a>

## announcements


<a id="org150810b"></a>

### September 24th: the next raku study group meeting


<a id="org69c9d3e"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
