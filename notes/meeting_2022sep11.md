- [meeting notes September 11, 2022](#org6556d62)
  - [the raku study group](#org8c052f9)
  - [current topics](#orgf21143f)
    - [stale perl code and the programmers who can't let go](#orgca67c58)
    - [Raku conference vids, e.g. jonathan worthington](#org518624d)
    - [Where's -0?  Is it needed?](#org4a5712d)
  - [additional topics, for someday](#orgd38b269)
    - [raku for data science](#orgfa3c230)
    - [william michels, corrupt json handling](#org169506b)
  - [earlier topics](#orgd777206)
    - [Grammar.nqp](#org765ae1b)
  - [announcements](#orgd4422eb)
    - [September 24th: the next raku study group meeting](#org9c77554)
    - [Some of my Bali vacation pics:](#org815cd00)


<a id="org6556d62"></a>

# meeting notes September 11, 2022


<a id="org8c052f9"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="orgf21143f"></a>

## current topics


<a id="orgca67c58"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="org518624d"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org4a5712d"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="orgd38b269"></a>

## additional topics, for someday


<a id="orgfa3c230"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="org169506b"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="orgd777206"></a>

## earlier topics


<a id="org765ae1b"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="orgd4422eb"></a>

## announcements


<a id="org9c77554"></a>

### September 24th: the next raku study group meeting


<a id="org815cd00"></a>

### Some of my Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
