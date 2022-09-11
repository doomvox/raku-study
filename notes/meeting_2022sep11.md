- [meeting notes September 11, 2022](#org3424804)
  - [the raku study group](#org61409eb)
  - [current topics](#org7ce8e6c)
    - [stale perl code and the programmers who can't let go](#orgf8016a4)
    - [Raku conference vids, e.g. jonathan worthington](#orgae7b25e)
    - [Where's -0?  Is it needed?](#org779fb08)
  - [additional topics, for someday](#org563a653)
    - [raku for data science](#orgaa15948)
    - [william michels, corrupt json handling](#orgce60db4)
  - [earlier topics](#org6af8a5c)
    - [Grammar.nqp](#org2051e5d)
  - [announcements](#org5d196e7)
    - [September 24th: the next raku study group meeting](#org6315e30)
    - [Pushed out some of the Bali vacation pics:](#org17dcedc)


<a id="org3424804"></a>

# meeting notes September 11, 2022


<a id="org61409eb"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep11.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/sep11>


<a id="org7ce8e6c"></a>

## current topics


<a id="orgf8016a4"></a>

### stale perl code and the programmers who can't let go

1.  my image publication stopgap measures


<a id="orgae7b25e"></a>

### Raku conference vids, e.g. jonathan worthington

1.  still watching this one


<a id="org779fb08"></a>

### Where's -0?  Is it needed?

1.  bruce gray solution

    1.  find . -print0 | raku -ne 'BEGIN $\*IN.nl-in = "\\0"; .say;'


<a id="org563a653"></a>

## additional topics, for someday


<a id="orgaa15948"></a>

### TODO raku for data science

1.  gradual types for gradually cleaning up data

2.  <https://p6steve.wordpress.com/2022/07/24/is-raku-dan-rubbersonic/>


<a id="orgce60db4"></a>

### TODO william michels, corrupt json handling

1.  <https://unix.stackexchange.com/questions/706732/deleting-all-text-after-a-specific-string-for-multiple-text-files-in-a-directory/707180#707180>


<a id="org6af8a5c"></a>

## earlier topics


<a id="org2051e5d"></a>

### Grammar.nqp

1.  <https://github.com/rakudo/rakudo/blob/master/src/Perl6/Grammar.nqp>

    1.  locally: /home/doom/End/Cave/Raku/Wall/rakudo/gen/moar/Grammar.nqp

2.  has some features I'm unfamiliar with, e.g. ":my $blah" inside a grammar

3.  had trouble seeing what "token comp<sub>unit</sub>" does, exactly


<a id="org5d196e7"></a>

## announcements


<a id="org6315e30"></a>

### September 24th: the next raku study group meeting


<a id="org17dcedc"></a>

### Pushed out some of the Bali vacation pics:

1.  <http://obsidianrook.com/pics/bali2022>

2.  (still a little rough)
